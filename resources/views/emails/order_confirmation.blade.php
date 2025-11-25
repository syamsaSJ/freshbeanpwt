<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Confirmation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 600px;
            margin: 20px auto;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }
        .header {
            background-color: #007bff;
            color: #ffffff;
            padding: 10px;
            text-align: center;
            border-radius: 8px 8px 0 0;
        }
        .content {
            padding: 20px;
        }
        .content h2 {
            color: #333333;
        }
        .order-details, .shipping-details, .payment-details, .order-items {
            margin-bottom: 20px;
            padding: 10px;
            background-color: #f1f1f1;
            border-radius: 8px;
        }
        .order-details table, .shipping-details table, .payment-details table, .order-items table {
            width: 100%;
            border-collapse: collapse;
        }
        .order-details th, .shipping-details th, .payment-details th, .order-items th,
        .order-details td, .shipping-details td, .payment-details td, .order-items td {
            padding: 8px;
            border: 1px solid #dddddd;
            text-align: left;
        }
        .footer {
            text-align: center;
            padding: 10px;
            color: #666666;
        }
        .footer a {
            color: #007bff;
            text-decoration: none;
        }
        @media only screen and (max-width: 600px) {
            .container {
                width: 100%;
                padding: 10px;
            }
            .order-details table, .shipping-details table, .payment-details table, .order-items table {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>Order Confirmation</h1>
        </div>
        <div class="content">
            <h2>Order Details</h2>
            <div class="order-details">
                <table>
                    <tr>
                        <th>Order ID</th>
                        <td>{{ $order->id }}</td>
                    </tr>
                    <tr>
                        <th>Status</th>
                        <td>{{ $order->status }}</td>
                    </tr>
                    <tr>
                        <th>Total Price</th>
                        <td>Rp{{ number_format($order->total_price, 2) }}</td>
                    </tr>
                    <tr>
                        <th>Grand Total</th>
                        <td>Rp{{ number_format($order->grand_total, 2) }}</td>
                    </tr>
                </table>
            </div>

            @if ($orderShipping)
                <h2>Shipping Details</h2>
                <div class="shipping-details">
                    <table>
                        <tr>
                            <th>Courier</th>
                            <td>{{ $orderShipping->courier_id ?? 'N/A' }}</td>
                        </tr>
                        <tr>
                            <th>Shipping Address</th>
                            <td>{{ $orderShipping->shipping_address }}</td>
                        </tr>
                        <tr>
                            <th>Shipping Cost</th>
                            <td>Rp{{ number_format($orderShipping->shipping_cost, 2) }}</td>
                        </tr>
                        <tr>
                            <th>Service</th>
                            <td>{{ $orderShipping->selected_shipping_service }}</td>
                        </tr>
                        <tr>
                            <th>ETD</th>
                            <td>{{ $orderShipping->selected_shipping_etd }}</td>
                        </tr>
                    </table>
                </div>
            @endif

            <h2>Order Items</h2>
            <div class="order-items">
                <table>
                    <tr>
                        <th>Product</th>
                        <th>Variant</th>
                        <th>Quantity</th>
                        <th>Price</th>
                        <th>Total</th>
                    </tr>
                    @foreach ($orderItems as $item)
                        <tr>
                            <td>{{ $item->product->name }}</td>
                            <td>{{ $item->varian }}</td>
                            <td>{{ $item->quantity }}</td>
                            <td>Rp{{ number_format($item->price, 2) }}</td>
                            <td>Rp{{ number_format($item->total, 2) }}</td>
                        </tr>
                    @endforeach
                </table>
            </div>

            <h2>Payment Details</h2>
            <div class="payment-details">
                <table>
                    <tr>
                        <th>Payment Method</th>
                        <td>{{ $orderPayment->payment_method_id }}</td>
                    </tr>
                    <tr>
                        <th>Payment Status</th>
                        <td>{{ $orderPayment->payment_status }}</td>
                    </tr>
                    <tr>
                        <th>Amount</th>
                        <td>Rp{{ number_format($orderPayment->amount, 2) }}</td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="footer">
            <p>Thank you for shopping with us!</p>
            <p>If you have any questions, feel free to <a href="mailto:support@example.com">contact us</a>.</p>
        </div>
    </div>
</body>
</html>
