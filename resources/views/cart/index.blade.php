<x-app-layout>
    <style>
        body {
            background-color: #EAFDCF;
            font-family: Arial, sans-serif;
        }

        .container {
            max-width: 1250px;
            margin: 0 auto;
            padding: 20px;
        }

        .breadcrumb {
            margin-bottom: 20px;
            color: #7a7a7a;
        }

        .cart-container {
            display: flex;
            gap: 20px;
        }

        .cart-items {
            flex: 3;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .cart-item {
            display: flex;
            gap: 20px;
            margin-bottom: 20px;
            padding: 15px;
            border-bottom: 1px solid #ddd;
            position: relative;
        }

        .cart-item img {
            width: 100px;
            height: 100px;
            object-fit: cover;
            border-radius: 10px;
        }

        .cart-item-details {
            flex: 1;
        }

        .cart-item-title {
            font-size: 1.2rem;
            font-weight: bold;
        }

        .cart-item-varian {
            font-size: 1rem;
            color: #777;
        }

        .cart-item-price {
            font-size: 1.2rem;
            margin-top: 10px;
        }

        .cart-item-quantity {
            margin-top: 10%;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .cart-item-quantity button {
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

        .cart-item-quantity input {
            width: 50px;
            padding: 5px;
            font-size: 1rem;
            text-align: center;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .remove-btn {
            position: absolute;
            top: 10px;
            right: 10px;
            background: none;
            border: none;
            cursor: pointer;
            color: #e74c3c;
            font-size: 1.2rem;
        }

        .cart-summary {
            flex: 1;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .cart-summary h2 {
            font-size: 1.5rem;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .cart-summary p {
            font-size: 1rem;
            margin-bottom: 10px;
        }

        .cart-summary h6 {
            margin-top: 5px;
            border-top: 2px solid #ddd;
        }

        .cart-summary .total {
            font-size: 1.2rem;
            font-weight: bold;
            margin-top: 20px;
        }

        .cart-summary .checkout-button {
            margin-top: 20px;
            padding: 10px 100px;
            font-size: 1rem;
            text-align: center;
            color: #fff;
            background-color: #333;
            border-radius: 20px;
            text-decoration: none;
            display: inline-block;
        }

        .cart-summary .checkout-button:hover {
            background-color: #000;
        }

        .empty-cart-message {
            text-align: center;
            font-size: 1.2rem;
            color: #333;
            padding: 20px;
        }

        .cart-item-checkbox {
            margin-right: 10px;
        }

        .cart-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .cart-header h1 {
            font-size: 2rem;
            font-weight: bold;
        }

        .cart-header .select-all {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        /* Responsive Styles */
        @media (max-width: 768px) {
            .cart-container {
                flex-direction: column;
            }

            .cart-items {
                margin-bottom: 20px;
            }

            .cart-summary {
                width: 100%;
            }

            .cart-item {
                flex-direction: column;
                align-items: flex-start;
            }

            .cart-item img {
                width: 80px;
                height: 80px;
            }
        }

        @media (max-width: 480px) {
            .cart-summary .checkout-button {
                padding: 10px 20px;
                font-size: 0.9rem;
            }

            .cart-item-quantity input {
                width: 40px;
                font-size: 0.9rem;
            }

            .cart-item-quantity button {
                width: 25px;
                height: 25px;
                font-size: 0.8rem;
            }
        }
    </style>
    <div class="container" style="margin-top: 70px;">
        <div class="breadcrumb">
            <ol class="flex items-center whitespace-nowrap">
                <li class="inline-flex items-center">
                    <a class="flex items-center text-sm text-gray-500 hover:text-blue-600 focus:outline-none focus:text-blue-600"
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
                <li class="inline-flex items-center text-sm font-semibold text-gray-800 truncate" aria-current="page">
                    Cart
                </li>
            </ol>
        </div>
        @if ($isEmpty)
            <div class="empty-cart-message">
                Keranjang Anda Kosong
            </div>
        @else
            <div class="cart-container">
                <div class="cart-items">
                    <div class="cart-header">
                        <h1>Shopping Cart</h1>
                        <div class="select-all">
                            <label for="select-all">Pilih Semua</label>
                            <input type="checkbox" id="select-all">
                        </div>
                    </div>
                    @foreach ($cartItems as $cartItem)
                        <div class="cart-item" data-item-id="{{ $cartItem->id }}">
                            <input type="checkbox" class="cart-item-checkbox" data-item-id="{{ $cartItem->id }}">
                            <img src="{{ asset('storage/' . $cartItem->product->image) }}" alt="{{ $cartItem->product->name }}">
                            <div class="cart-item-details">
                                <div class="cart-item-title">{{ $cartItem->product->name }}</div>
                                <div class="cart-item-varian">{{ $cartItem->varian }}</div>
                                <div class="cart-item-price">Rp. {{ number_format($cartItem->product->price, 0, ',', '.') }}
                                </div>
                            </div>
                            <button type="button" class="remove-btn"
                                onclick="document.getElementById('remove-form-{{ $cartItem->id }}').submit();">
                                <i class="fas fa-trash-alt"></i>
                            </button>
                            <div class="cart-item-quantity">
                                <button type="button" class="quantity-btn" data-action="decrease">-</button>
                                <input type="text" inputmode="numeric" class="quantity-input" value="{{ $cartItem->quantity }}"
                                    min="1" data-cart-item-id="{{ $cartItem->id }}">
                                <button type="button" class="quantity-btn" data-action="increase">+</button>
                            </div>
                            <form id="remove-form-{{ $cartItem->id }}" action="{{ route('cart.remove', $cartItem) }}"
                                method="POST" style="display: none;">
                                @csrf
                                @method('DELETE')
                            </form>
                        </div>
                    @endforeach
                </div>
                <div class="cart-summary">
                    <h2>Order Summary</h2>
                    <div id="summary-products">
                        <!-- Produk yang dipilih akan ditampilkan di sini -->
                    </div>
                    <h6 id="subtotal">Subtotal: Rp. {{ number_format($totalPrice, 0, ',', '.') }}</h6>
                    <a href="{{ route('order.create') }}" class="checkout-button">Checkout</a>
                </div>
            </div>
        @endif
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script> <!-- Font Awesome -->
    <script>
        $(document).ready(function () {
            function updateSubtotal() {
                let subtotal = 0;
                let selectedProducts = '';
                $('.cart-item-checkbox:checked').each(function () {
                    let itemId = $(this).data('item-id');
                    let $cartItem = $('.cart-item[data-item-id="' + itemId + '"]');
                    let price = parseInt($cartItem.find('.cart-item-price').text().replace('Rp. ', '').replace(/\./g, ''));
                    let quantity = parseInt($cartItem.find('.quantity-input').val());
                    let productName = $cartItem.find('.cart-item-title').text();
                    subtotal += price * quantity;

                    selectedProducts += `<p>${productName} x ${quantity} - Rp. ${(price * quantity).toLocaleString('id-ID')}</p>`;
                });
                $('#subtotal').text('Subtotal: Rp. ' + subtotal.toLocaleString('id-ID'));
                $('#summary-products').html(selectedProducts);
            }

            $('#select-all').on('change', function () {
                $('.cart-item-checkbox').prop('checked', this.checked);
                updateSubtotal();
            });

            $('.cart-item-checkbox').on('change', function () {
                updateSubtotal();
            });

            $('.quantity-btn').on('click', function () {
                var $cartItem = $(this).closest('.cart-item');
                var cartItemId = $cartItem.data('item-id');
                var $quantityInput = $cartItem.find('.quantity-input');
                var currentQuantity = parseInt($quantityInput.val());
                var action = $(this).data('action');

                if (action === 'increase') {
                    $quantityInput.val(currentQuantity + 1);
                } else if (action === 'decrease' && currentQuantity > 1) {
                    $quantityInput.val(currentQuantity - 1);
                }

                updateQuantity(cartItemId, $quantityInput.val());
                updateSubtotal();
            });

            $('.quantity-input').on('change', function () {
                var cartItemId = $(this).data('cart-item-id');
                var quantity = $(this).val();
                updateQuantity(cartItemId, quantity);
                updateSubtotal();
            });

            function updateQuantity(cartItemId, quantity) {
                $.ajax({
                    url: '/cart/updateQuantity/' + cartItemId,
                    method: 'POST',
                    data: {
                        _token: '{{ csrf_token() }}',
                        quantity: quantity
                    },
                    success: function (response) {
                        if (response.success) {
                            updateSubtotal();
                        } else {
                            alert(response.message);
                        }
                    },
                    error: function (xhr, status, error) {
                        console.error(xhr.responseText);
                    }
                });
            }
        });
    </script>
</x-app-layout>