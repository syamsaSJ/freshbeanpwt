<?php

namespace App\Filament\Clusters\Inventory\Resources\StokBarangResource\Widgets;

use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;
use App\Models\StokBrng;

class StokStats extends BaseWidget
{
    protected static ?int $sort = 3;

    protected function getStats(): array
    {
        $stokBarangCount = StokBrng::count();
        $stokTerbanyak = StokBrng::orderBy('stokTersedia', 'desc')->first();
        $stokTersedikit = StokBrng::orderBy('stokTersedia', 'asc')->first();

        return [
            Stat::make('Product Inventory', $stokBarangCount)
                ->Icon('heroicon-s-square-3-stack-3d'),
            Stat::make('Stok Terbanyak', $stokTerbanyak->stokTersedia . 'g')
                ->description($stokTerbanyak->product->name)
                ->descriptionIcon('heroicon-m-arrow-trending-up')
                ->icon('heroicon-s-inbox-stack')
                ->color('success'),
            Stat::make('Stok Tersedikit', $stokTersedikit->stokTersedia . 'g')
                ->description($stokTersedikit->product->name)
                ->descriptionIcon('heroicon-m-arrow-trending-down')
                ->icon('heroicon-s-inbox-stack')
                ->color('danger'),
        ];
    }
}
