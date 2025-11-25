<style>
    @keyframes pulseColor {
        0% {
            color: #ffffff;
            /* Initial color */
        }

        50% {
            color: #4caf50;
            /* Intermediate color */
        }

        100% {
            color: #ffffff;
            /* Final color */
        }
    }

    .pulse-color {
        animation: pulseColor 2s infinite;
    }
</style>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
    integrity="sha512-..." crossorigin="anonymous" referrerpolicy="no-referrer" />


<x-filament::widget>
    <x-filament::card>
        <div class="flex items-start" style="margin-bottom: 12px;">
            <!-- Icon -->
            <i class="fas fa-solid fa-box text-md mr-4 mt-1" style="margin-right: 5px;"></i>
            <!-- Text Content -->
            <div>
                <h3 class="font-semibold text-gray-300">
                    Total Produk
                </h3>
                <p class="mt-2 text-2xl font-bold animate-pulse pulse-color">
                    {{ $totalProduct }}
                </p>
            </div>
        </div>
    </x-filament::card>
</x-filament::widget>

<x-filament::widget>
    <x-filament::card>
        <div class="flex items-start" style="margin-bottom: 12px;">
            <!-- Icon -->
            <i class="fas fa-solid fa-tag text-md mr-4 mt-1" style="margin-right: 5px;"></i>
            <!-- Text Content -->
            <div>
                <h3 class="font-semibold text-gray-300">
                    Total Kategori
                </h3>
                <p class="mt-2 text-2xl font-bold animate-pulse pulse-color">
                    {{ $totalProductCategory }}
                </p>
            </div>
        </div>
    </x-filament::card>
</x-filament::widget>

<x-filament::widget>
    <x-filament::card>
        <div class="flex items-start" style="margin-bottom: 12px;">
            <!-- Icon -->
            <i class="fas fa-solid fa-layer-group text-md mr-4 mt-1" style="margin-right: 5px;"></i>
            <!-- Text Content -->
            <div>
                <h3 class="font-semibold text-gray-300">
                    Total Varian
                </h3>
                <p class="mt-2 text-2xl font-bold animate-pulse pulse-color">
                    {{ $totalProductVarian }}
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
                    <p class="mt-2 font-bold animate-pulse pulse-color">{{ $product->name }} - {{ $product->total_sold }} terjual</p>
                @endforeach
            </div>
        </div>
    </x-filament::card>
</x-filament::widget>