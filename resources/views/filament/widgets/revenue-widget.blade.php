<!-- Revenue Card -->
<x-filament::widget>
    <x-filament::card>
        <div class="flex items-start">
            <!-- Icon -->
            <i class="fas fa-dollar-sign text-yellow-500 text-md mr-4 mt-1" style="margin-right: 5px;"></i>
            <!-- Text Content -->
            <div>
                <h3 class="font-semibold text-gray-300">
                    Total Revenue
                </h3>
                <p class="mt-2 text-2xl font-bold animate-pulse pulse-color">
                    Rp{{ number_format($revenue / 1000) }}k
                </p>
                <p class="mt-2 text-md {{ $percentageChangeRevenue > 0 ? 'text-green-300' : ($percentageChangeRevenue < 0 ? 'text-red-300' : 'text-gray-300') }}">
                    {{ abs($percentageChangeRevenue) }}%
                    {{ $percentageChangeRevenue > 0 ? 'increase' : ($percentageChangeRevenue < 0 ? 'decrease' : 'no change') }}
                </p>
            </div>
        </div>
    </x-filament::card>
</x-filament::widget>

<x-filament::widget>
    <x-filament::card>
        <div class="flex items-start">
            <i class="fas fa-solid fa-chart-line text-md mr-4 mt-1" style="margin-right: 5px;"></i>
            <div>
                <h3 class="font-semibold text-gray-300">
                    Produk Terlaris
                </h3>
                @foreach ($bestSellingProducts as $product)
                    <p class="mt-2 text-md font-bold animate-pulse pulse-color">{{ $product->name }}</p>
                    <p class="mt-2 text-md">- {{ $product->total_sold }} terjual</p>
                @endforeach
            </div>
        </div>
    </x-filament::card>
</x-filament::widget>
