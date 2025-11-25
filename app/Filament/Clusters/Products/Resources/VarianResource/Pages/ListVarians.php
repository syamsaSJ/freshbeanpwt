<?php

namespace App\Filament\Clusters\Products\Resources\VarianResource\Pages;

use App\Filament\Clusters\Products\Resources\VarianResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListVarians extends ListRecords
{
    protected static string $resource = VarianResource::class;
    protected static ?string $title = 'List Varian';

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
