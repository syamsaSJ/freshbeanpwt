<?php

namespace App\Filament\Clusters\Inventory\Resources\StokBarangResource\Pages;

use App\Filament\Clusters\Inventory\Resources\StokBarangResource;
use Filament\Pages\Actions;
use Filament\Resources\Pages\CreateRecord;

class CreateStokBarang extends CreateRecord
{
    protected static string $resource = StokBarangResource::class;
    protected static ?string $title = 'Create Stok Barang';
}
