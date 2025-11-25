<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Favorite;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class FavoriteController extends Controller
{
    public function addFavorite($productId)
    {
        $user = Auth::user();

        if ($user->favorites()->where('product_id', $productId)->exists()) {
            return response()->json(['success' => false, 'message' => 'Produk sudah ada di favorit Anda.']);
        }

        $user->favorites()->create(['product_id' => $productId]);

        return response()->json(['success' => true, 'message' => 'Product added to favorite']);
    }

    public function isFavorite($productId)
    {
        $user = Auth::user();
        $isFavorite = $user->favorites()->where('product_id', $productId)->exists();

        return response()->json(['isFavorite' => $isFavorite]);
    }


    public function removeFavorite($productId)
    {
        $user = Auth::user();

        $favorite = $user->favorites()->where('product_id', $productId)->first();

        if ($favorite) {
            $favorite->delete();
            return redirect()->back()->with('message', 'Produk berhasil dihapus dari favorit.');
        }

        return redirect()->back()->with('message', 'Produk tidak ditemukan di favorit Anda.');
    }

    public function index()
    {
        $favorites = Auth::user()->favorites()->with('product')->get();

        return view('products.favorites', compact('favorites'));
    }
}
