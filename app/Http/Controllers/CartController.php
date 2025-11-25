<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\CartItem;
use App\Models\Product;
use Illuminate\Support\Facades\Auth;

class CartController extends Controller
{
    public function index()
    {
        $cartItems = CartItem::where('user_id', Auth::id())->with('product')->get();
        $isEmpty = $cartItems->isEmpty();

        // Calculate total price
        $totalPrice = 0;
        foreach ($cartItems as $item) {
            $totalPrice += $item->product->price * $item->quantity;
        }

        return view('cart.index', compact('cartItems', 'totalPrice', 'isEmpty'));
    }

    public function add(Request $request, Product $product)
    {
        $request->validate([
            'quantity' => 'required|integer|min:1',
            'varian' => 'required|string',
        ]);

        $cartItem = CartItem::firstOrCreate(
            ['user_id' => Auth::id(), 'product_id' => $product->id, 'varian' => $request->varian],
            ['quantity' => 0]
        );

        $cartItem->quantity += $request->quantity;
        $cartItem->save();

        $cartItemCount = CartItem::where('user_id', Auth::id())->count();

        return response()->json(['success' => true, 'message' => 'Product added to cart', 'cartItemCount' => $cartItemCount]);
    }

    public function update(Request $request, CartItem $cartItem)
    {
        if ($cartItem->user_id == Auth::id()) {
            $cartItem->quantity = $request->quantity;
            $cartItem->save();
        }

        return redirect()->route('cart.index')->with('success', 'Cart updated');
    }

    public function updateQuantity(Request $request, CartItem $cartItem)
    {
        if ($cartItem->user_id == Auth::id()) {
            $cartItem->quantity = $request->quantity;
            $cartItem->save();

            // Calculate new total price
            $cartItems = CartItem::where('user_id', Auth::id())->with('product')->get();
            $totalPrice = 0;
            foreach ($cartItems as $item) {
                $totalPrice += $item->product->price * $item->quantity;
            }

            return response()->json(['success' => true, 'message' => 'Quantity updated', 'newTotalPrice' => number_format($totalPrice, 0, ',', '.')]);
        }

        return response()->json(['success' => false, 'message' => 'Unauthorized']);
    }

    public function remove(CartItem $cartItem)
    {
        if ($cartItem->user_id == Auth::id()) {
            $cartItem->delete();
        }

        return redirect()->route('cart.index')->with('success', 'Product removed from cart');
    }

    public function clear()
    {
        CartItem::where('user_id', Auth::id())->delete();

        return redirect()->route('cart.index')->with('success', 'Cart cleared');
    }
}
