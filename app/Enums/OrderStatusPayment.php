<?php

namespace App\Enums;

use Filament\Support\Contracts\HasColor;
use Filament\Support\Contracts\HasIcon;
use Filament\Support\Contracts\HasLabel;

enum OrderStatusPayment: string
{
    case BelumDiterima = 'Belum diterima';

    case Diterima = 'Diterima';

    case Refund = 'Refund';

    public function getLabel(): string
    {
        return match ($this) {
            self::BelumDiterima => 'Belum diterima',
            self::Diterima => 'Diterima',
            self::Refund => 'Refund',
        };
    }

    public function getColor(): string | array | null
    {
        return match ($this) {
            self::BelumDiterima => 'info',
            self::Diterima => 'success',
            self::Refund => 'danger',
        };
    }

    public function getIcon(): ?string
    {
        return match ($this) {
            self::BelumDiterima => 'heroicon-o-sparkle',
            self::Diterima => 'heroicon-o-badge-check',
            self::Refund => 'heroicon-o-x-circle',
        };
    }
}
