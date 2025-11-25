<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Notifications\OrderStatusNotification;

class Order extends Model
{
    use HasFactory;

    protected $fillable = [
        'no_order',
        'user_id',
        'status',
        'alamat',
        'payment_method_id',
        'shipping_cost',
        'total_price',
        'grand_total',
    ];

    protected static function boot()
    {
        parent::boot();

        static::creating(function ($order) {
            $latestOrder = static::latest()->first();
            $lastId = ($latestOrder) ? intval(substr($latestOrder->no_order, 3)) : 0;
            $newId = $lastId + 1;
            $order->no_order = 'ORD' . str_pad($newId, 3, '0', STR_PAD_LEFT);
        });
    }

    // Relationships
    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    public function paymentMethod()
    {
        return $this->belongsTo(PaymentMethod::class);
    }

    public function orderItems()
    {
        return $this->hasMany(OrderItem::class);
    }

    public function orderPayment()
    {
        return $this->hasOne(OrderPayment::class);
    }

    public function orderShipping()
    {
        return $this->hasOne(OrderShipping::class);
    }

    public function courier()
    {
        return $this->belongsTo(Courier::class);
    }

    public function product()
    {
        return $this->belongsTo(Product::class);
    }

    public function varian()
    {
        return $this->belongsTo(Varian::class, 'varian_id');
    }
}
