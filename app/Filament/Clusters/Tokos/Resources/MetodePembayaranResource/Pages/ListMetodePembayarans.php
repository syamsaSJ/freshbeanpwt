<?php

namespace App\Filament\Clusters\Tokos\Resources\MetodePembayaranResource\Pages;

use App\Filament\Clusters\Tokos\Resources\MetodePembayaranResource;
use Filament\Pages\Actions;
use Filament\Resources\Pages\ListRecords;

class ListMetodePembayarans extends ListRecords
{
    protected static string $resource = MetodePembayaranResource::class;
    protected static ?string $title = 'List Metode Pembayaran';
    protected function getActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
