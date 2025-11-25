<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Order;
use App\Models\OrderItem;
use App\Models\CartItem;
use App\Models\PaymentMethod;
use App\Models\OrderPayment;
use App\Models\OrderShipping;
use App\Models\Courier;
use App\Models\Product;
use App\Models\toko;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use App\Notifications\OrderStatusNotification;
use App\Models\User;
use Filament\Notifications\Notification;
use Illuminate\Support\Facades\Mail;
use App\Mail\OrderConfirmation;
use Barryvdh\DomPDF\Facade\Pdf;
use App\Notifications\NewOrderNotification;
use Filament\Notifications\Events\DatabaseNotificationsSent;
use Filament\Notifications\Actions\Action;
use App\Filament\Resources\Shop\OrderResource;
use Twilio\Rest\Client;
use App\Models\StokBrng;
use App\Models\BrngKlr;
use Midtrans\Snap;
use Midtrans\Config;

class OrderController extends Controller
{
    public function create()
    {
        $user = Auth::user();
        $toko = Toko::all()->first();
        $cartItems = CartItem::where('user_id', $user->id)->with('product')->get();
        $paymentMethods = PaymentMethod::all();
        $totalPrice = $this->getTotalPrice($cartItems);
        $totalWeight = $this->getTotalWeight($cartItems);
        $alamatUser = $user->alamat;
        $alamatToko = $toko->alamat;
        $couriers = Courier::all();


        // Set your Merchant Server Key
        Config::$serverKey = 'SB-Mid-server-OpNtmekLBADGKkgk6NhxmM3R';
        Config::$isProduction = false;

        $params = [
            'transaction_details' => [
                'order_id' => rand(),
                'gross_amount' => $totalPrice,
            ],
            'customer_details' => [
                'first_name' => $user->name,
                'email' => $user->email,
                'phone' => $user->phone,
            ],
        ];

        $snapToken = Snap::getSnapToken($params);

        return view('order.create', compact('cartItems', 'paymentMethods', 'totalPrice', 'totalWeight', 'alamatUser', 'user', 'couriers', 'snapToken', 'alamatToko'));
    }

    private function getTotalPrice($cartItems)
    {
        $total = 0;
        foreach ($cartItems as $item) {
            $total += $item->product->price * $item->quantity;
        }

        return $total;
    }

    private function getTotalWeight($cartItems)
    {
        $totalWeight = 0;
        foreach ($cartItems as $item) {
            $totalWeight += $item->product->weight * $item->quantity;
        }

        return $totalWeight;
    }

