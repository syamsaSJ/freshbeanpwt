<x-app-layout>
    <x-slot name="header"></x-slot>
    <style>
        .center-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100%;
            margin-top: 10%;
        }

        .thankyou-container {
            text-align: center;
            background: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 90%;
        }

        .thankyou-container h1 {
            margin-bottom: 20px;
            font-size: 24px;
            color: #28a745;
        }

        .thankyou-container p {
            margin-bottom: 30px;
            font-size: 18px;
            color: #6c757d;
        }

        .thankyou-container a {
            display: inline-block;
            margin: 10px 5px;
            padding: 10px 20px;
            font-size: 16px;
            text-decoration: none;
            color: #fff;
            background-color: #007bff;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .thankyou-container a:hover {
            background-color: #0056b3;
        }

        .thankyou-container a.secondary {
            background-color: #6c757d;
        }

        .thankyou-container a.secondary:hover {
            background-color: #5a6268;
        }
    </style>

    <div class="center-container">
        <div class="thankyou-container">
            <h1>Thank You for Your Order!</h1>
            <p>Your order has been placed successfully!</p>
            <a href="{{ route('dashboard') }}" class="btn">Kembali</a>
            <a href="{{ route('products.index') }}" class="btn secondary">Belanja lagi</a>
        </div>
    </div>

    <x-slot name="footer"></x-slot>
</x-app-layout>