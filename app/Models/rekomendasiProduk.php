<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class rekomendasiProduk extends Model
{
    use HasFactory;

    protected $fillable = [
        'id',
        'product_id',
    ];

    /**
     * @var array<string, string>
     */
    protected $casts = [
        'is_visible' => 'boolean',
    ];

    public function Product()
    {
        return $this->belongsTo(Product::class, 'product_id');
    }
}
