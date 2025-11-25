<?php

use App\Http\Controllers\HomeController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\OngkirController;
use App\Http\Controllers\GoogleController;
use App\Http\Controllers\ChatController;
use App\Http\Controllers\FavoriteController;
use App\Http\Controllers\ReviewController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', [HomeController::class, 'index'])->name('welcome');

Route::get('login/google/redirect', [GoogleController::class, 'redirectToGoogle'])->name('google.redirect');
Route::get('login/google/callback', [GoogleController::class, 'handleGoogleCallback'])->name('google.callback');

Route::get('/terms', function () {
    return view('termsPolicy/terms');
})->name('terms');

Route::get('/privacy', function () {
    return view('privacy');
})->name('privacy');

Route::middleware(['auth', 'verified'])->group(function () {
    Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');

    Route::get('/profile', [ProfileController::class, 'show'])->name('profile.show');
    Route::get('/profile/edit', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
    Route::patch('/profile/address', [ProfileController::class, 'updateAddress'])->name('profile.update-address');
    Route::patch('/profile/address/edit', [ProfileController::class, 'updateAddress'])->name('profile.updateAddress');
    Route::post('/profile/address/add', [ProfileController::class, 'addAddress'])->name('profile.add-address');
    Route::post('/upload-avatar', [ProfileController::class, 'uploadAvatar'])->name('avatar.upload');

    Route::get('/products', [ProductController::class, 'index'])->name('products.index');
    Route::get('/products/{id}', [ProductController::class, 'show'])->name('products.show');
    Route::get('/api/products', [ProductController::class, 'search']);
    Route::post('/get-midtrans-token', [ProductController::class, 'getMidtransToken']);

    Route::get('/cart', [CartController::class, 'index'])->name('cart.index');
    Route::post('/cart/add/{product}', [CartController::class, 'add'])->name('cart.add');
    Route::post('/cart/update/{cartItem}', [CartController::class, 'update'])->name('cart.update');
    Route::post('/cart/updateQuantity/{cartItem}', [CartController::class, 'updateQuantity'])->name('cart.updateQuantity');
    Route::delete('/cart/remove/{cartItem}', [CartController::class, 'remove'])->name('cart.remove');
    Route::delete('/cart/clear', [CartController::class, 'clear'])->name('cart.clear');

    Route::get('/order/create', [OrderController::class, 'create'])->name('order.create');
    Route::post('/orders', [OrderController::class, 'store'])->name('orders.store');
    Route::get('/purchase-history', [OrderController::class, 'purchaseHistory'])->name('order.history');
    Route::get('/order/thankyou', [OrderController::class, 'thankyou'])->name('order.thankyou');
    Route::patch('/orders/{id}/mark-received', [OrderController::class, 'markReceived'])->name('orders.markReceived');
    Route::patch('/orders/{id}/cancel', [OrderController::class, 'cancel'])->name('orders.cancel');
    Route::post('/get-shipping-cost', [OrderController::class, 'getShippingCost'])->name('getShippingCost');
    Route::get('/order/buynow/{id}', [OrderController::class, 'buyNow'])->name('order.buynow');
    Route::post('/order/buynow', [OrderController::class, 'storebuynow'])->name('order.storebuynow');
    Route::post('/reviews', [ReviewController::class, 'store'])->name('reviews.store');

    Route::get('/provinces', [OngkirController::class, 'getProvinces']);
    Route::get('/cities', [OngkirController::class, 'getCities']);
    Route::get('/alamat-toko', [OngkirController::class, 'getAlamatToko']);
    Route::get('/alamat-user', [OngkirController::class, 'getAlamatUser']);
    Route::post('/cek-ongkir', [OngkirController::class, 'getOngkir']);
    Route::get('/province-name', [OngkirController::class, 'getProvinceName']);
    Route::get('/city-name', [OngkirController::class, 'getCityName']);
    Route::get('/api/provinces', [OngkirController::class, 'getProvinces']);
    Route::get('/api/cities', [OngkirController::class, 'getCities']);

    Route::post('/chat/send', [ChatController::class, 'sendMessage']);
    Route::get('/chat/messages/{receiverId}', [ChatController::class, 'fetchMessages']);

    Route::get('/favorites', [FavoriteController::class, 'index'])->name('products.favorites');
    Route::post('/favorites/add/{productId}', [FavoriteController::class, 'addFavorite'])->name('favorites.add');
    Route::post('/favorites/check/{productId}', [FavoriteController::class, 'isFavorite'])->name('favorites.check');
    Route::delete('/favorites/remove/{productId}', [FavoriteController::class, 'removeFavorite'])->name('favorites.remove');
});

require __DIR__ . '/auth.php';