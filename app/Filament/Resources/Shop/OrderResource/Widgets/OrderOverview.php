<?php

namespace App\Filament\Resources\Shop\OrderResource\Widgets;

use Filament\Widgets\Widget;
use Illuminate\Database\Eloquent\Builder;
use App\Models\Order;
use Filament\Widgets\Concerns\InteractsWithPageTable;
use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;
use Flowframe\Trend\Trend;
use Flowframe\Trend\TrendValue;
use App\Filament\Resources\Shop\OrderResource\Pages\ListOrders;

class OrderOverview extends BaseWidget
{
    use InteractsWithPageTable;

    protected static ?string $pollingInterval = null;

    protected function getTablePage(): string
    {
        return ListOrders::class;
    }

    protected function getStats(): array
    {
        $orderData = Trend::model(Order::class)
            ->between(
                start: now()->subYear(),
                end: now(),
            )
            ->perMonth()
            ->count();

        return [
            Stat::make('Orders', $this->getPageTableQuery()->count())
                ->chart(
                    $orderData
                        ->map(fn (TrendValue $value) => $value->aggregate)
                        ->toArray()
                )
                ->color('success'),
            Stat::make('Open orders', $this->getPageTableQuery()
            ->whereIn('status', ['pending', 'Diproses'])
            ->count()),
            Stat::make('Average price', number_format($this->getPageTableQuery()->avg('total_price'), 2)),
        ];
    }
}
