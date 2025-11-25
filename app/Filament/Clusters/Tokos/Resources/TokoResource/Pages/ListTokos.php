<?php

namespace App\Filament\Clusters\Tokos\Resources\TokoResource\Pages;

use App\Filament\Clusters\Tokos\Resources\TokoResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListTokos extends ListRecords
{
    protected static string $resource = TokoResource::class;
    protected static ?string $title = 'List Toko';

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
