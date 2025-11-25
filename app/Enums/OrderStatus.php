<?php

namespace App\Enums;

use Filament\Support\Contracts\HasColor;
use Filament\Support\Contracts\HasIcon;
use Filament\Support\Contracts\HasLabel;

enum OrderStatus: string implements HasColor, HasIcon, HasLabel
{
    case pending = 'pending';

    case Diproses = 'Diproses';

    case Dikirim = 'Dikirim';

    case completed = 'completed';

    case canceled = 'canceled';

    public function getLabel(): string
    {
        return match ($this) {
            self::pending => 'pending',
            self::Diproses => 'Diproses',
            self::Dikirim => 'Dikirim',
            self::completed => 'completed',
            self::canceled => 'canceled',
        };
    }

    public function getColor(): string | array | null
    {
        return match ($this) {
            self::pending => 'info',
            self::Diproses => 'warning',
            self::Dikirim, self::completed => 'success',
            self::canceled => 'danger',
        };
    }

    public function getIcon(): ?string
    {
        return match ($this) {
            self::pending => 'heroicon-m-sparkles',
            self::Diproses => 'heroicon-m-arrow-path',
            self::Dikirim => 'heroicon-m-truck',
            self::completed => 'heroicon-m-check-badge',
            self::canceled => 'heroicon-m-x-circle',
        };
    }
}
