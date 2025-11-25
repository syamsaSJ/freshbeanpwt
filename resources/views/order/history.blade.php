<x-app-layout>
    <style>
    .container {
        max-width: 1200px;
        margin: 0 auto;
        padding: 20px;
        margin-top: 70px;
    }

    .order-list {
        margin-top: 20px;
    }

    .order-item {
        background: #ffffff;
        border-radius: 8px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        margin-bottom: 20px;
        padding: 15px;
    }

    .order-item h2 {
        margin: 0;
        font-size: 20px;
        color: #333;
    }

    .order-items {
        margin-top: 15px;
    }

    .order-items table {
        width: 100%;
        border-collapse: collapse;
    }

    .order-items th,
    .order-items td {
        padding: 10px;
        border: 1px solid #e0e0e0;
        text-align: left;
    }

    .order-items th {
        background-color: #f9f9f9;
        font-weight: bold;
    }

    .order-items td {
        color: #555;
    }

    .order-item p {
        margin: 5px 0;
        color: #666;
    }

    @media (max-width: 768px) {

        .order-details table,
        .order-items table {
            font-size: 14px;
        }
    }
    </style>

    <div class="container">
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
                <li class="inline-flex items-center text-sm font-semibold text-gray-800 truncate" aria-current="page">
                    History Pembelian
                </li>
            </ol>
        </div>

        <x-filament::tabs label="Order Status Tabs" class="mt-5 justify-center">
            <!-- 'All' Tab -->
            <x-filament::tabs.item :active="$status === 'all'" wire:click="$set('activeTab', 'all')"
                href="{{ route('order.history', ['status' => 'all']) }}" tag="a" icon="heroicon-m-squares-2x2"
                icon-position="before">
                All
            </x-filament::tabs.item>

            <!-- 'Pending' Tab -->
            <x-filament::tabs.item :active="$status === 'pending'" wire:click="$set('activeTab', 'pending')"
                href="{{ route('order.history', ['status' => 'pending']) }}" tag="a" icon="heroicon-m-clock"
                icon-position="before">
                Pending
            </x-filament::tabs.item>

            <!-- 'Diproses' Tab -->
            <x-filament::tabs.item :active="$status === 'Diproses'" wire:click="$set('activeTab', 'Diproses')"
                href="{{ route('order.history', ['status' => 'Diproses']) }}" tag="a" icon="heroicon-m-inbox-arrow-down"
                icon-position="before">
                Diproses
            </x-filament::tabs.item>

            <!-- 'Dikirim' Tab -->
            <x-filament::tabs.item :active="$status === 'Dikirim'" wire:click="$set('activeTab', 'Dikirim')"
                href="{{ route('order.history', ['status' => 'Dikirim']) }}" tag="a" icon="heroicon-m-truck"
                icon-position="before">
                Dikirim
            </x-filament::tabs.item>

            <!-- 'Completed' Tab -->
            <x-filament::tabs.item :active="$status === 'completed'" wire:click="$set('activeTab', 'completed')"
                href="{{ route('order.history', ['status' => 'completed']) }}" tag="a" icon="heroicon-m-check-badge"
                icon-position="before">
                Completed
            </x-filament::tabs.item>

            <!-- 'Cancelled' Tab -->
            <x-filament::tabs.item :active="$status === 'canceled'" wire:click="$set('activeTab', 'canceled')"
                href="{{ route('order.history', ['status' => 'canceled']) }}" tag="a" icon="heroicon-m-x-circle"
                icon-position="before">
                Cancelled
            </x-filament::tabs.item>
        </x-filament::tabs>

        <div class="order-list">
            @forelse ($orders as $order)
            <div class="order-item dark:bg-gray-500">
                <div class="order-header p-3 bg-white rounded-lg flex justify-between">
                    <div class="flex flex-col">
                        <p class="text-sm text-gray-600 mb-4">
                            <span class="font-semibold">{{ $order->created_at->format('d M Y, H:i') }}</span>
                            <span class="inline-flex items-center px-3 py-1 text-sm font-medium rounded-md shadow-md
                                                @if($order->status == 'pending') bg-gray-300 text-gray-700 
                                                @elseif($order->status == 'Diproses') bg-blue-100 text-blue-700 
                                                @elseif($order->status == 'Dikirim') bg-purple-100 text-purple-700 
                                                @elseif($order->status == 'completed') bg-green-100 text-green-700 
                                                @elseif($order->status == 'canceled') bg-red-100 text-red-700 
                                                    @else bg-gray-100 text-gray-700 
                                                @endif
                                                cursor-pointer" title="@if($order->status == 'pending') Anda masih bisa membatalkan pesanan ini.
                                                @elseif($order->status == 'Diproses') Pesanan ini sedang diproses.
                                                @elseif($order->status == 'Dikirim') Pesanan ini sedang dikirim.
                                                @elseif($order->status == 'completed') Pesanan ini sudah selesai.
                                                @elseif($order->status == 'canceled') Pesanan ini sudah dibatalkan.
                                                @endif">
                                @if($order->status == 'pending')
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                    stroke-width="1.5" stroke="currentColor" class="w-4 h-4 mr-1">
                                    <path stroke-linecap="round" stroke-linejoin="round"
                                        d="M12 6v6h4.5m4.5 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                                </svg>
                                @elseif($order->status == 'Diproses')
                                <svg xmlns="http://www.w3.org/2000/svg" class="w-4 h-4 mr-1" fill="none"
                                    viewBox="0 0 24 24" stroke="currentColor">
                                    <path stroke-linecap="round" stroke-linejoin="round"
                                        d="M9 3.75H6.912a2.25 2.25 0 0 0-2.15 1.588L2.35 13.177a2.25 2.25 0 0 0-.1.661V18a2.25 2.25 0 0 0 2.25 2.25h15A2.25 2.25 0 0 0 21.75 18v-4.162c0-.224-.034-.447-.1-.661L19.24 5.338a2.25 2.25 0 0 0-2.15-1.588H15M2.25 13.5h3.86a2.25 2.25 0 0 1 2.012 1.244l.256.512a2.25 2.25 0 0 0 2.013 1.244h3.218a2.25 2.25 0 0 0 2.013-1.244l.256-.512a2.25 2.25 0 0 1 2.013-1.244h3.859M12 3v8.25m0 0-3-3m3 3 3-3" />
                                </svg>
                                @elseif($order->status == 'Dikirim')
                                <svg xmlns="http://www.w3.org/2000/svg" class="w-4 h-4 mr-1" fill="none"
                                    viewBox="0 0 24 24" stroke="currentColor">
                                    <path stroke-linecap="round" stroke-linejoin="round"
                                        d="M8.25 18.75a1.5 1.5 0 0 1-3 0m3 0a1.5 1.5 0 0 0-3 0m3 0h6m-9 0H3.375a1.125 1.125 0 0 1-1.125-1.125V14.25m17.25 4.5a1.5 1.5 0 0 1-3 0m3 0a1.5 1.5 0 0 0-3 0m3 0h1.125c.621 0 1.129-.504 1.09-1.124a17.902 17.902 0 0 0-3.213-9.193 2.056 2.056 0 0 0-1.58-.86H14.25M16.5 18.75h-2.25m0-11.177v-.958c0-.568-.422-1.048-.987-1.106a48.554 48.554 0 0 0-10.026 0 1.106 1.106 0 0 0-.987 1.106v7.635m12-6.677v6.677m0 4.5v-4.5m0 0h-12" />
                                </svg>
                                @elseif($order->status == 'completed')
                                <svg xmlns="http://www.w3.org/2000/svg" class="w-4 h-4 mr-1" fill="none"
                                    viewBox="0 0 24 24" stroke="currentColor">
                                    <path stroke-linecap="round" stroke-linejoin="round"
                                        d="M9 12.75 11.25 15 15 9.75M21 12c0 1.268-.63 2.39-1.593 3.068a3.745 3.745 0 0 1-1.043 3.296 3.745 3.745 0 0 1-3.296 1.043A3.745 3.745 0 0 1 12 21c-1.268 0-2.39-.63-3.068-1.593a3.746 3.746 0 0 1-3.296-1.043 3.745 3.745 0 0 1-1.043-3.296A3.745 3.745 0 0 1 3 12c0-1.268.63-2.39 1.593-3.068a3.745 3.745 0 0 1 1.043-3.296 3.746 3.746 0 0 1 3.296-1.043A3.746 3.746 0 0 1 12 3c1.268 0 2.39.63 3.068 1.593a3.746 3.746 0 0 1 3.296 1.043 3.746 3.746 0 0 1 1.043 3.296A3.745 3.745 0 0 1 21 12Z" />
                                </svg>
                                @elseif($order->status == 'canceled')
                                <svg xmlns="http://www.w3.org/2000/svg" class="w-4 h-4 mr-1" fill="none"
                                    viewBox="0 0 24 24" stroke="currentColor">
                                    <path stroke-linecap="round" stroke-linejoin="round"
                                        d="m9.75 9.75 4.5 4.5m0-4.5-4.5 4.5M21 12a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                                </svg>
                                @endif
                                {{ ucfirst($order->status) }}
                            </span>
                        </p>
                        <h2 class="text-2xl font-bold mb-2">NO ORDER: #{{ $order->no_order }}</h2>
                    </div>
                    <div class="flex items-center gap-5">
                        <div class="flex flex-col ">
                            <span class="text-gray-600">Shipping Cost</span>
                            <span
                                class="font-semibold">Rp{{ number_format($order->orderShipping->shipping_cost ?? 0, 0, ',', '.') }}</span>
                        </div>
                        <div class="flex flex-col">
                            <span class="text-gray-600">Total Price</span>
                            <span class="font-semibold">Rp{{ number_format($order->total_price, 0, ',', '.') }}</span>
                        </div>
                        <div class="flex flex-col">
                            <span class="text-gray-600">Grand Total</span>
                            <span
                                class="font-semibold">Rp{{ number_format(($order->total_price ?? 0) + ($order->orderShipping->shipping_cost ?? 0), 0, ',', '.') }}</span>
                        </div>
                    </div>
                </div>

                <hr class="border-t border-gray-400 my-2" />

                <div class="order-details p-3 bg-white rounded-lg">
                    <h3 class="text-xl font-semibold mb-4">Order Details</h3>
                    <div class="space-y-2">
                        <div class="flex justify-between">
                            <div class="flex flex-col">
                                <span class="text-gray-600">Metode Pengiriman</span>
                                <span class="text-gray-600">No Resi</span>
                                <span class="text-gray-600">Metode Pembayaran</span>
                                <span class="text-gray-600">Alamat Pengiriman</span>
                            </div>
                            <div class="flex flex-col">
                                <span class="font-semibold">{{ $order->orderShipping->courier->courier_name ?? 'N/A' }}</span>
                                <span class="font-semibold">{{ $order->orderShipping->no_resi ?? 'N/A' }}</span>
                                <span class="font-semibold">{{ $order->paymentMethod->type_payment ?? 'N/A' }}</span>
                                <span class="font-semibold">{{ $order->alamat }}</span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="order-items pr-3 flex justify-end gap-2" x-data="{ showModal: false }">
                    <div class="flex justify-end">
                        <button @click="showModal = true"
                            class="border border-blue-700 hover:bg-blue-200 px-3 py-2 rounded-lg">
                            Lihat Detail Item
                        </button>
                    </div>

                    <!-- Modal Structure -->
                    <div x-show="showModal" @click.outside="showModal = false"
                        class="fixed inset-0 bg-gray-500 bg-opacity-75 flex items-center justify-center">
                        <div class="bg-white p-6 rounded-lg shadow-lg sm:w-md">
                            <h2 class="text-lg font-semibold">Order Items</h2>
                            <table class="min-w-full divide-y divide-gray-200 mt-4">
                                <thead class="bg-gray-50">
                                    <tr>
                                        <th
                                            class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                            Product
                                        </th>
                                        <th
                                            class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                            Variant
                                        </th>
                                        <th
                                            class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                            Quantity
                                        </th>
                                        <th
                                            class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                            Price
                                        </th>
                                        <th
                                            class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                            Total
                                        </th>
                                    </tr>
                                </thead>
                                <tbody class="bg-white divide-y divide-gray-200">
                                    @foreach ($order->orderItems as $item)
                                    <tr>
                                        <td class="px-6 py-4 whitespace-nowrap">{{ $item->product->name }}</td>
                                        <td class="px-6 py-4 whitespace-nowrap">{{ $item->varian }}</td>
                                        <td class="px-6 py-4 whitespace-nowrap">{{ $item->quantity }}</td>
                                        <td class="px-6 py-4 whitespace-nowrap">
                                            Rp{{ number_format($item->price, 0, ',', '.') }}</td>
                                        <td class="px-6 py-4 whitespace-nowrap">
                                            Rp{{ number_format($item->total, 0, ',', '.') }}</td>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
                            <div class="flex justify-end mt-4">
                                <button @click="showModal = false"
                                    class="px-4 py-2 bg-gray-500 hover:bg-gray-950 text-white rounded">Close</button>
                            </div>
                        </div>
                    </div>

                    @if($order->status == 'Dikirim')
                    <div class="flex justify-end items-center mark-received-btn" data-order-id="{{ $order->id }}">
                        <button type="button" class="bg-green-500 text-white hover:bg-green-600 py-2 px-4 rounded-lg ">
                            Mark as Received
                        </button>
                    </div>
                    @elseif($order->status == 'pending')
                    <div class="flex justify-end items-center batalkan-btn" data-order-id="{{ $order->id }}">
                        <button type="button" class="bg-red-500 text-white hover:bg-red-600 py-2 px-4 rounded-lg">
                            Batalkan
                        </button>
                    </div>
                    @elseif($order->status == 'completed')
                    <div class="flex justify-end items-center" x-data="{ showModal: false, rating: 0, hoverRating: 0 }">
                        @foreach ($order->orderItems as $item)
                        @php
                        // Cek apakah pengguna telah memberi ulasan untuk produk ini
                        $userReview = $item->product->reviews ? $item->product->reviews->where('user_id',
                        auth()->id())->first() : null;
                        @endphp

                        @if ($userReview)
                        <!-- Tombol untuk melihat ulasan jika ulasan sudah ada -->
                        <button type="button"
                            @click="showModal = true; rating = {{ $userReview->rating }}; review = '{{ $userReview->review }}'"
                            class="bg-gray-500 text-white hover:bg-gray-600 py-2 px-4 rounded-lg">
                            Review Ulasan
                        </button>
                        @else
                        <!-- Tombol untuk memberikan ulasan jika ulasan belum ada -->
                        <button type="button" @click="showModal = true"
                            class="bg-indigo-500 text-white hover:bg-indigo-600 py-2 px-4 rounded-lg">
                            Beri Ulasan
                        </button>
                        @endif
                        @endforeach

                        <!-- Modal Structure -->
                        <div x-show="showModal" @click.outside="showModal = false"
                            class="fixed inset-0 bg-gray-500 bg-opacity-75 flex items-center justify-center">
                            <div class="bg-white p-6 rounded-lg shadow-lg sm:w-md relative size-72">


                                @if ($userReview)
                                <!-- Tampilkan ulasan yang sudah ada -->
                                <h2 class="text-lg font-semibold mb-4">Review Rating & Ulasan</h2>
                                <div class="mb-4 flex justify-between">
                                    <div class="flex items-center mt-1">
                                        @for ($i = 1; $i <= 5; $i++) <svg xmlns="http://www.w3.org/2000/svg"
                                            fill="{{ $i <= $userReview->rating ? 'currentColor' : 'none' }}"
                                            viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
                                            class="size-6 text-yellow-500">
                                            <path stroke-linecap="round" stroke-linejoin="round"
                                                d="M11.48 3.499a.562.562 0 0 1 1.04 0l2.125 5.111a.563.563 0 0 0 .475.345l5.518.442c.499.04.701.663.321.988l-4.204 3.602a.563.563 0 0 0-.182.557l1.285 5.385a.562.562 0 0 1-.84.61l-4.725-2.885a.562.562 0 0 0-.586 0L6.982 20.54a.562.562 0 0 1-.84-.61l1.285-5.386a.562.562 0 0 0-.182-.557l-4.204-3.602a.562.562 0 0 1 .321-.988l5.518-.442a.563.563 0 0 0 .475-.345L11.48 3.5Z" />
                                            </svg>
                                            @endfor
                                    </div>
                                </div>
                                <div class="mb-4">
                                    <label for="review" class="block text-sm font-medium text-gray-700">Review</label>
                                    <p>{{ $userReview->review }}</p>
                                </div>
                                <div class="mt-4 flex justify-end space-x-2">
                                    <button type="button" @click="showModal = false"
                                        class="px-4 py-2 bg-gray-500 hover:bg-gray-600 text-white rounded">Close</button>
                                </div>
                                @else
                                <!-- Form untuk memberikan ulasan baru -->
                                <h2 class="text-lg font-semibold mb-4">Beri Ulasan</h2>
                                <form method="POST" action="{{ route('reviews.store') }}">
                                    @csrf
                                    <input type="hidden" name="product_id" value="{{ $item->product->id }}">
                                    <div class="mb-4 flex justify-center">
                                        <div class="flex items-center mt-2">
                                            <template x-for="star in 5" :key="star">
                                                <button type="button" @click="rating = star"
                                                    @mouseover="hoverRating = star" @mouseleave="hoverRating = 0"
                                                    :class="{'fill-yellow-500': rating >= star || hoverRating >= star, 'fill-none': rating < star && hoverRating < star}"
                                                    class="focus:outline-none">
                                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
                                                        stroke-width="1.5" stroke="currentColor" class="size-6">
                                                        <path stroke-linecap="round" stroke-linejoin="round"
                                                            d="M11.48 3.499a.562.562 0 0 1 1.04 0l2.125 5.111a.563.563 0 0 0 .475.345l5.518.442c.499.04.701.663.321.988l-4.204 3.602a.563.563 0 0 0-.182.557l1.285 5.385a.562.562 0 0 1-.84.61l-4.725-2.885a.562.562 0 0 0-.586 0L6.982 20.54a.562.562 0 0 1-.84-.61l1.285-5.386a.562.562 0 0 0-.182-.557l-4.204-3.602a.562.562 0 0 1 .321-.988l5.518-.442a.563.563 0 0 0 .475-.345L11.48 3.5Z" />
                                                    </svg>
                                                </button>
                                            </template>
                                        </div>
                                        <input type="hidden" name="rating" x-model="rating">
                                    </div>
                                    <div class="mb-4">
                                        <label for="review"
                                            class="block text-sm font-medium text-gray-700">Review</label>
                                        <textarea id="review" name="review" rows="4"
                                            class="mt-1 block w-full bg-gray-50 border border-gray-300 rounded-md shadow-sm focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm"
                                            placeholder="Write your review here..."></textarea>
                                    </div>
                                    <div class="mt-4 flex justify-end space-x-2">
                                        <button type="button" @click="showModal = false"
                                            class="px-4 py-2 bg-gray-500 hover:bg-gray-600 text-white rounded">Close</button>
                                        <button type="submit"
                                            class="px-4 py-2 bg-blue-500 hover:bg-blue-600 text-white rounded">Kirim</button>
                                    </div>
                                </form>
                                @endif
                            </div>
                        </div>
                    </div>
                    @endif
                </div>
            </div>
            @empty
            <div class="text-center py-10">
                <p class="text-lg text-gray-600">No purchase history found.</p>
            </div>
            @endforelse

            <div class="pagination mt-6">
                {{ $orders->links('vendor.pagination.tailwind') }}
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script>
        document.addEventListener('DOMContentLoaded', function() {
            // Add event listener to the button
            document.querySelectorAll('.mark-received-btn').forEach(button => {
                button.addEventListener('click', function() {
                    const orderId = this.getAttribute('data-order-id');
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "You won't be able to revert this!",
                        icon: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085d6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes, mark it as received!'
                    }).then((result) => {
                        if (result.isConfirmed) {
                            axios.patch(`/orders/${orderId}/mark-received`, {}, {
                                    headers: {
                                        'X-CSRF-TOKEN': '{{ csrf_token() }}'
                                    }
                                })
                                .then(response => {
                                    if (response.data.success) {
                                        Swal.fire(
                                            'Marked!',
                                            'The order has been marked as received.',
                                            'success'
                                        ).then(() => {
                                            location
                                                .reload(); // Refresh the page to reflect the changes
                                        });
                                    } else {
                                        Swal.fire(
                                            'Failed!',
                                            'There was a problem marking the order as received.',
                                            'error'
                                        );
                                    }
                                })
                                .catch(error => {
                                    Swal.fire(
                                        'Error!',
                                        'Something went wrong!',
                                        'error'
                                    );
                                });
                        }
                    });
                });
            });

            document.querySelectorAll('.batalkan-btn').forEach(button => {
                button.addEventListener('click', function() {
                    const orderId = this.getAttribute('data-order-id');
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "You won't be able to revert this!",
                        icon: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085d6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes, cancel'
                    }).then((result) => {
                        if (result.isConfirmed) {
                            axios.patch(`/orders/${orderId}/cancel`, {}, {
                                    headers: {
                                        'X-CSRF-TOKEN': '{{ csrf_token() }}'
                                    }
                                })
                                .then(response => {
                                    if (response.data.success) {
                                        Swal.fire(
                                            'Marked!',
                                            'The order has been cancel.',
                                            'success'
                                        ).then(() => {
                                            location
                                                .reload(); // Refresh the page to reflect the changes
                                        });
                                    } else {
                                        Swal.fire(
                                            'Failed!',
                                            'There was a problem marking the order as received.',
                                            'error'
                                        );
                                    }
                                })
                                .catch(error => {
                                    Swal.fire(
                                        'Error!',
                                        'Something went wrong!',
                                        'error'
                                    );
                                });
                        }
                    });
                });
            });
        });
        </script>

</x-app-layout>