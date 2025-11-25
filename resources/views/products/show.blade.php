<x-app-layout>
    <style>
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        .breadcrumb {
            margin-bottom: 20px;
            font-size: 0.9rem;
            color: #7a7a7a;
        }

        .product-detail {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
        }

        .product-detail img {
            max-width: 100%;
            max-height: 400px;
            object-fit: cover;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .product-info {
            flex: 2;
            padding: 20px;
            background-color: #f0f4d7;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .product-info h1 {
            margin-bottom: 10px;
            font-size: 2rem;
            color: #333;
        }

        .product-info p {
            margin-bottom: 10px;
            line-height: 1.6;
            color: #333;
        }

        .product-info .price {
            color: #333;
            font-size: 1.5rem;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .product-info .quantity {
            margin-top: 10px;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .product-info .quantity label {
            font-size: 1rem;
            color: #333;
        }

        .product-info .quantity button {
            width: 30px;
            height: 30px;
            font-size: 1rem;
            text-align: center;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #fff;
            color: #333;
            cursor: pointer;
        }

        .product-info .quantity input {
            width: 50px;
            padding: 5px;
            font-size: 1rem;
            text-align: center;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .product-info .button{
            padding: 10px 274px;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
            font-size: 1rem;
            text-align: center;
            margin-top: 10px;
            border-color: #7a7a7a;
            background-color: #333;
            color: white;
        }

        .product-info .buy-button {
            background-color: #333;
            color: white;
        }

        .product-info .button:hover {
            background-color: #595959;
        }

        .product-info .buy-button:hover {
            background-color: #000;
        }

        .varian label {
            cursor: pointer;
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 5px 15px;
            margin: 0 5px;
            transition: background-color 0.3s ease;
            background-color: #fff;
            color: #333;
        }

        .varian input[type="radio"] {
            display: none;
        }

        .varian input[type="radio"]:checked+label {
            background-color: #333;
            color: white;
        }

        .related-products {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            margin-bottom: 10px;
        }

        .related-products h2 {
            font-size: 2rem;
            margin-top: 20px;
        }

        .relatedproducts-card {
            display: grid;
            grid-template-columns: repeat(5, 1fr);
            gap: 20px;
        }

        .related-products-card {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            text-align: center;
            transition: transform 0.3s ease;
            cursor: pointer;
        }

        .related-products-card:hover {
            transform: translateY(-5px);
        }

        .related-products-card img {
            width: auto;
            height: auto;
            border-radius: 10px;
            object-fit: cover;
        }

        .related-products-card h3 {
            margin-top: 10px;
            text-align: left;
            font-size: large;
        }

        .related-products-card p {
            text-align: left;
            font-size: small;
        }

        .related-products-card .price {
            color: #bfa34b;
            margin: 10px 0;
            font-weight: bold;
            text-align: left;
            font-size: small;
        }

        .products-grid {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
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
            max-width: 100%;
            max-height: 200px;
            object-fit: cover;
            border-radius: 10px;
            margin-bottom: 10px;
        }

        .product-card h3 {
            margin-top: 10px;
            text-align: left;
            font-size: large;
            font-weight: bold;
        }

        .product-card p {
            margin-bottom: 10px;
            color: #333;
            text-align: left;
            font-size: medium;
        }

        .disabled-button {
            background-color: #ddd;
            color: #999;
            cursor: not-allowed;
            border: 1px solid #ccc;
            opacity: 0.6;
            pointer-events: none;
        }

        .disabled-button:hover {
            background-color: #ddd;
            cursor: not-allowed;
            opacity: 0.6;
        }

        /* Sidebar styles */
        /* .sidebar-overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            display: none;
            z-index: 999;
        }

        .sidebar {
            position: fixed;
            right: -100%;
            top: 0;
            width: 300px;
            height: 100%;
            background-color: #fff;
            box-shadow: -2px 0 8px rgba(0, 0, 0, 0.2);
            z-index: 1000;
            padding: 20px;
            display: flex;
            flex-direction: column;
            transition: right 0.3s ease;
        }

        .sidebar-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .sidebar-header h2 {
            margin: 0;
            font-size: 1.5rem;
        }

        .sidebar-content {
            flex-grow: 1;
            margin-top: 20px;
        }

        .sidebar-footer {
            margin-top: auto;
            display: flex;
            justify-content: space-between;
        }

        .sidebar-footer button {
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            border: none;
        }

        .sidebar-footer .continue-btn {
            background-color: #333;
            color: #fff;
        }

        .sidebar-footer .close-btn {
            background-color: #ccc;
            color: #333;
        } */

        /* Active class to show the sidebar */
        /* .sidebar.active {
            right: 0;
        }

        .sidebar-overlay.active {
            display: block;
        } */

        .favorite-button {
            position: absolute;
            right: 100px;
            border: none;
            cursor: pointer;
            transition: color 0.3s ease;
        }

        /* Responsive styles */
        @media (max-width: 768px) {
            .product-detail {
                flex-direction: column;
            }

            .product-info h1 {
                font-size: 1.5rem;
            }

            .product-info .price {
                font-size: 1.2rem;
            }

            .product-info .quantity label {
                font-size: 0.9rem;
            }

            .product-info .quantity input {
                width: 40px;
                padding: 3px;
                font-size: 0.9rem;
            }

            .product-info .button {
                padding: 8px 15px;
                font-size: 0.9rem;
            }

            .products-grid {
                flex-direction: column;
            }

            .product-card {
                max-width: 100%;
            }

            .relatedproducts-card {
                grid-template-columns: repeat(1, 1fr);
                /* Adjust grid to 1 column on smaller screens */
            }
        }

        @media (max-width: 480px) {
            .breadcrumb {
                font-size: 0.7rem;
            }

            .product-info h1 {
                font-size: 1.2rem;
            }

            .product-info .price {
                font-size: 1rem;
            }

            .product-info .quantity label {
                font-size: 0.8rem;
            }

            .product-info .quantity input {
                width: 30px;
                padding: 2px;
                font-size: 0.8rem;
            }

            .product-info .button {
                padding: 5px 10px;
                font-size: 0.8rem;
            }

            .relatedproducts-card {
                grid-template-columns: repeat(2, 1fr);
                /* Adjust grid to 2 columns on smaller screens */
            }
        }
    </style>
    <div class="container" style="margin-top: 70px;">
        <div class="breadcrumb">
            <ol class="flex items-center whitespace-nowrap">
                <li class="inline-flex items-center">
                    <a class="flex items-center text-sm text-gray-500 hover:text-gray-900 focus:outline-none focus:text-gray-900"
                        href="{{ route('dashboard') }}">
                        <svg class="shrink-0 me-3 size-4" xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                            viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                            stroke-linecap="round" stroke-linejoin="round">
                            <path d="m3 9 9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path>
                            <polyline points="9 22 9 12 15 12 15 22"></polyline>
                        </svg>
                        Dashboard
                    </a>
                    <svg class="shrink-0 mx-2 size-4 text-gray-400" xmlns="http://www.w3.org/2000/svg" width="24"
                        height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                        stroke-linecap="round" stroke-linejoin="round">
                        <path d="m9 18 6-6-6-6"></path>
                    </svg>
                </li>
                <li class="inline-flex items-center">
                    <a class="flex items-center text-sm text-gray-500 hover:text-gray-900 focus:outline-none focus:text-gray-900"
                        href="{{ route('products.index') }}">
                        <svg class="shrink-0 me-3 size-4" xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                            viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                            stroke-linecap="round" stroke-linejoin="round">
                            <rect width="7" height="7" x="14" y="3" rx="1"></rect>
                            <path
                                d="M10 21V8a1 1 0 0 0-1-1H4a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1v-5a1 1 0 0 0-1-1H3">
                            </path>
                        </svg>
                        Product
                        <svg class="shrink-0 mx-2 size-4 text-gray-400" xmlns="http://www.w3.org/2000/svg" width="24"
                            height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                            stroke-linecap="round" stroke-linejoin="round">
                            <path d="m9 18 6-6-6-6"></path>
                        </svg>
                    </a>
                </li>
                <li class="inline-flex items-center text-sm font-semibold text-gray-800 truncate" aria-current="page">
                    {{ $product->name }}
                </li>
            </ol>
        </div>
        <div class="product-detail">
            <img src="{{ asset('storage/' . $product->image) }}" alt="{{ $product->name }}">
            <div class="product-info">
                <form id="addToFavorite" action="{{ route('favorites.add', $product->id) }}" method="POST">
                    @csrf
                    <button type="submit"
                        class="favorite-button focus:text-red-700 relative flex items-center px-3 py-2 border border-transparent text-sm leading-4 font-medium rounded-md focus:outline-none transition ease-in-out duration-150">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" stroke-width="1.5"
                            stroke="currentColor" class="h-6 w-6 fill-red-500 hover:fill-red-700" id="favoriteIcon">
                            <path stroke-linecap="round" stroke-linejoin="round"
                                d="M21 8.25c0-2.485-2.099-4.5-4.688-4.5-1.935 0-3.597 1.126-4.312 2.733-.715-1.607-2.377-2.733-4.313-2.733C5.1 3.75 3 5.765 3 8.25c0 7.22 9 12 9 12s9-4.78 9-12Z" />
                        </svg>
                    </button>
                </form>
                <h1>{{ $product->name }}</h1>
                <p class="price">Rp. {{ number_format($product->price, 0, ',', '.') }}</p>
                <p>Category: {{ $product->category->name }}</p>
                <p>Origin: {{ $product->origin->name }}</p>
                <p>Description: {{ $product->description }}</p>
                <div class="varian">
                    <p>Varian</p>
                    @foreach ($product->variants as $varian)
                        <input type="radio" name="varian" value="{{ $varian->name }}" id="varian_{{ $varian->id }}">
                        <label for="varian_{{ $varian->id }}">{{ $varian->name }}</label>
                    @endforeach
                </div>
                <div class="quantity">
                    <label for="quantity">Jumlah:</label>
                    <button type="button" onclick="updateQuantity(-1)" id="decrementBtn">-</button>
                    <input type="text" inputmode="numeric" id="quantity" name="quantity" value="1" min="1"
                        onchange="updateHiddenQuantity()">
                    <button type="button" onclick="updateQuantity(1)" id="incrementBtn">+</button>
                    @foreach ($product->stokbrng as $stokBrng)
                        <p>Stok Tersedia: <span id="stockQuantity">{{ $stokBrng->stokTersedia }}</span>g</p>
                    @endforeach
                </div>
                <div class="actions">
                    <form id="addToCartForm" action="{{ route('cart.add', $product) }}" method="POST">
                        @csrf
                        <input type="hidden" id="hiddenQuantity" name="quantity" value="1">
                        <input type="hidden" id="hiddenRoast" name="varian" value="">
                        <button type="submit" class="button" id="addToCartBtn">Tambah ke Keranjang</button>
                    </form>
                    {{-- <a href="#" class="buy-button" id="buyNowBtn">Beli Langsung</a> --}}
                </div>
                <div id="message" style="display:none; color: green;">Product added to cart!</div>
            </div>
        </div>

        <!-- Section Review -->
        <div class="p-6 rounded-lg border border-gray-300 mt-4">
            <h2 class="text-2xl font-semibold text-gray-800 mb-4">Customer Reviews</h2>
            @foreach ($product->reviews as $review)
                <div class="review border-b border-gray-200 pb-4 mb-4">
                    <div class="flex items-center mb-2">
                        <div class="flex-shrink-0">
                            <!-- Placeholder for user avatar -->
                            <div class="w-10 h-10 rounded-full bg-gray-200 flex items-center justify-center">
                                <span
                                    class="text-xl font-bold text-gray-500">{{ strtoupper(substr($review->user->name, 0, 1)) }}</span>
                            </div>
                        </div>
                        <div class="ml-4">
                            <strong class="text-gray-700">{{ $review->user->name }}</strong>
                            <!-- Tampilkan nama pengguna -->
                            <div class="flex items-center">
                                <!-- Display rating using star icons -->
                                @for ($i = 1; $i <= 5; $i++)
                                    @if ($i <= $review->rating)
                                        <svg class="w-4 h-4 text-yellow-500 fill-current" xmlns="http://www.w3.org/2000/svg"
                                            viewBox="0 0 20 20" fill="currentColor">
                                            <path
                                                d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.286 3.958a1 1 0 00.95.69h4.15c.969 0 1.371 1.24.588 1.81l-3.357 2.444a1 1 0 00-.364 1.118l1.287 3.958c.3.921-.755 1.688-1.54 1.118l-3.356-2.443a1 1 0 00-1.176 0L5.326 16.5c-.784.57-1.838-.197-1.539-1.118l1.286-3.958a1 1 0 00-.364-1.118L1.353 9.385c-.784-.57-.38-1.81.588-1.81h4.15a1 1 0 00.95-.69l1.286-3.958z" />
                                        </svg>
                                    @else
                                        <svg class="w-4 h-4 text-gray-300 fill-current" xmlns="http://www.w3.org/2000/svg"
                                            viewBox="0 0 20 20" fill="currentColor">
                                            <path
                                                d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.286 3.958a1 1 0 00.95.69h4.15c.969 0 1.371 1.24.588 1.81l-3.357 2.444a1 1 0 00-.364 1.118l1.287 3.958c.3.921-.755 1.688-1.54 1.118l-3.356-2.443a1 1 0 00-1.176 0L5.326 16.5c-.784.57-1.838-.197-1.539-1.118l1.286-3.958a1 1 0 00-.364-1.118L1.353 9.385c-.784-.57-.38-1.81.588-1.81h4.15a1 1 0 00.95-.69l1.286-3.958z" />
                                        </svg>
                                    @endif
                                @endfor
                            </div>
                        </div>
                    </div>
                    <p class="text-gray-600">{{ $review->review }}</p>
                </div>
            @endforeach
            @if($product->reviews->isEmpty())
                <p class="text-gray-500">No reviews yet. Be the first to review this product!</p>
            @endif
        </div>

        <!-- Related Products Section -->
        <section class="related-products">
            <h2>Related Products</h2>
            <div class="relatedproducts-card">
                @foreach($relatedProducts->take(10) as $relatedProduct)
                    <div class="related-products-card">
                        <a href="{{ route('products.show', $relatedProduct->id) }}}">
                            <img src="{{ asset('storage/' . $product['image']) }}" alt="{{ $product['name'] }}">
                            <h3>{{ $relatedProduct->name }}</h3>
                            <div class="price">Rp {{ number_format($relatedProduct->price, 0, ',', '.') }}</div>
                        </a>
                    </div>
                @endforeach
            </div>
        </section>
        <!-- End of Related Products Section -->

        <!-- Sidebar Overlay -->
        {{-- <div class="sidebar-overlay" id="sidebarOverlay"></div> --}}

        <!-- Sidebar -->
        {{-- <div class="sidebar" id="sidebar">
            <div class="sidebar-header">
                <h2>Order Summary</h2>
                <button id="closeSidebarBtn">&times;</button>
            </div>
            <div class="sidebar-content">
                <p>Product: {{ $product->name }}</p>
                <p>Varian: <span id="selectedVarian"></span></p>
                <p>Jumlah: <span id="selectedQuantity"></span></p>
                <p>Price: Rp. {{ number_format($product->price, 0, ',', '.') }}</p>
            </div>
            <div class="sidebar-footer">
                <form id="buyNowForm" action="{{ route('order.buynow', $product->id) }}" method="GET">
                    @csrf
                    <input type="hidden" name="selected_varian" id="hiddenVarian">
                    <input type="hidden" name="selected_quantity" id="hiddenQuantity" value="1">
                    <button type="submit" class="buy-button" id="buyNowBtn">Buy Now</button>
                </form>
            </div>
        </div> --}}
    </div>

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
        function updateHiddenQuantity() {
            var quantityInput = document.getElementById('quantity');
            var hiddenQuantityInput = document.getElementById('hiddenQuantity');
            hiddenQuantityInput.value = quantityInput.value;
        }

        function updateQuantity(amount) {
            var quantityInput = document.getElementById('quantity');
            var quantityValue = parseInt(quantityInput.value);
            const stockQuantity = parseInt(document.getElementById('stockQuantity').textContent);

            if (!isNaN(quantityValue) && quantityValue + amount > 0 && quantityValue + amount <= stockQuantity) {
                quantityInput.value = quantityValue + amount;
                updateHiddenQuantity(); // Call the function after it's defined
            }
        }

        document.addEventListener('DOMContentLoaded', function () {
            const stockQuantity = parseInt(document.getElementById('stockQuantity').textContent);
            const addToCartBtn = document.getElementById('addToCartBtn');
            const buyNowBtn = document.getElementById('buyNowBtn');
            const incrementBtn = document.getElementById('incrementBtn');
            const decrementBtn = document.getElementById('decrementBtn');
            const quantityInput = document.getElementById('quantity');
            const varianInputs = document.querySelectorAll('input[name="varian"]');
            const sidebar = document.getElementById('sidebar');
            const sidebarOverlay = document.getElementById('sidebarOverlay');
            const closeSidebarBtn = document.getElementById('closeSidebarBtn');

            if (stockQuantity <= 0) {
                addToCartBtn.classList.add('disabled-button');
                addToCartBtn.disabled = true;
                buyNowBtn.classList.add('disabled-button');
                buyNowBtn.style.pointerEvents = 'none';
                incrementBtn.classList.add('disabled-button');
                incrementBtn.disabled = true;
                decrementBtn.classList.add('disabled-button');
                decrementBtn.disabled = true;
                quantityInput.disabled = true;
                varianInputs.forEach(input => {
                    const label = document.querySelector(`label[for="${input.id}"]`);
                    input.disabled = true;
                    label.classList.add('disabled-button');
                });
            }

            function updateQuantity(amount) {
                var quantityValue = parseInt(quantityInput.value);
                if (!isNaN(quantityValue) && quantityValue + amount > 0 && quantityValue + amount <= stockQuantity) {
                    quantityInput.value = quantityValue + amount;
                    updateHiddenQuantity();
                }
            }

            function updateHiddenQuantity() {
                var hiddenQuantityInput = document.getElementById('hiddenQuantity');
                hiddenQuantityInput.value = quantityInput.value;
            }

            document.querySelectorAll('input[name="varian"]').forEach((input) => {
                input.addEventListener('change', function () {
                    updateRoast(this.value);
                });
            });

            function updateRoast(value) {
                var hiddenRoastInput = document.getElementById('hiddenRoast');
                hiddenRoastInput.value = value;
            }

            function updateVarian(value) {
                var hiddenVarianInput = document.getElementById('hiddenVarian');
                hiddenVarianInput.value = value;
            }

            // buyNowBtn.addEventListener('click', function (event) {
            //     event.preventDefault();

            //     const selectedVarian = document.querySelector('input[name="varian"]:checked')?.nextElementSibling.textContent || 'None';
            //     const selectedQuantity = document.getElementById('quantity').value;

            //     document.getElementById('selectedVarian').textContent = selectedVarian;
            //     document.getElementById('selectedQuantity').textContent = selectedQuantity;

            //     // Update hidden inputs
            //     document.getElementById('hiddenVarian').value = selectedVarian;
            //     document.getElementById('hiddenQuantity').value = selectedQuantity;

            //     sidebar.classList.add('active');
            //     sidebarOverlay.classList.add('active');
            //     // Submit the form
            //     // document.getElementById('buyNowForm').submit();
            // });

            // Event untuk menutup sidebar
            // closeSidebarBtn.addEventListener('click', function () {
            //     sidebar.classList.remove('active');
            //     sidebarOverlay.classList.remove('active');
            // });

            // Event untuk menutup sidebar saat overlay diklik
            // sidebarOverlay.addEventListener('click', function () {
            //     sidebar.classList.remove('active');
            //     sidebarOverlay.classList.remove('active');
            // });

            document.getElementById('addToCartForm').addEventListener('submit', function (event) {
                event.preventDefault();
                var form = event.target;
                var formData = new FormData(form);

                fetch(form.action, {
                    method: 'POST',
                    headers: {
                        'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').getAttribute('content')
                    },
                    body: formData
                })
                    .then(response => response.json())
                    .then(data => {
                        if (data.success) {
                            Swal.fire({
                                title: 'Success!',
                                text: 'Product added to cart',
                                icon: 'success',
                                confirmButtonText: 'OK'
                            });

                            // Update the cart item count
                            let cartCountElement = document.querySelector('.cart-count');
                            cartCountElement.textContent = data.cartItemCount;
                        } else {
                            Swal.fire({
                                title: 'Error!',
                                text: 'There was an error adding the product to the cart',
                                icon: 'error',
                                confirmButtonText: 'OK'
                            });
                        }
                    })
                    .catch(error => console.error('Error:', error));
            });


            const productId = {{ $product->id }};
            fetch(`/favorites/check/${productId}`)
                .then(response => response.json())
                .then(data => {
                    const favoriteIcon = document.getElementById('favoriteIcon');
                    if (data.isFavorite) {
                        favoriteIcon.style.fill = 'red';
                    } else {
                        favoriteIcon.style.fill = 'transparent'; // Atur warna default
                    }
                });


            document.getElementById('addToFavorite').addEventListener('submit', function (event) {
                event.preventDefault(); // Prevent the default form submission
                var form = event.target;
                var formData = new FormData(form);

                fetch(form.action, {
                    method: 'POST',
                    headers: {
                        'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').getAttribute('content')
                    },
                    body: formData
                })
                    .then(response => response.json())
                    .then(data => {
                        if (data.success) {
                            Swal.fire({
                                title: 'Success!',
                                text: data.message, // Display the success message from the server
                                icon: 'success',
                                confirmButtonText: 'OK'
                            });

                            // Change button color to red
                            document.getElementById('favoriteIcon').style.fill = 'red';
                        } else {
                            Swal.fire({
                                title: 'Error!',
                                text: data.message, // Display the error message from the server
                                icon: 'error',
                                confirmButtonText: 'OK'
                            });
                        }
                    })
                    .catch(error => {
                        console.error('Error:', error);
                        Swal.fire({
                            title: 'Error!',
                            text: 'There was an unexpected error.',
                            icon: 'error',
                            confirmButtonText: 'OK'
                        });
                    });
            });

        });
    </script>
</x-app-layout>