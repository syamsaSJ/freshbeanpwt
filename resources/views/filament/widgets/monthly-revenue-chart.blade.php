<x-filament::widget>
    <x-filament::card>
        <div>
            <canvas id="monthlyRevenueChart"></canvas>
            
        </div>
    </x-filament::card>
</x-filament::widget>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        var ctx = document.getElementById('monthlyRevenueChart').getContext('2d');
        new Chart(ctx, {
            type: 'line',
            data: {
                labels: {!! json_encode(['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']) !!},
                datasets: [{
                    label: 'Penghasilan Bulanan',
                    data: @json(array_values($monthlyRevenue)),
                    backgroundColor: 'rgba(153, 102, 255, 0.2)',
                    borderColor: 'rgba(153, 102, 255, 1)',
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });
    });
</script>