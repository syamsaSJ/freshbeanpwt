<?php

namespace App\Filament\Resources\Inventory\SupplierResource\Pages;

use App\Filament\Resources\Inventory\SupplierResource;
use Filament\Pages\Actions;
use Filament\Resources\Pages\EditRecord;

class EditSupplier extends EditRecord
{
    protected static string $resource = SupplierResource::class;
    protected static ?string $title = 'Edit Supplier';

    protected function getActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
