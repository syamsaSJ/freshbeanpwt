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
            margin: 0;
            padding: 0;
            background-color: #f7fafc;
        }

        @page {
            size: 52mm 74mm;
            margin: 0;
        }

        .report-header {
            background-color: #3066BE;
            color: #ffffff;
            padding: 1mm;
            text-align: center;
            border-bottom: 1px solid #ffffff;
            font-size: 6px;
            margin-bottom: 1mm;
        }

        .order-table {
            width: 100%;
            border-collapse: collapse;
            font-size: 5px;
            margin-bottom: 1mm;
        }

        .order-table th,
        .order-table td {
            padding: 0.5mm;
            border-bottom: 1px solid #e2e8f0;
            text-align: left;
        }

        .order-table th {
            background-color: #119DA4;
            color: #ffffff;
        }

        .order-summary {
            margin-top: 2mm;
            padding: 1mm;
            background-color: #ffffff;
            border: 1px solid #e2e8f0;
            border-radius: 1mm;
            font-size: 5px;
        }

        .order-summary h3 {
            font-size: 6px;
            margin-bottom: 1mm;
        }

        .order-summary p {
            margin-bottom: 0.5mm;
        }
    </style>
</head>

<body>

    <div class="report-header">
        <h1 class="text-xs font-semibold">Order Report</h1>
        <p class="text-xs">Generated on: {{ \Carbon\Carbon::now()->format('F j, Y, g:i a') }}</p>
    </div>

    <div class="container mx-auto px-0.5">
        <div class="order-summary">
            <p><strong>Order No:</strong> {{ $order->no_order }}</p>
            <p><strong>Customer:</strong> {{ $order->user->name }}</p>
            <p><strong>Status:</strong>
                <span
                    class="inline-flex text-xs font-semibold rounded-full {{ $order->status == 'completed' ? 'bg-green-100 text-green-800' : ($order->status == 'canceled' ? 'bg-red-100 text-red-800' : 'bg-yellow-100 text-yellow-800') }}">
                    {{ ucfirst($order->status) }}
                </span>
            </p>
            <p><strong>Address:</strong> {{ $order->alamat }}</p>
            <p><strong>Payment:</strong> {{ $order->paymentMethod->type_payment ?? 'N/A' }}</p>
            <p><strong>Shipping Cost:</strong> {{ number_format($order->shipping_cost, 0, ',', '.') }} IDR</p>
            <p><strong>Total Price:</strong> {{ number_format($order->total_price, 0, ',', '.') }} IDR</p>
            <p><strong>Grand Total:</strong> {{ number_format($order->grand_total, 0, ',', '.') }} IDR</p>
            <p><strong>Date:</strong> {{ $order->created_at->format('F j, Y, g:i a') }}</p>
        </div>
    </div>

    <div class="order-summary">
        <h3 class="font-semibold text-gray-800">Summary</h3>
        <p><strong>Total Orders:</strong> {{ $order->count() }}</p>
        <p><strong>Total Revenue:</strong> {{ number_format($order->sum('grand_total'), 0, ',', '.') }} IDR</p>
        <p><strong>Completed Orders:</strong> {{ $order->where('status', 'completed')->count() }}</p>
        <p><strong>Pending Orders:</strong> {{ $order->where('status', 'pending')->count() }}</p>
        <p><strong>Canceled Orders:</strong> {{ $order->where('status', 'canceled')->count() }}</p>
    </div>
    </div>

</body>

</html>