<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BrngKlr extends Model
{
    use HasFactory;
    
    protected $fillable = [
        'product_id',
        'supplier_id',
        'quantity',
        'status',
    ];

    public function product()
    {
        return $this->belongsTo(Product::class);
    }

    public function stokBrng()
    {
        return $this->belongsTo(StokBrng::class);
    }

    public function supplier()
    {
        return $this->belongsTo(Supplier::class);
    }

    protected static function booted()
    {
        static::created(function ($stokKeluar) {
            $stokBrng = StokBrng::where('product_id', $stokKeluar->product_id)->first();

            if ($stokBrng) {
                // Update stock out and available stock
                $stokBrng->increment('stokKeluar', $stokKeluar->quantity);
                $stokBrng->stokTersedia -= $stokKeluar->quantity;
                $stokBrng->save();
            }
        });
    }
}
