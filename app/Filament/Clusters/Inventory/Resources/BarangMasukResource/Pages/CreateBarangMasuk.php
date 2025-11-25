<?php

namespace App\Filament\Clusters\Inventory\Resources\BarangMasukResource\Pages;

use App\Filament\Clusters\Inventory\Resources\BarangMasukResource;
use Filament\Pages\Actions;
use Filament\Resources\Pages\CreateRecord;

class CreateBarangMasuk extends CreateRecord
{
    protected static string $resource = BarangMasukResource::class;
    protected static ?string $title = 'Create Barang Masuk';
}
