<?php

namespace App\Filament\Clusters\Tokos\Resources\MetodePembayaranResource\Pages;

use App\Filament\Clusters\Tokos\Resources\MetodePembayaranResource;
use Filament\Pages\Actions;
use Filament\Resources\Pages\EditRecord;

class EditMetodePembayaran extends EditRecord
{
    protected static string $resource = MetodePembayaranResource::class;
    // protected static ?string $title = 'Edit Metode Pembayaran';

    protected function getActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
