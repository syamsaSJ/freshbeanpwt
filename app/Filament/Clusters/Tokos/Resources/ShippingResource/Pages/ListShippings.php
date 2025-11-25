<?php

namespace App\Filament\Clusters\Tokos\Resources\ShippingResource\Pages;

use App\Filament\Clusters\Tokos\Resources\ShippingResource;
use Filament\Pages\Actions;
use Filament\Resources\Pages\ListRecords;

class ListShippings extends ListRecords
{
    protected static string $resource = ShippingResource::class;
    protected static ?string $title = 'List Shipping';

    protected function getActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
