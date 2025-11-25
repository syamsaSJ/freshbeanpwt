<?php

namespace App\Filament\Clusters\Tokos\Resources\ShippingResource\Pages;

use App\Filament\Clusters\Tokos\Resources\ShippingResource;
use Filament\Pages\Actions;
use Filament\Resources\Pages\EditRecord;

class EditShipping extends EditRecord
{
    protected static string $resource = ShippingResource::class;

    protected function getActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
