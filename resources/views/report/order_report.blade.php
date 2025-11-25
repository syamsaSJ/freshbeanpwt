<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Report</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Inter', sans-serif;
        }
        .report-header {
            background-color: #3066BE;
            color: #ffffff;
            padding: 20px;
            text-align: center;
        }
        .order-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        .order-table th, .order-table td {
            padding: 12px;
            border-bottom: 1px solid #e2e8f0;
        }
        .order-table th {
            background-color: #119DA4;
            color: #ffffff;
            text-align: left;
        }
        .order-summary {
            margin-top: 30px;
            padding: 20px;
            background-color: #f7fafc;
            border: 1px solid #e2e8f0;
            border-radius: 8px;
        }
        .order-summary h3 {
            font-size: 1.25rem;
            margin-bottom: 20px;
        }
        .order-summary p {
            margin-bottom: 10px;
        }
    </style>
</head>
<body class="bg-gray-100">

    <div class="report-header">
        <h1 class="text-2xl font-semibold">Order Report</h1>
        <p class="text-sm">Generated on: {{ \Carbon\Carbon::now()->format('F j, Y, g:i a') }}</p>
    </div>

    <div class="container mx-auto my-8">
        <table class="order-table w-full">
            <thead>
                <tr>
                    <th>Order No</th>
                    <th>Customer Name</th>
                    <th>Status</th>
                    <th>Address</th>
                    <th>Payment Method</th>
                    <th>Shipping Cost</th>
                    <th>Total Price</th>
                    <th>Grand Total</th>
                    <th>Order Date</th>
                </tr>
            </thead>
            <tbody>
                @foreach($orders as $order)
                    <tr>
                        <td>{{ $order->no_order }}</td>
                        <td>{{ $order->user->name }}</td>
                        <td>
                            <span class="px-2 py-1 inline-flex text-xs leading-5 font-semibold rounded-full {{ $order->status == 'completed' ? 'bg-green-100 text-green-800' : ($order->status == 'canceled' ? 'bg-red-100 text-red-800' : 'bg-yellow-100 text-yellow-800') }}">
                                {{ ucfirst($order->status) }}
                            </span>
                        </td>
                        <td>{{ $order->alamat }}</td>
                        <td>{{ $order->paymentMethod->type_payment ?? 0 }}</td>
                        <td>{{ number_format($order->shipping_cost, 0, ',', '.') }} IDR</td>
                        <td>{{ number_format($order->total_price, 0, ',', '.') }} IDR</td>
                        <td>{{ number_format($order->grand_total, 0, ',', '.') }} IDR</td>
                        <td>{{ $order->created_at->format('F j, Y, g:i a') }}</td>
                    </tr>
                @endforeach
            </tbody>
        </table>

        <div class="order-summary">
            <h3 class="font-semibold text-gray-800">Summary</h3>
            <p><strong>Total Orders:</strong> {{ $orders->count() }}</p>
            <p><strong>Total Revenue:</strong> {{ number_format($orders->sum('grand_total'), 0, ',', '.') }} IDR</p>
            <p><strong>Completed Orders:</strong> {{ $orders->where('status', 'completed')->count() }}</p>
            <p><strong>Pending Orders:</strong> {{ $orders->where('status', 'pending')->count() }}</p>
            <p><strong>Canceled Orders:</strong> {{ $orders->where('status', 'canceled')->count() }}</p>
        </div>
    </div>

</body>
</html>
