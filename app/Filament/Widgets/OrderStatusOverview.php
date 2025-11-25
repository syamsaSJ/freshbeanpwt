<?php

namespace App\Filament\Widgets;

use Leandrocfe\FilamentApexCharts\Widgets\ApexChartWidget;
use Illuminate\Support\Facades\DB;
use Illuminate\Contracts\View\View;
use Illuminate\Support\HtmlString;

class OrderStatusOverview extends ApexChartWidget
{
    /**
     * Chart Id
     *
     * @var string
     */
    protected static string $chartId = 'orderStatusOverview';


    /**
     * Widget Title
     *
     * @var string|null
     */
    protected static ?string $heading = 'Order Status per Week';

    /**
     * Sort
     */
    protected static ?int $sort = 6;

    /**
     * Widget content height
     */
    protected static ?int $contentHeight = 215;

    protected static ?string $pollingInterval = '1s';

    /**
     * Chart options (series, labels, types, size, animations...)
     * https://apexcharts.com/docs/options
     *
     * @return array
     */
    protected function getOptions(): array
    {
        // Hitung pesanan baru dengan status 'pending' dalam minggu ini
        $newOrders = DB::table('orders')
            ->select('status', DB::raw('COUNT(*) as count'))
            ->whereIn('status', ['pending', 'diproses', 'dikirim'])
            ->whereBetween('created_at', [now()->startOfWeek(), now()->endOfWeek()])
            ->groupBy('status')
            ->pluck('count', 'status')
            ->count();

        // Hitung pesanan yang sudah dikirim dengan status 'completed' dalam minggu ini
        $deliveredOrders = DB::table('orders')
            ->where('status', 'completed')
            ->whereBetween('created_at', [now()->startOfWeek(), now()->endOfWeek()])
            ->count();

        // Hitung pesanan yang dibatalkan dengan status 'cancelled' dalam minggu ini
        $cancelledOrders = DB::table('orders')
            ->where('status', 'cancelled')
            ->whereBetween('created_at', [now()->startOfWeek(), now()->endOfWeek()])
            ->count();

        $totalOrders = $newOrders + $deliveredOrders + $cancelledOrders;
        $deliveredPercentage = $totalOrders > 0 ? ($deliveredOrders / $totalOrders) * 100 : 0;

        return [
            'chart' => [
                'type' => 'radialBar',
                'height' => 280,
                'toolbar' => [
                    'show' => false,
                ],
            ],
            'series' => [$deliveredPercentage],
            'plotOptions' => [
                'radialBar' => [
                    'startAngle' => -140,
                    'endAngle' => 130,
                    'hollow' => [
                        'size' => '60%',
                        'background' => 'transparent',
                    ],
                    'track' => [
                        'background' => 'transparent',
                        'strokeWidth' => '100%',
                    ],
                    'dataLabels' => [
                        'show' => true,
                        'name' => [
                            'show' => true,
                            'offsetY' => -10,
                            'fontWeight' => 600,
                            'fontFamily' => 'inherit',
                        ],
                        'value' => [
                            'show' => true,
                            'fontWeight' => 600,
                            'fontSize' => '24px',
                            'fontFamily' => 'inherit',
                        ],
                    ],
                ],
            ],
            'fill' => [
                'type' => 'gradient',
                'gradient' => [
                    'shade' => 'dark',
                    'type' => 'horizontal',
                    'shadeIntensity' => 0.5,
                    'gradientToColors' => ['#f59e0b'],
                    'inverseColors' => true,
                    'opacityFrom' => 1,
                    'opacityTo' => 0.6,
                    'stops' => [30, 70, 100],
                ],
            ],
            'stroke' => [
                'dashArray' => 10,
            ],
            'labels' => ['Delivered'],
            'colors' => ['#16a34a'],
        ];
    }

    /**
     * Widget Footer
     *
     * @return string|View
     */
    protected function getFooter(): string|View
    {
        // Hitung pesanan baru dengan status 'pending' dalam minggu ini
        $newOrders = DB::table('orders')
            ->select('status', DB::raw('COUNT(*) as count'))
            ->whereIn('status', ['pending', 'diproses', 'dikirim'])
            ->whereBetween('created_at', [now()->startOfWeek(), now()->endOfWeek()])
            ->groupBy('status')
            ->pluck('count', 'status')
            ->count();

        // Hitung pesanan yang sudah dikirim dengan status 'completed' dalam minggu ini
        $deliveredOrders = DB::table('orders')
            ->where('status', 'completed')
            ->whereBetween('created_at', [now()->startOfWeek(), now()->endOfWeek()])
            ->count();

        // Hitung pesanan yang dibatalkan dengan status 'cancelled' dalam minggu ini
        $cancelledOrders = DB::table('orders')
            ->where('status', 'cancelled')
            ->whereBetween('created_at', [now()->startOfWeek(), now()->endOfWeek()])
            ->count();

        return new HtmlString(
            '<div class="flex space-x-12 justify-between">
                <div class="flex flex-col items-center space-y-1">
                    <div class="text-muted small">New Orders</div>
                    <p class="text-red-500 text-2xl">' . e($newOrders) . '</p>
                </div>
                <div class="flex flex-col items-center space-y-1">
                    <div class="text-muted small">Delivered Orders</div>
                    <p class="text-red-500 text-2xl">' . e($deliveredOrders) . '</p>
                </div>
                <div class="flex flex-col items-center space-y-1">
                    <div class="text-muted small">Cancelled Orders</div>
                    <p class="text-red-500 text-2xl">' . e($cancelledOrders) . '</p>
                </div>
            </div>'
        );
    }
}
