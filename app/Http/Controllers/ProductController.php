<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\Category;
use App\Models\Origin;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index(Request $request)
    {
        // Build the query for filtering products, including the visibility condition
        $query = Product::where('is_visible', true)
            ->when($request->categories, function ($query) use ($request) {
                return $query->whereIn('category_id', $request->categories);
            })
            ->when($request->origins, function ($query) use ($request) {
                return $query->whereIn('origin_id', $request->origins);
            });

        // Fetch paginated results
        $products = $query->with('variants')->paginate(10);

        // Fetch all categories and origins
        $categories = Category::all();
        $origins = Origin::all();

        if ($request->ajax()) {
            $view = view('products.partials.product_list', compact('products'))->render();
            return response()->json(['html' => $view]);
        }

        return view('products.index', compact('products', 'categories', 'origins'));
    }

    public function show($id)
    {
        // Fetch the product with variants and stock
        $product = Product::with(['variants', 'stokBrng'])->findOrFail($id);

        // Fetch related products by category and origin, only visible products
        $relatedProducts = Product::where('category_id', $product->category_id)
            ->where('is_visible', true)
            ->where('id', '!=', $product->id)
            ->limit(4)
            ->get();

        $relatedProducts = $relatedProducts->merge(Product::where('origin_id', $product->origin_id)
            ->where('is_visible', true)
            ->where('id', '!=', $product->id)
            ->limit(4)
            ->get());

        return view('products.show', compact('product', 'relatedProducts'));
    }

    public function search(Request $request)
    {
        $query = $request->input('search');
        $products = Product::where('name', 'like', "%{$query}%")
            ->where('is_visible', true)
            ->get();

        return response()->json(['products' => $products]);
    }

    

}

