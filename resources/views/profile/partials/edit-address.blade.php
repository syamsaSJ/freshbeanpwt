<!-- Modal for Editing Address -->
<div id="editAddressModal" class="modal hidden fixed inset-0 flex items-center justify-center overflow-y-auto z-50"
    style="margin-top: 20px;">
    <div class="absolute inset-0 bg-gray-900 bg-opacity-50 backdrop-blur-sm"></div> <!-- Background blur -->
    <div class="relative bg-white rounded-lg shadow-lg max-w-lg w-full mx-4 sm:mx-6 md:mx-8 lg:mx-auto p-5">
        <div class="text-center mb-4">
            <h3 class="text-xl font-semibold text-gray-900">Perbarui Alamat</h3>
        </div>
        <div>
            <form id="addressForm" method="post" action="{{ route('profile.update-address') }}" class="space-y-6">
                @csrf
                @method('patch')

                <div>
                    <label for="provinsi" class="block text-sm font-medium text-gray-700">Provinsi</label>
                    <select id="provinsi" name="province_id"
                        class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:ring-indigo-500 focus:border-indigo-500"
                        required>
                        <option value="">Pilih Provinsi</option>
                    </select>
                </div>

                <div>
                    <label for="kabupaten_kota" class="block text-sm font-medium text-gray-700">Kabupaten/Kota</label>
                    <select id="kabupaten_kota" name="city_id"
                        class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:ring-indigo-500 focus:border-indigo-500"
                        required>
                        <option value="">Pilih Kabupaten/Kota</option>
                    </select>
                    <div id="cityError" class="text-red-500 text-sm mt-2 hidden">Error fetching cities. Please try
                        again.</div>
                </div>

                <div>
                    <label for="alamat" class="block text-sm font-medium text-gray-700">Detail Alamat</label>
                    <input id="alamat" name="alamat" type="text"
                        class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:ring-indigo-500 focus:border-indigo-500"
                        required>
                </div>

                <div>
                    <label for="kode_pos" class="block text-sm font-medium text-gray-700">Kode Pos</label>
                    <input id="kode_pos" name="kode_pos" type="text"
                        class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:ring-indigo-500 focus:border-indigo-500"
                        required>
                </div>

                <div class="flex justify-end mt-4">
                    <button type="button"
                        class="px-4 py-2 Bg-white border border-gray-600 text-gray-900 rounded-md shadow-sm hover:bg-gray-500 hover:text-white transition duration-150 ease-in-out mr-2"
                        onclick="closeModal()">Batal</button>
                    <button type="submit"
                        class="px-4 py-2 bg-gray-900 text-white rounded-md shadow-sm hover:bg-gray-500 transition duration-150 ease-in-out">Simpan</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script>
    const addressForm = document.getElementById('addressForm');

    addressForm.addEventListener('submit', function (event) {
        event.preventDefault();

        const formData = new FormData(addressForm);

        fetch(addressForm.action, {
            method: 'POST',
            body: formData,
            headers: {
                'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').getAttribute('content')
            }
        })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    Swal.fire({
                        title: 'Berhasil!',
                        text: 'Alamat Anda berhasil diperbarui.',
                        icon: 'success',
                        confirmButtonText: 'OK'
                    }).then(() => {
                        closeModal(); // Close the modal
                        
                    });
                } else {
                    Swal.fire({
                        title: 'Gagal!',
                        text: 'Terjadi kesalahan saat memperbarui alamat.',
                        icon: 'error',
                        confirmButtonText: 'OK'
                    });
                }
            })
            .catch(error => {
                console.error('Error:', error);
                Swal.fire({
                    title: 'Gagal!',
                    text: 'Terjadi kesalahan saat memperbarui alamat.',
                    icon: 'error',
                    confirmButtonText: 'OK'
                });
            });
    });

    const fetchProvinces = async () => {
        try {
            const response = await fetch(`/api/provinces`);
            const provinces = await response.json();

            const provinsiSelect = document.getElementById('provinsi');
            provinsiSelect.innerHTML = '<option value="">Pilih Provinsi</option>';
            provinces.forEach(province => {
                const option = document.createElement('option');
                option.value = province.id;
                option.textContent = province.name;
                provinsiSelect.appendChild(option);
            });
        } catch (error) {
            console.error('Error fetching provinces:', error);
        }
    };

    const fetchCities = async (provinceId) => {
        const kabupatenKotaSelect = document.getElementById('kabupaten_kota');
        const cityError = document.getElementById('cityError');

        try {
            kabupatenKotaSelect.innerHTML = '<option value="">Loading...</option>';
            cityError.classList.add('hidden');

            const response = await fetch(`/api/cities?province_id=${provinceId}`);
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
            const cities = await response.json();

            kabupatenKotaSelect.innerHTML = '<option value="">Pilih Kabupaten/Kota</option>';
            cities.forEach(city => {
                const option = document.createElement('option');
                option.value = city.id;
                option.textContent = city.name;
                kabupatenKotaSelect.appendChild(option);
            });
        } catch (error) {
            console.error('Error fetching cities:', error);
            kabupatenKotaSelect.innerHTML = '<option value="">Pilih Kabupaten/Kota</option>';
            cityError.classList.remove('hidden');
        }
    };

    document.addEventListener('DOMContentLoaded', function () {
        const provinsiSelect = document.getElementById('provinsi');
        const kabupatenKotaSelect = document.getElementById('kabupaten_kota');

        provinsiSelect.addEventListener('change', function () {
            const provinceId = this.value;
            if (provinceId) {
                fetchCities(provinceId);
            } else {
                kabupatenKotaSelect.innerHTML = '<option value="">Pilih Kabupaten/Kota</option>';
            }
        });
    });

    function showEditAddressModal() {
        const modal = document.getElementById('editAddressModal');
        modal.classList.remove('hidden');
        modal.style.display = 'flex'; // Ensuring it displays as flex to center it
        fetchProvinces();
    }

    function closeModal() {
        const modal = document.getElementById('editAddressModal');
        modal.classList.add('hidden');
        modal.style.display = 'none'; // Hiding the modal properly
    }

</script>