<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\rekomendasiProduk;

class DashboardController extends Controller
{
    public function index()
    {
        // Mengambil produk yang memiliki is_visible = true
        $products = Product::where('is_visible', true)->get();
        $rekomendasiProduks = rekomendasiProduk::where('is_visible', true)->get();
        $darkMode = session('darkMode', false); // Mengambil dari session atau default false
        
        return view('dashboard', compact('products', 'rekomendasiProduks', 'darkMode'));
    }
}
