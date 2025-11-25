<?php

namespace App\Filament\Clusters\Inventory\Resources\BarangKeluarResource\Pages;

use App\Filament\Clusters\Inventory\Resources\BarangKeluarResource;
use Filament\Pages\Actions;
use Filament\Resources\Pages\EditRecord;

class EditBarangKeluar extends EditRecord
{
    protected static string $resource = BarangKeluarResource::class;
    protected static ?string $title = 'Edit Barang Keluar';

    protected function getActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
