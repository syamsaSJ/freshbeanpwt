<x-filament::widget>
    <x-filament::card>
        <div>
            <canvas id="monthlySalesChart"></canvas>
        </div>
    </x-filament::card>
</x-filament::widget>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        var ctx = document.getElementById('monthlySalesChart').getContext('2d');
        new Chart(ctx, {
            type: 'bar',
            data: {
                labels: {!! json_encode(['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']) !!},
                datasets: [{
                    label: 'Penjualan Bulanan',
                    data: {!! json_encode(array_values($monthlySales)) !!},
                    backgroundColor: 'rgba(75, 192, 192, 0.2)',
                    borderColor: 'rgba(75, 192, 192, 1)',
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