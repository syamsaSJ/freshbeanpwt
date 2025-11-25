<section>
    <header>
        <h2 class="text-xl font-bold text-gray-900">
            {{ __('Profile Information') }}
        </h2>
        <p class="mt-1 text-sm text-gray-600">
            {{ __("Update your account's profile information and email address.") }}
        </p>
    </header>

    <form id="profile-form" method="post" action="{{ route('profile.update') }}" enctype="multipart/form-data"
        class="mt-6 space-y-6">
        @csrf
        @method('patch')

        <div>
            <div class="relative group">
                <img id="avatarPreview"
                    src="{{ $user->avatar ? asset('storage/' . $user->avatar) : 'https://via.placeholder.com/150' }}"
                    alt="Avatar" class="w-24 h-24 rounded-full object-cover">
                <input id="avatar" name="avatar" type="file" class="hidden" accept="image/*" onchange="previewAvatar()">
                <div class="mt-2 flex items-center gap-4">
                    <label for="avatar"
                        class="cursor-pointer text-gray-700 font-bold py-2 px-4 rounded bg-gray-200 hover:bg-gray-300">
                        Ubah Foto
                    </label>
                    <span id="fileName" class="text-sm text-gray-600 hidden">{{ __('No file selected') }}</span>
                </div>
            </div>
            <x-input-error class="mt-2" :messages="$errors->get('avatar')" />
        </div>


        <div>
            <x-input-label for="name" :value="__('Name')" />
            <x-text-input id="name" name="name" type="text" class="mt-1 block w-full" :value="old('name', $user->name)"
                required autocomplete="name" />
            <x-input-error class="mt-2" :messages="$errors->get('name')" />
        </div>

        <div>
            <x-input-label for="email" :value="__('Email')" />
            <x-text-input id="email" name="email" type="email" class="mt-1 block w-full" :value="old('email', $user->email)" required autocomplete="email" />
            <x-input-error class="mt-2" :messages="$errors->get('email')" />

            @if ($user instanceof \Illuminate\Contracts\Auth\MustVerifyEmail && !$user->hasVerifiedEmail())
                <div class="mt-2">
                    <p class="text-sm text-gray-800">
                        {{ __('Your email address is unverified.') }}
                        <button form="send-verification"
                            class="underline text-sm text-gray-600 hover:text-gray-900 rounded-md focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
                            {{ __('Click here to re-send the verification email.') }}
                        </button>
                    </p>

                    @if (session('status') === 'verification-link-sent')
                        <p class="mt-2 font-medium text-sm text-green-600">
                            {{ __('A new verification link has been sent to your email address.') }}
                        </p>
                    @endif
                </div>
            @endif
        </div>

        <div>
            <x-input-label for="phone" :value="__('phone')" />
            <x-text-input id="phone" name="phone" type="text" class="mt-1 block w-full" :value="old('phone', $user->phone)" required autofocus autocomplete="phone" />
            <x-input-error class="mt-2" :messages="$errors->get('phone')" />
        </div>

        <div class="flex items-center gap-4 mt-4">
            <x-primary-button type="submit">{{ __('Save') }}</x-primary-button>
        </div>
    </form>
</section>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
    function previewAvatar() {
        const fileInput = document.getElementById('avatar');
        const avatarPreview = document.getElementById('avatarPreview');
        const fileName = document.getElementById('fileName');

        const file = fileInput.files[0];
        if (file) {
            const reader = new FileReader();
            reader.onload = function (e) {
                avatarPreview.src = e.target.result;
            };
            reader.readAsDataURL(file);
            fileName.textContent = file.name; // Display the selected file name
            fileName.classList.remove('hidden'); // Show the file name
        } else {
            fileName.textContent = 'No file selected';
            fileName.classList.add('hidden'); // Hide the file name
        }
    }

    document.addEventListener('DOMContentLoaded', function () {
        const form = document.getElementById('profile-form');
        if (form) {
            form.addEventListener('submit', function (event) {
                event.preventDefault(); // Prevent default form submission

                Swal.fire({
                    title: 'Are you sure?',
                    text: "Do you want to save the changes?",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Yes, save it!'
                }).then((result) => {
                    if (result.isConfirmed) {
                        const formData = new FormData(form);

                        fetch(form.action, {
                            method: form.method,
                            body: formData,
                            headers: {
                                'X-Requested-With': 'XMLHttpRequest'
                            }
                        })
                            .then(response => response.json())
                            .then(data => {
                                if (data.success) {
                                    Swal.fire({
                                        icon: 'success',
                                        title: 'Saved!',
                                        text: data.message,
                                        timer: 2000,
                                        showConfirmButton: false
                                    });

                                    // Update the page with new data if needed
                                    document.querySelector('#avatarPreview').src = data.updated_avatar_url || document.querySelector('#avatarPreview').src;
                                    document.querySelector('#name').value = data.updated_name || document.querySelector('#name').value;
                                    document.querySelector('#email').value = data.updated_email || document.querySelector('#email').value;
                                    document.querySelector('#phone').value = data.updated_phone || document.querySelector('#phone').value;
                                } else {
                                    Swal.fire({
                                        icon: 'error',
                                        title: 'Oops...',
                                        text: 'Something went wrong!',
                                    });
                                }
                            })
                            .catch(error => {
                                Swal.fire({
                                    icon: 'error',
                                    title: 'Oops...',
                                    text: 'Something went wrong!',
                                });
                            });
                    }
                });
            });
        }
    });
</script>