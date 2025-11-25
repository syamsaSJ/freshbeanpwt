<?php

namespace App\Filament\Resources\Shop\OrderResource\Pages;

use App\Filament\Resources\Shop\OrderResource;
use Filament\Pages\Actions;
use Filament\Resources\Pages\EditRecord;
use App\Notifications\OrderStatusNotification;
use App\Models\User;
use App\Models\Order;
use App\Models\StokBrng;
use App\Models\BrngKlr;
use Filament\Notifications\Actions\Action;
use Filament\Notifications\Notification;
use Filament\Notifications\Events\DatabaseNotificationsSent;
use Illuminate\Support\Facades\URL;

class EditOrder extends EditRecord
{
    protected static string $resource = OrderResource::class;

    protected function getActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }

    protected function afterSave(): void
    {
        /** @var Order $order */
        $order = $this->record;

        /** @var User $user */
        $user = User::find($order->user_id);

        // Membuat dan mengirim notifikasi menggunakan Filament
        Notification::make()
            ->title('Order Status Updated')
            ->icon('heroicon-o-shopping-bag')
            ->body("Your order with number {$order->no_order} status has been updated.")
            ->actions([
                Action::make('View')
                    ->url(route('order.history'))
            ])
            ->sendToDatabase($user);

        // Mengirim event untuk notifikasi di database
        event(new DatabaseNotificationsSent($user));

        // Update stock and record outgoing goods if order status is completed
        if ($order->status == 'completed') {
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
        }
    }
}


