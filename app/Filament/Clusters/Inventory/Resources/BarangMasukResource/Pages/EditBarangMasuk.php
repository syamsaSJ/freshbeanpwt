<?php

namespace App\Filament\Clusters\Inventory\Resources\BarangMasukResource\Pages;

use App\Filament\Clusters\Inventory\Resources\BarangMasukResource;
use Filament\Pages\Actions;
use Filament\Resources\Pages\EditRecord;

class EditBarangMasuk extends EditRecord
{
    protected static string $resource = BarangMasukResource::class;
    protected static ?string $title = 'Edit Barang Masuk';

    protected function getActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
