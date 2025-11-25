<?php

namespace App\Filament\Clusters\Tokos\Resources\MetodePembayaranResource\Pages;

use App\Filament\Clusters\Tokos\Resources\MetodePembayaranResource;
use Filament\Pages\Actions;
use Filament\Resources\Pages\CreateRecord;


class CreateMetodePembayaran extends CreateRecord
{
    protected static string $resource = MetodePembayaranResource::class;
    // protected static ?string $title = 'Create Metode Pembayaran';
}
