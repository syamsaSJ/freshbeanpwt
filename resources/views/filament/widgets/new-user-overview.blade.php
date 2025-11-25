<style>
    @keyframes pulseColor {
    0% {
        color: #ffffff; /* Initial color */
    }
    50% {
        color: #4caf50; /* Intermediate color */
    }
    100% {
        color: #ffffff; /* Final color */
    }
}

.pulse-color {
    animation: pulseColor 2s infinite;
}

</style>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha512-..." crossorigin="anonymous" referrerpolicy="no-referrer" />

<!-- New Customers Card -->
<x-filament::widget>
    <x-filament::card>
        <div class="flex items-start">
            <!-- Icon -->
            <i class="fas fa-user-plus text-blue-500 text-md mr-4 mt-1" style="margin-right: 5px;"></i>
            <!-- Text Content -->
            <div>
                <h3 class="font-semibold text-gray-300">
                    Total Customers
                </h3>
                <p class="mt-2 text-2xl font-bold animate-pulse pulse-color">
                    {{ number_format($newCustomers) }}
                </p>
                <p class="mt-2 text-md {{ $percentageChangeCustomers > 0 ? 'text-green-500' : 'text-red-500' }}">
                    {{ abs($percentageChangeCustomers) }}%
                    {{ $percentageChangeCustomers > 0 ? 'increase' : 'decrease' }}
                </p>
            </div>
        </div>
    </x-filament::card>
</x-filament::widget>



