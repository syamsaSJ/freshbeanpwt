<?php

namespace App\Filament\Clusters\Products\Resources\OriginResource\Pages;

use App\Filament\Clusters\Products\Resources\OriginResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListOrigins extends ListRecords
{
    protected static string $resource = OriginResource::class;
    protected static ?string $title = 'List origin';

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
