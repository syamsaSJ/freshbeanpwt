<!-- New Orders Card -->
<x-filament::widget>
    <x-filament::card>
        <div class="flex items-start">
            <!-- Icon -->
            <i class="fas fa-shopping-cart text-green-500 text-md mr-4 mt-1" style="margin-right: 5px;"></i>
            <!-- Text Content -->
            <div>
                <h3 class="font-semibold text-gray-300">
                    Total Orders
                </h3>
                <p class="mt-2 text-2xl font-bold animate-pulse pulse-color">
                    {{ number_format($newOrders) }}
                </p>
                <p
                    class="mt-2 text-md {{ $percentageChangeOrders > 0 ? 'text-green-300' : ($percentageChangeOrders < 0 ? 'text-red-300' : 'text-gray-300') }}">
                    {{ abs($percentageChangeOrders) }}%
                    {{ $percentageChangeOrders > 0 ? 'increase' : ($percentageChangeOrders < 0 ? 'decrease' : 'no change') }}
                </p>
            </div>
        </div>
    </x-filament::card>
</x-filament::widget>