<?php

namespace App\Filament\Resources\Inventory\SupplierResource\Pages;

use App\Filament\Resources\Inventory\SupplierResource;
use Filament\Pages\Actions;
use Filament\Resources\Pages\CreateRecord;

class CreateSupplier extends CreateRecord
{
    protected static string $resource = SupplierResource::class;
    protected static ?string $title = 'Create Supplier';
}
