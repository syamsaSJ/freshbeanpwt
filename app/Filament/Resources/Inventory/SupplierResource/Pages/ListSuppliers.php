<?php

namespace App\Filament\Resources\Inventory\SupplierResource\Pages;

use App\Filament\Resources\Inventory\SupplierResource;
use Filament\Pages\Actions;
use Filament\Resources\Pages\ListRecords;

class ListSuppliers extends ListRecords
{
    protected static string $resource = SupplierResource::class;
    protected static ?string $title = 'List Supplier';

    protected function getActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
