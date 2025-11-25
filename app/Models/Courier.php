<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Courier extends Model
{
    use HasFactory;

    protected $fillable = [
        'courier_name',
        'shipping_cost',
    ];

    public function orderShipping()
    {
        return $this->hasMany(OrderShipping::class);
    }
}
