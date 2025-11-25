<section>
    <header>
        <h2 class="text-xl font-bold text-gray-900">
            {{ __('Address Information') }}
        </h2>
        <p class="mt-1 text-sm text-gray-600">
            {{ __("Update your account's address information.") }}
        </p>
    </header>

    <div class="mt-4">
        @if ($user->alamat)
            <div>
                <div class="mb-4">
                    <label class="block text-sm font-medium text-gray-700">Provinsi:</label>
                    <p class="mt-1 text-gray-800">{{ $user->province_name }}</p>
                </div>
                <div class="mb-4">
                    <label class="block text-sm font-medium text-gray-700">Kabupaten/Kota:</label>
                    <p class="mt-1 text-gray-800">{{ $user->city_name }}</p>
                </div>

                <div class="mb-4">
                    <label class="block text-sm font-medium text-gray-700">Alamat:</label>
                    <p class="mt-1 text-gray-800">{{ $user->alamat }}</p>
                </div>
                <div class="mb-4">
                    <label class="block text-sm font-medium text-gray-700">Kode Pos:</label>
                    <p class="mt-1 text-gray-800">{{ $user->kode_pos }}</p>
                </div>
                <x-primary-button onclick="showEditAddressModal()">
                    {{ __('Ubah Alamat') }}
                </x-primary-button>
            </div>
        @else
            <div class="bg-yellow-100 text-yellow-800 p-4 rounded-md mt-4 mb-4" role="alert">
                Alamat belum tersedia. Silakan tambahkan alamat Anda.
            </div>
            <x-primary-button onclick="showEditAddressModal()">Tambahkan Alamat</x-primary-button>
        @endif
    </div>
</section>