    public function store(Request $request)
    {
        $rules = [
            'payment_method_id' => 'required|exists:payment_methods,id',
            'alamat' => 'required|string',
            'courier_id' => 'required|exists:couriers,id',
        ];

        $request->validate($rules);

        DB::transaction(function () use ($request) {
            $user = Auth::user();
            $cartItems = CartItem::where('user_id', $user->id)->with('product')->get();
            $totalPrice = $this->getTotalPrice($cartItems);

            // Create the order
            $order = Order::create([
                'user_id' => $user->id,
                'status' => 'pending',
                'alamat' => $user->alamat,
                'payment_method_id' => $request->payment_method_id,
                'shipping_cost' => $request->selected_shipping_cost ?? 0,
                'total_price' => $totalPrice,
                'grand_total' => ($totalPrice + ($request->selected_shipping_cost ?? 0)),
            ]);

            // Add order items
            foreach ($cartItems as $item) {
                OrderItem::create([
                    'order_id' => $order->id,
                    'product_id' => $item->product_id,
                    'varian' => $item->varian,
                    'quantity' => $item->quantity,
                    'price' => $item->product->price,
                    'total' => $item->product->price * $item->quantity,
                ]);
            }

            $orderShipping = OrderShipping::create([
                'order_id' => $order->id,
                'courier_id' => $request->courier_id,
                'shipping_cost' => $request->shipping_cost ?? 0,
                'shipping_address' => $user->alamat
            ]);

            // Handle order payment
            $orderPayment = new OrderPayment([
                'order_id' => $order->id,
                'payment_method_id' => $request->payment_method_id,
                'payment_status' => 'Belum diterima',
                'amount' => $order->grand_total,
            ]);

            $orderPayment->save();

            // Kirim email konfirmasi
            Mail::to($user->email)->send(new OrderConfirmation($order, $orderShipping, $orderPayment));

            CartItem::where('user_id', Auth::id())->delete();

            // Kirim notifikasi ke admin panel
            $admin = User::role('super_admin')->first();
            Notification::make()
                ->title('**A new order has been placed**')
                ->icon('heroicon-o-shopping-bag')
                ->body("{$user->name} has placed an order with no order {$order->no_order}. 
                       \n Please check order to see the detail.")
                ->actions([
                    Action::make('View')
                        ->url(OrderResource::getUrl('edit', ['record' => $order->id])),
                ])
                ->sendToDatabase($admin);
            event(new DatabaseNotificationsSent($admin));

            // Kirim whatsapp konfirmasi ke admin
            $sid = env('TWILIO_SID');
            $token = env('TWILIO_TOKEN');
            $twilio = new Client($sid, $token);

            $message = $twilio->messages
                ->create(
                    "whatsapp:+6287803280418", // to
                    array(
                        "from" => "whatsapp:" . env('TWILIO_SENDER_NUMBER'),
                        "body" => "{$user->name} has placed an order with no order {$order->no_order}. 
                       \n Please check order to see the detail."
                    )
                );
        });

        return redirect()->route('order.thankyou')->with('order_id');
    }

    public function thankyou()
    {
        $order_id = session('order_id');
        return view('order.thankyou', compact('order_id'));
    }

    // controller untuk history pembelian
    public function purchaseHistory(Request $request)
    {
        $user = Auth::user();
        $status = $request->query('status', 'all');

        // Base query to fetch orders for the authenticated user with eager loading
        $ordersQuery = Order::where('user_id', $user->id)
            ->with('orderItems.product', 'orderPayment.paymentMethod', 'orderShipping')
            ->orderBy('created_at', 'desc');

        // Apply status filter if not 'all'
        if ($status !== 'all') {
            // Map query string 'status' to database status values
            $statusMap = [
                'pending' => 'pending',
                'Diproses' => 'Diproses',
                'Dikirim' => 'Dikirim',
                'completed' => 'completed',
                'canceled' => 'canceled'
            ];

            // Apply the status filter if it's a valid status
            if (array_key_exists($status, $statusMap)) {
                $ordersQuery->where('status', $statusMap[$status]);
            }
        }

        // Execute the query and paginate results
        $orders = $ordersQuery->paginate(5);

        // Return the view with the orders and current status
        return view('order.history', compact('orders', 'status'));
    }

    public function markReceived(Request $request, $id)
    {
        $user = Auth::user();
        $order = Order::findOrFail($id);

        // Ensure the status can be updated to 'completed'
        if ($order->status == 'Dikirim') {
            $order->status = 'completed';
            $order->save();

            // Notify the admin about the completed order
            $admin = User::role('super_admin')->first();
            if ($admin) {
                Notification::make()
                    ->title('**Order has been completed**')
                    ->icon('heroicon-o-shopping-bag')
                    ->body("{$user->name} has marked the order complete with No order {$order->no_order}. 
                       \nPlease check order to see the detail.")
                    ->actions([
                        Action::make('View')
                            ->url(OrderResource::getUrl('edit', ['record' => $order->id])),
                    ])
                    ->sendToDatabase($admin);
                event(new DatabaseNotificationsSent($admin));
            }

            // Update stock and record outgoing goods if order status is completed
            foreach ($order->orderItems as $item) {
                $stokBrng = StokBrng::where('product_id', $item->product_id)->first();
                if ($stokBrng) {
                    // Record outgoing goods
                    BrngKlr::create([
                        'product_id' => $item->product_id,
                        'quantity' => $item->quantity * $item->product->weight,
                        'supplier_id' => $stokBrng->supplier_id,
                        'status' => 'terjual'
                    ]);
                }
            }

            return response()->json(['success' => true]);
        }

        return response()->json(['success' => false, 'message' => 'Order status cannot be updated']);
    }

    public function cancel(Request $request, $id)
    {
        $user = Auth::user();
        $order = Order::findOrFail($id);

        if ($order->status == 'pending') {
            $order->status = 'canceled';
            $order->save();

            // Notify the admin about the completed order
            $admin = User::role('super_admin')->first();
            if ($admin) {
                Notification::make()
                    ->title('**Order has been cancelled**')
                    ->icon('heroicon-o-shopping-bag')
                    ->body("{$user->name} has marked the order cancelled with No order {$order->no_order}. 
                       \nPlease check order to see the detail.")
                    ->actions([
                        Action::make('View')
                            ->url(OrderResource::getUrl('edit', ['record' => $order->id])),
                    ])
                    ->sendToDatabase($admin);
                event(new DatabaseNotificationsSent($admin));
            }

            return response()->json(['success' => true]);
        }

        return response()->json(['success' => false, 'message' => 'Order status cannot be updated']);
    }

}


