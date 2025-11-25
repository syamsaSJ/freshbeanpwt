<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\Review;
use Illuminate\Http\Request;
use Filament\Notifications\Notification;
use Filament\Notifications\Events\DatabaseNotificationsSent;

class ReviewController extends Controller
{
    public function store(Request $request)
    {
        // Validasi input dari pengguna
        $validatedData = $request->validate([
            'product_id' => 'required|exists:products,id',
            'rating' => 'required|integer|between:1,5',
            'review' => 'required|string',
        ]);

        // Tambahkan user_id ke data yang divalidasi
        $validatedData['user_id'] = auth()->id();

        // Simpan review ke dalam database
        Review::create($validatedData);

        Notification::make()
            ->title('Review successfully')
            ->color('success')
            ->icon('heroicon-s-star')
            ->iconColor('success')
            ->send();

        // Kembali ke halaman sebelumnya dengan pesan sukses
        return redirect()->back()->with('success', 'Review submitted successfully!');
    }
}

