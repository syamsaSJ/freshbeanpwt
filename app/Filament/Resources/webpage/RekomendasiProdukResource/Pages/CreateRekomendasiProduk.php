<?php

namespace App\Filament\Resources\webpage\RekomendasiProdukResource\Pages;

use App\Filament\Resources\webpage\RekomendasiProdukResource;
use Filament\Pages\Actions;
use Filament\Resources\Pages\CreateRecord;

class CreateRekomendasiProduk extends CreateRecord
{
    protected static string $resource = RekomendasiProdukResource::class;
    protected static ?string $title = 'Create Rekomendasi Produk';
}
