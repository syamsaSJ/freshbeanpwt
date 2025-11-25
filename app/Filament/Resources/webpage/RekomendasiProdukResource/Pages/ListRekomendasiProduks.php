<?php

namespace App\Filament\Resources\webpage\RekomendasiProdukResource\Pages;

use App\Filament\Resources\webpage\RekomendasiProdukResource;
use Filament\Pages\Actions;
use Filament\Resources\Pages\ListRecords;

class ListRekomendasiProduks extends ListRecords
{
    protected static string $resource = RekomendasiProdukResource::class;
    protected static ?string $title = 'List Rekomendasi Produk';

    protected function getActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
