<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class paymentMethod extends Model
{
    use HasFactory;

    protected $fillable = [
        'type_payment',
    ];

    public function order()
    {
        return $this->belongsTo(Order::class);
    }

}
