<?php

namespace App\Filament\Resources\webpage\RekomendasiProdukResource\Pages;

use App\Filament\Resources\webpage\RekomendasiProdukResource;
use Filament\Pages\Actions;
use Filament\Resources\Pages\EditRecord;

class EditRekomendasiProduk extends EditRecord
{
    protected static string $resource = RekomendasiProdukResource::class;
    protected static ?string $title = 'Edit Rekomendasi Produk';

    protected function getActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
