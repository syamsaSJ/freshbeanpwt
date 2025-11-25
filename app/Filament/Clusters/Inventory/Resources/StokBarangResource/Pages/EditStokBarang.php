<?php

namespace App\Filament\Clusters\Inventory\Resources\StokBarangResource\Pages;

use App\Filament\Clusters\Inventory\Resources\StokBarangResource;
use Filament\Pages\Actions;
use Filament\Resources\Pages\EditRecord;

class EditStokBarang extends EditRecord
{
    protected static string $resource = StokBarangResource::class;
    protected static ?string $title = 'Edit Stok Barang';

    protected function getActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
