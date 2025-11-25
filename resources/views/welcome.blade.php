<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>{{ config('app.name', 'Toko Suplier Biji Kopi') }}</title>

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=figtree:400,500,600&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
        crossorigin="anonymous">

    <!-- Scripts -->
    @vite(['resources/css/app.css', 'resources/js/app.js'])

    <style>
        body {
            background-color: #EAFDCF;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .logo img {
            width: 50px;
        }

        .hero {
            position: relative;
            text-align: center;
            overflow: hidden;
            padding: 100px 20px;
            color: white;
            margin-bottom: 40px;
        }

        .hero::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url('images/MimosaCoffeeKitchen3.png') no-repeat center center/cover;
            filter: blur(2px);
            /* Sesuaikan nilai blur sesuai kebutuhan */
            z-index: -1;
            /* Agar gambar blur tidak menutupi konten lainnya */
        }

        .hero-content {
            position: relative;
            z-index: 1;
            /* Agar konten berada di atas gambar blur */
        }

        .hero h1 {
            font-size: 2.5rem;
            margin-bottom: 20px;
        }

        .hero p {
            font-size: 1.2rem;
            margin-bottom: 20px;
        }

        .hero .selengkapnya {
            border: 2px solid #EAFDCF;
            border-color: #333;
        }

        .hero .shopnow {
            background-color: #333;
            color: white;
        }

        .hero .selengkapnya:hover {
            background-color: #595959;
        }

        .hero .shopnow:hover {
            background-color: #000;
        }

        .section {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        .section h2 {
            text-align: center;
            margin-bottom: 20px;
            font-size: 2rem;
        }

        .products {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
        }

        .productsme {
            display: grid;
            grid-template-columns: repeat(5, 1fr);
            gap: 20px;
        }

        .product-card-me {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            text-align: center;
            transition: transform 0.3s ease;
            cursor: pointer;
        }

        .product-card-me:hover {
            transform: translateY(-5px);
        }

        .product-card-me img {
            width: auto;
            height: auto;
            border-radius: 10px;
            object-fit: cover;
        }

        .product-card-me h3 {
            margin-top: 10px;
            text-align: left;
            font-size: large;
        }

        .product-card-me p {
            text-align: left;
            font-size: small;
        }

        .product-card-me .price {
            color: #bfa34b;
            margin: 10px 0;
            font-weight: bold;
            text-align: left;
            font-size: small;
        }

        .product-card {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            text-align: center;
            transition: transform 0.3s ease;
            cursor: pointer;
        }

        .product-card:hover {
            transform: translateY(-5px);
        }

        .product-card img {
            width: auto;
            height: auto;
            border-radius: 10px;
            object-fit: cover;
        }

        .first-product-card {
            grid-column: span 2;
            grid-row: span 2;

        }

        .first-product-card img {
            width: 100%;
            height: 86.5%;
        }

        .product-card h3 {
            margin: 10px 0;
            font-size: 1.5rem;
            text-align: left;
        }

        .product-card p {
            text-align: left;
        }

        .product-card .price {
            color: #bfa34b;
            font-size: 1.2rem;
            margin: 10px 0;
            font-weight: bold;
            text-align: left;
        }

        .view-more {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-top: 20px;
        }

        .view-more h2 {
            flex: 1;
            text-align: start;
        }

        .view-more a {
            text-decoration: none;
            color: #000000;
            padding: 10px 20px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
            font-weight: bold;
        }

        .view-more a:hover {
            color: #8e6e3b;
        }

        .about-us {
            display: flex;
            align-items: center;
            gap: 20px;
            flex-wrap: wrap;
            /* Enable wrapping for smaller screens */
        }

        .about-us-image,
        .about-us-text {
            flex: 1;
        }

        .about-us-text h2 {
            text-align: start;
        }

        .about-us-img {
            border-radius: 10px;
            width: 100%;
            max-width: 100%;
            height: auto;
            max-height: 400px;
            /* Ensure image does not get too large */
            object-fit: cover;
        }

        @media (max-width: 1024px) {
            .products {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media (max-width: 768px) {
            .products {
                grid-template-columns: 1fr;
            }

            .first-product-card {
                grid-column: span 1;
                grid-row: span 1;
            }

            .productsme {
                grid-template-columns: repeat(1, 1fr);
                /* Adjust grid to 2 columns on smaller screens */
            }

            .about-us {
                flex-direction: column;
                /* Stack items vertically on smaller screens */
            }

            .about-us-text h2 {
                text-align: center;
            }

            .about-us-img {
                max-width: 100%;
                max-height: none;
                /* Remove the max-height restriction on smaller screens */
            }
        }
    </style>
</head>

<body>
    @if (Route::has('login'))
        @auth
            @include('layouts.navigation')
        @else
            @include('layouts.auth')
        @endauth
    @endif

    <div class="hero" style="margin-top: 60px;">
        <h1 class="text-5xl font-bold mb-4">Welcome to Our Store</h1>
        <p class="text-xl mb-8 font-semibold">We sell the best coffee directly from local farmers, along with coffee
            machines and delicious milk coffee drinks.</p>
        <div class="container mx-auto flex justify-center gap-4">
            <button class="py-2 px-4 rounded selengkapnya ">
                <a href="#section">Selengkapnya</a>
            </button>
            <button class="py-2 px-4 rounded shopnow flex items-center">
                <a href="{{ route('products.index') }}">Shop Now</a>
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512" class="h-5 w-5 ml-2">
                    <path fill="#ffffff"
                        d="M310.6 233.4c12.5 12.5 12.5 32.8 0 45.3l-192 192c-12.5 12.5-32.8 12.5-45.3 0s-12.5-32.8 0-45.3L242.7 256 73.4 86.6c-12.5-12.5-12.5-32.8 0-45.3s32.8-12.5 45.3 0l192 192z" />
                </svg>
            </button>
        </div>
    </div>

    <!-- Bagian "Rekomendasi Biji Kopi" -->
    <section class="section">
        <h2 style="text-align: center;">REKOMENDASI BIJI KOPI</h2>
        <div class="products">
            @foreach($rekomendasiProduks->take(5) as $index => $rekomendasiProduk)
                <div class="product-card">
                    <a href="{{ route('products.show', $rekomendasiProduk->product->id) }}">
                        <img src="{{ asset('storage/' . $rekomendasiProduk->product->image) }}"
                            alt="{{ $rekomendasiProduk->product->name }}">
                        <h3>{{ $rekomendasiProduk->product->name }}</h3>
                        <div class="price">Rp {{ $rekomendasiProduk->product->price }}</div>
                    </a>
                </div>
            @endforeach
        </div>
    </section>

    <!-- Bagian "Produk Kami" -->
    <section class="section">
        <div class="view-more">
            <h2>PRODUK KAMI</h2>
            <a href="{{ route('products.index') }}">Lihat semua <i class="fas fa-solid fa-chevron-right"></i></a>
        </div>
        <div class="productsme">
            @foreach($products->take(5) as $product)
                <div class="product-card-me">
                    <a href="{{ route('products.show', $product->id) }}">
                        <img src="{{ asset('storage/' . $product['image']) }}" alt="{{ $product['name'] }}">
                        <h3>{{ $product->name }}</h3>
                        <div class="price">Rp {{ $product->price }}</div>
                    </a>
                </div>
            @endforeach
        </div>
    </section>

    <section class="section">
        <div class="about-us">
            <div class="about-us-text">
                <h2>TENTANG KAMI</h2>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the
                    industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type
                    and
                    scrambled it to make a type specimen book. It has survived not only five centuries, but also the
                    leap into
                    electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the
                    release of
                    Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software
                    like
                    Aldus PageMaker including versions of Lorem Ipsum.</p>
            </div>
            <div class="about-us-image">
                <img src="{{ asset('images/MimosaCoffeeKitchen3.png') }}" alt="Tentang Kami" class="about-us-img">
            </div>
        </div>
    </section>

    @include('layouts.footer')
</body>

</html>