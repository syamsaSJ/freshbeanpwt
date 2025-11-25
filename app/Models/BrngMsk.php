<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BrngMsk extends Model
{
    use HasFactory;

    protected $fillable = [
        'product_id',
        'supplier_id',
        'quantity',
        'received_at',
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
        static::created(function ($stokMasuk) {
            $stokBrng = StokBrng::where('product_id', $stokMasuk->product_id)->first();

            if ($stokBrng) {
                // Update existing stock
                $stokBrng->increment('stokMasuk', $stokMasuk->quantity);
                $stokBrng->stokTersedia += $stokMasuk->quantity;
                $stokBrng->save();
            } else {
                // Create new stock record
                StokBrng::create([
                    'product_id' => $stokMasuk->product_id,
                    'supplier_id' => $stokMasuk->supplier_id,
                    'stokAwal' => $stokMasuk->quantity,
                    'stokMasuk' => 0,
                    'stokKeluar' => 0,
                    'stokTersedia' => $stokMasuk->quantity,
                    'securityStok' => 0,
                ]);
            }
        });
    }
}
