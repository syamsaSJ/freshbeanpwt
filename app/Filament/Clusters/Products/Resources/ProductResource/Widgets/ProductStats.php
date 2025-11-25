<?php

namespace App\Filament\Clusters\Products\Resources\ProductResource\Widgets;

use App\Filament\Clusters\Products\Resources\ProductResource\Pages\ListProducts;
use Filament\Widgets\Concerns\InteractsWithPageTable;
use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;
use App\Models\Product;
use App\Models\Category;
use App\Models\Origin;
use App\Models\varian;

class ProductStats extends BaseWidget
{
    protected static ?int $sort = 2;
    protected function getStats(): array
    {
        $productCount = Product::count();
        $categoryCount = Category::count();
        $originCount = Origin::count();
        $varianCount = Product::whereHas('variants')->count();

        return [
            Stat::make('Product', $productCount)
                ->Icon('heroicon-s-square-3-stack-3d'),
            Stat::make('Category', $categoryCount)
                ->Icon('heroicon-s-tag'),
            Stat::make('Origin', $originCount)
                ->Icon('heroicon-s-location-marker'),
            Stat::make('Product with Varian', $varianCount)
                ->icon('heroicon-s-circle-stack')
        ];
    }
}
