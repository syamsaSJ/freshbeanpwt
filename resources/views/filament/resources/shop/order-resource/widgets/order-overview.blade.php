<x-filament::widget>
    <x-filament::card>
        <!-- Kartu Total Orders -->
        <div class="p-6 rounded-lg shadow-lg border border-gray-200">
            <h3 class="text-lg font-semibold mb-4">Total Order</h3>
            <p class="text-3xl font-bold">{{ $totalOrders }}</p>
        </div>
    </x-filament::card>
</x-filament::widget>

<x-filament::widget>
    <x-filament::card>
        <!-- Kartu Pending Orders -->
        <div class="p-6 rounded-lg shadow-lg border border-gray-200">
            <h3 class="text-lg font-semibold mb-4">Pending Order</h3>
            <p class="text-3xl font-bold">{{ $pendingOrders }}</p>
        </div>
    </x-filament::card>
</x-filament::widget>

<x-filament::widget>
    <x-filament::card>
        <!-- Kartu Average Price -->
        <div class="p-6 rounded-lg shadow-lg border border-gray-200">
            <h3 class="text-lg font-semibold mb-4">Average Price</h3>
            <p class="text-3xl font-bold">{{ number_format($averagePrice, 2) }}</p>
        </div>
    </x-filament::card>
</x-filament::widget>