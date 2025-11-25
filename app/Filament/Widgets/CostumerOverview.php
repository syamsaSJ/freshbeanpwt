<?php

namespace App\Filament\Widgets;

use Leandrocfe\FilamentApexCharts\Widgets\ApexChartWidget;
use Illuminate\Support\Facades\DB;

class CostumerOverview extends ApexChartWidget
{
    protected static ?int $sort = 7;
    /**
     * Chart Id
     *
     * @var string
     */
    protected static string $chartId = 'costumerOverview';

    /**
     * Widget Title
     *
     * @var string|null
     */
    protected static ?string $heading = 'Total Customers';

    /**
     * Widget content height
     */
    protected static ?int $contentHeight = 290;

    protected static ?string $pollingInterval = '1s';

    /**
     * Chart options (series, labels, types, size, animations...)
     * https://apexcharts.com/docs/options
     *
     * @return array
     */
    protected function getOptions(): array
    {
        $customerCounts = $this->getCustomerCountsPerMonth();

        return [
            'chart' => [
                'type' => 'line',
                'height' => 250,
                'toolbar' => [
                    'show' => false,
                ],
            ],
            'series' => [
                [
                    'name' => 'Customers',
                    'data' => array_values($customerCounts),
                ],
            ],
            'xaxis' => [
                'categories' => ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
                'labels' => [
                    'style' => [
                        'fontWeight' => 400,
                        'fontFamily' => 'inherit',
                    ],
                ],
            ],
            'yaxis' => [
                'labels' => [
                    'style' => [
                        'fontWeight' => 400,
                        'fontFamily' => 'inherit',
                    ],
                ],
            ],
            'fill' => [
                'type' => 'gradient',
                'gradient' => [
                    'shade' => 'dark',
                    'type' => 'horizontal',
                    'shadeIntensity' => 1,
                    'gradientToColors' => ['#ea580c'],
                    'inverseColors' => true,
                    'opacityFrom' => 1,
                    'opacityTo' => 1,
                    'stops' => [0, 100, 100, 100],
                ],
            ],
            'dataLabels' => [
                'enabled' => false,
            ],
            'grid' => [
                'show' => false,
            ],
            'markers' => [
                'size' => 2,
            ],
            'tooltip' => [
                'enabled' => true,
            ],
            'stroke' => [
                'width' => 4,
            ],
            'colors' => ['#f59e0b'],
        ];
    }

    /**
     * Get the number of customers per month.
     *
     * @return array
     */
    protected function getCustomerCountsPerMonth(): array
    {
        // Query to get customer counts per month
        $results = DB::table('users')
            ->selectRaw('MONTH(created_at) as month, COUNT(*) as count')
            ->groupBy('month')
            ->orderBy('month')
            ->pluck('count', 'month');

        // Prepare an array with 0 values for months with no data
        $customerCounts = array_fill(1, 12, 0);

        // Map results to the customerCounts array
        foreach ($results as $month => $count) {
            $customerCounts[$month] = $count;
        }

        // Debugging: Log or dump the data to verify
        // dd($customerCounts);
        return $customerCounts;
    }
}
