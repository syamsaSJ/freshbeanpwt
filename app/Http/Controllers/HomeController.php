<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\RekomendasiProduk; // Corrected model name

class HomeController extends Controller
{
    public function index()
    {
        $products = Product::where('is_visible', true)->get();
        $rekomendasiProduks = rekomendasiProduk::where('is_visible', true)->get();
        return view('welcome', compact('products', 'rekomendasiProduks'));
    }
}
