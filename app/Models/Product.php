<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Product extends Model
{
    use HasFactory;

    protected $fillable = [
        'kode',
        'image',
        'name',
        'origin_id',
        'category_id',
        'weight',
        'satuan',
        'price',
        'description',
    ];

    /**
     * @var array<string, string>
     */
    protected $casts = [
        'is_visible' => 'boolean',
    ];

    protected static function boot()
    {
        parent::boot();

        static::creating(function ($product) {
            DB::transaction(function () use ($product) {
                // Mengambil inisial dari kata-kata pada nama produk
                $nameWords = explode(' ', $product->name);
                $initials = '';
                foreach ($nameWords as $word) {
                    $initials .= strtoupper(substr($word, 0, 1));
                }
                $initials = substr($initials, 0, 3); // Mengambil hanya 3 huruf awal

                // Menghasilkan kode dengan format PRD + inisial + angka urut
                $prefix = 'PRD' . $initials;

                // Mengunci tabel untuk mencegah race condition
                DB::table('products')->where('kode', 'like', $prefix . '%')->lockForUpdate()->get();

                // Mendapatkan kode terakhir yang ada
                $latestProduct = static::where('kode', 'like', $prefix . '%')->latest()->first();
                $lastId = ($latestProduct) ? intval(substr($latestProduct->kode, strlen($prefix))) : 0;
                $newId = $lastId + 1;

                // Set kode baru ke produk
                $product->kode = $prefix . str_pad($newId, 3, '0', STR_PAD_LEFT);

                // Pastikan kode unik
                while (static::where('kode', $product->kode)->exists()) {
                    $newId++;
                    $product->kode = $prefix . str_pad($newId, 3, '0', STR_PAD_LEFT);
                }
            });
        });
    }

    public function origin()
    {
        return $this->belongsTo(Origin::class, 'origin_id');
    }

    public function category()
    {
        return $this->belongsTo(Category::class, 'category_id');
    }

    public function variants()
    {
        return $this->hasMany(Varian::class, 'product_id');
    }

    public function stokbrng()
    {
        return $this->hasMany(stokBrng::class, 'product_id');
    }

    public function brngmsk()
    {
        return $this->hasMany(BrngMsk::class, 'product_id');
    }

    public function brngklr()
    {
        return $this->hasMany(BrngKlr::class, 'product_id');
    }

    public function supplier()
    {
        return $this->belongsTo(Supplier::class);
    }

    public function favoritedByUsers()
    {
        return $this->belongsToMany(User::class, 'favorites');
    }

    public function reviews()
    {
        return $this->hasMany(Review::class);
    }

}
