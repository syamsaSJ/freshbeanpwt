<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Services\RajaOngkirService;


class toko extends Model
{
    use HasFactory;

    protected $fillable = [
        'nama_toko',
        'contact',
        'email',
        'province_id',
        'city_id',
        'alamat',
        'kode_pos',
        'terms',
        'privacy'
    ];

    public function provinsi()
    {
        return $this->belongsTo(Province::class, 'province_id');
    }

    public function kota()
    {
        return $this->belongsTo(City::class, 'city_id');
    }
}
