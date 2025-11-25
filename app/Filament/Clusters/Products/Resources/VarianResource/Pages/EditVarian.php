<?php

namespace App\Filament\Clusters\Products\Resources\VarianResource\Pages;

use App\Filament\Clusters\Products\Resources\VarianResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditVarian extends EditRecord
{
    protected static string $resource = VarianResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
