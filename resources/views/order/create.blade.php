<x-app-layout>
    <div class="container mx-auto px-4 py-8" style="margin-top: 60px;">
        <form action="{{ route('orders.store') }}" method="POST" id="orderForm" enctype="multipart/form-data">
            @csrf
            <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
                <!-- Payment and Shipping Section -->
                <div class="col-span-1 md:col-span-2 space-y-6">
                    <!-- Payment Method Section -->
                    <div class="p-6 border rounded-lg shadow-md bg-white">
                        <h2 class="text-lg font-semibold mb-4">Payment Method</h2>
                        <select name="payment_method_id" id="payment_method_id" required
                            class="block w-full mt-1 border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring focus:ring-indigo-200 focus:ring-opacity-50">
                            @foreach ($paymentMethods as $method)
                                <option value="{{ $method->id }}">
                                    {{ $method->type_payment }}
                                </option>
                            @endforeach
                        </select>
                        @error('payment_method_id')
                            <span class="text-red-500 text-sm">{{ $message }}</span>
                        @enderror
                    </div>

                    <!-- Shipping Details Section -->
                    <div class="p-6 border rounded-lg shadow-md bg-white">
                        <h2 class="text-lg font-semibold mb-4">Shipping Details</h2>
                        <div class="mb-4">
                            <label for="origin" class="block text-sm font-medium text-gray-700">Asal</label>
                            <input type="text"
                                class="block w-full mt-1 border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring focus:ring-indigo-200 focus:ring-opacity-50"
                                id="origin" name="origin" value="{{ $alamatToko }}" required readonly>
                            @error('alamat')
                                <span class="text-red-500 text-sm">{{ $message }}</span>
                            @enderror
                        </div>

                        <div class="mb-4">
                            <label for="destination" class="block text-sm font-medium text-gray-700">Tujuan</label>
                            <select
                                class="block w-full mt-1 border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring focus:ring-indigo-200 focus:ring-opacity-50"
                                id="destination" name="destination" required>
                                <option value="{{ $alamatUser }}">Pilih Alamat Tujuan</option>
                            </select>
                            @error('destination')
                                <span class="text-red-500 text-sm">{{ $message }}</span>
                            @enderror
                        </div>

                        <div class="mb-4">
                            <label for="weight" class="block text-sm font-medium text-gray-700">Berat (gram)</label>
                            <input type="number"
                                class="block w-full mt-1 border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring focus:ring-indigo-200 focus:ring-opacity-50"
                                id="weight" name="weight" value="{{ $totalWeight }}" required readonly>
                            @error('weight')
                                <span class="text-red-500 text-sm">{{ $message }}</span>
                            @enderror
                        </div>

                        <div class="mb-4">
                            <label for="courier_id" class="block text-sm font-medium text-gray-700">Kurir</label>
                            <select id="courier_id" name="courier_id" required
                                class="block w-full mt-1 border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring focus:ring-indigo-200 focus:ring-opacity-50">
                                <option value="">Pilih Kurir</option>
                                @foreach($couriers as $courier)
                                    <option value="{{ $courier->id }}">
                                        {{ $courier->courier_name }}
                                    </option>
                                @endforeach
                            </select>
                            @error('courier_id')
                                <span class="text-red-500 text-sm">{{ $message }}</span>
                            @enderror
                        </div>
                        <div id="result" class="mt-5"></div>
                    </div>
                </div>

                <!-- Order Summary Section -->
                <div class="col-span-1 space-y-6">
                    <!-- Order Items Section -->
                    <div class="p-6 border rounded-lg shadow-md bg-white">
                        <h2 class="text-lg font-semibold mb-4">Order Item</h2>
                        @php $totalPrice = 0; @endphp
                        @foreach ($cartItems as $item)
                            <div class="mb-2">
                                <p class="font-medium">{{ $item->product->name }}</p>
                                <p class="text-sm text-gray-600">Varian: {{ $item->varian }}</p>
                                <p class="text-sm text-gray-600">{{ $item->quantity }} x Rp.
                                    {{ number_format($item->product->price, 0, ',', '.') }}
                                </p>
                            </div>
                            @php    $totalPrice += $item->quantity * $item->product->price; @endphp
                        @endforeach
                    </div>

                    <!-- Shipping Price Details Section -->
                    <div class="p-6 border rounded-lg shadow-md bg-white">
                        <h2 class="text-lg font-semibold mb-4">Detail Harga</h2>
                        <div id="selectedShippingDetails">
                            <p>Total Harga Item: Rp {{ number_format($totalPrice, 0, ',', '.') }}</p>
                            <p>Biaya Pengiriman: Rp {{ number_format($courier->shippingCost, 0, ',', '.') }}</p>
                            @php    $GrandTotal = $totalPrice + $courier->shippingCost; @endphp
                            <p>Grand Total: Rp. {{ number_format($GrandTotal, 0, ',', '.') }}</p>
                        </div>
                    </div>
                    <input type="hidden" name="alamat" value="{{ $alamatUser }}">
                    <input type="hidden" name="selected_shipping_service" id="selected_shipping_service">
                    <input type="hidden" name="selected_shipping_cost" id="selected_shipping_cost">
                    <input type="hidden" name="selected_shipping_etd" id="selected_shipping_etd">
                    <button type="submit" id="placeOrderButton"
                        class="w-full bg-green-500 hover:bg-green-700 text-white font-bold py-2 px-4 rounded mt-4">Place
                        Order</button>
                    <button type="button" id="pay-button"
                        class="w-full bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded mt-4"
                        style="display:none;">
                        Bayar
                    </button>
                </div>
            </div>
        </form>
    </div>

    <script src="https://app.sandbox.midtrans.com/snap/snap.js"
        data-client-key="SB-Mid-client-NVN2wBNVj3wWvs7N"></script>
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            fetchAlamatToko('#origin');
            fetchAlamatUser('#destination');

            document.getElementById('origin').addEventListener('change', autoCheckOngkir);
            document.getElementById('destination').addEventListener('change', autoCheckOngkir);
            document.getElementById('weight').addEventListener('input', autoCheckOngkir);
            document.getElementById('courier_id').addEventListener('change', autoCheckOngkir);

            document.getElementById('payment_method_id').addEventListener('change', function () {
                var paymentMethodId = this.value;
                var placeOrderButton = document.getElementById('placeOrderButton');
                var payButton = document.getElementById('pay-button');

                if (paymentMethodId === '2') {
                    placeOrderButton.style.display = 'none';
                    payButton.style.display = 'block';
                } else {
                    placeOrderButton.style.display = 'block';
                    payButton.style.display = 'none';
                }
            });

            document.getElementById('pay-button').onclick = function () {
                snap.pay('<?=$snapToken?>', {
                    onSuccess: function (result) {
                        submitOrder(result);
                        window.location.href = '/order/thankyou';
                    },
                    onPending: function (result) {
                        submitOrder(result);
                        window.location.href = '/order/thankyou';
                    },
                    onError: function (result) {
                        console.error('Payment Error:', result);
                        window.location.href = '/dashboard';
                    }
                });
            };

            function submitOrder(result) {
                const formData = new FormData(document.getElementById('orderForm'));
                // formData.append('paymentResult', JSON.stringify(result));

                fetch('/orders', {
                    method: 'POST',
                    headers: {
                        'X-CSRF-TOKEN': '{{ csrf_token() }}'
                    },
                    body: formData
                }).then(response => response.json())
                    .then(data => {
                        console.log('Response Data:', data);
                    })
                    .catch((error) => {
                        console.error('Error:', error);
                    });
            }

            function fetchAlamatToko(selectId) {
                fetch('/alamat-toko')
                    .then(response => response.json())
                    .then(data => {
                        const select = document.querySelector(selectId);
                        data.forEach(alamat => {
                            const option = document.createElement('option');
                            option.value = alamat.city_id;
                            option.textContent = `${alamat.nama_toko} - ${alamat.alamat}`;
                            select.appendChild(option);
                        });
                    });
            }

            function fetchAlamatUser(selectId) {
                fetch('/alamat-user')
                    .then(response => response.json())
                    .then(data => {
                        const select = document.querySelector(selectId);
                        data.forEach(alamat => {
                            const option = document.createElement('option');
                            option.value = alamat.city_id;
                            option.textContent = `${alamat.alamat}`;
                            select.appendChild(option);
                        });
                    });
            }

            function autoCheckOngkir() {
                const courierSelect = document.getElementById('courier_id');
                const selectedCourier = courierSelect.options[courierSelect.selectedIndex];
                const requiresApi = selectedCourier.getAttribute('data-requires-api');

                if (requiresApi == '1') {
                    checkOngkir();
                }
            }

            function checkOngkir() {
                const origin = document.getElementById('origin').value;
                const destination = document.getElementById('destination').value;
                const weight = document.getElementById('weight').value;
                const courier_id = document.getElementById('courier_id').value;

                fetch(`/api/cek-ongkir?origin=${origin}&destination=${destination}&weight=${weight}&courier_id=${courier_id}`)
                    .then(response => response.json())
                    .then(data => {
                        const resultDiv = document.getElementById('result');
                        resultDiv.innerHTML = '';

                        if (data.success) {
                            data.options.forEach(option => {
                                const button = document.createElement('button');
                                button.textContent = `${option.service} - Rp. ${option.cost} - ${option.etd} hari`;
                                button.classList.add('bg-blue-500', 'hover:bg-blue-700', 'text-white', 'font-bold', 'py-2', 'px-4', 'rounded', 'mt-2', 'block', 'w-full');
                                button.addEventListener('click', () => {
                                    selectShipping(option.service, option.cost, option.etd);
                                });
                                resultDiv.appendChild(button);
                            });
                        } else {
                            resultDiv.textContent = 'Gagal memeriksa ongkir. Silakan coba lagi.';
                        }
                    });
            }

            function selectShipping(service, cost, etd) {
                const selectedShippingServiceInput = document.getElementById('selected_shipping_service');
                const selectedShippingCostInput = document.getElementById('selected_shipping_cost');
                const selectedShippingEtdInput = document.getElementById('selected_shipping_etd');

                selectedShippingServiceInput.value = service;
                selectedShippingCostInput.value = cost;
                selectedShippingEtdInput.value = etd;

                const totalPrice = {{ $totalPrice }};
                const grandTotal = totalPrice + parseInt(cost);

                const selectedShippingDetailsDiv = document.getElementById('selectedShippingDetails');
                selectedShippingDetailsDiv.innerHTML = `
                <p>Total Harga Item: Rp. ${totalPrice.toLocaleString()}</p>
                <p>Biaya Pengiriman: Rp. ${parseInt(cost).toLocaleString()}</p>
                <p>Grand Total: Rp. ${grandTotal.toLocaleString()}</p>
            `;
            }
        });
    </script>
</x-app-layout>