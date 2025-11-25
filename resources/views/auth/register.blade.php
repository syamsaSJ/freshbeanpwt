<x-guest-layout>
    <form method="POST" action="{{ route('register') }}">
        @csrf

        <div class="mt-3 mb-3 flex justify-center w-full">
            <!-- Google Login Button -->
            <a href="{{ route('google.redirect') }}"
                class="inline-flex justify-center items-center px-3 py-3 w-full border border-gray-600 text-base font-medium rounded-md shadow-sm text-gray-600 hover:bg-gray-300">
                <div class="flex items-center justify-center gap-2">
                    <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="24" height="24" viewBox="0 0 48 48">
                        <path fill="#FFC107"
                            d="M43.611,20.083H42V20H24v8h11.303c-1.649,4.657-6.08,8-11.303,8c-6.627,0-12-5.373-12-12c0-6.627,5.373-12,12-12c3.059,0,5.842,1.154,7.961,3.039l5.657-5.657C34.046,6.053,29.268,4,24,4C12.955,4,4,12.955,4,24c0,11.045,8.955,20,20,20c11.045,0,20-8.955,20-20C44,22.659,43.862,21.35,43.611,20.083z">
                        </path>
                        <path fill="#FF3D00"
                            d="M6.306,14.691l6.571,4.819C14.655,15.108,18.961,12,24,12c3.059,0,5.842,1.154,7.961,3.039l5.657-5.657C34.046,6.053,29.268,4,24,4C16.318,4,9.656,8.337,6.306,14.691z">
                        </path>
                        <path fill="#4CAF50"
                            d="M24,44c5.166,0,9.86-1.977,13.409-5.192l-6.19-5.238C29.211,35.091,26.715,36,24,36c-5.202,0-9.619-3.317-11.283-7.946l-6.522,5.025C9.505,39.556,16.227,44,24,44z">
                        </path>
                        <path fill="#1976D2"
                            d="M43.611,20.083H42V20H24v8h11.303c-0.792,2.237-2.231,4.166-4.087,5.571c0.001-0.001,0.002-0.001,0.003-0.002l6.19,5.238C36.971,39.205,44,34,44,24C44,22.659,43.862,21.35,43.611,20.083z">
                        </path>
                    </svg>
                    {{ __('Sign up with Google') }}
                </div>
            </a>
        </div>

        <div class="mt-3 mb-3 flex items-center justify-between">
            <div style="height: 1px;" class="bg-gray-300 flex-grow"></div>
            <span class="mx-4">Or Continue with</span>
            <div style="height: 1px;" class="bg-gray-300 flex-grow"></div>
        </div>

        <!-- Name -->
        <div>
            <x-input-label for="name" :value="__('Name')" />
            <x-text-input id="name" class="block mt-1 w-full" type="text" name="name" :value="old('name')" required
                autofocus autocomplete="name" />
            <x-input-error :messages="$errors->get('name')" class="mt-2" />
        </div>

        <!-- Email Address -->
        <div class="mt-3">
            <x-input-label for="email" :value="__('Email')" />
            <x-text-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required
                autocomplete="username" />
            <x-input-error :messages="$errors->get('email')" class="mt-2" />
        </div>

        <!-- Password -->
        <div class="mt-3 relative">
            <x-input-label for="password" :value="__('Password')" />
            <div class="relative flex items-center">
                <x-text-input id="password" class="block mt-1 w-full pr-12" type="password" name="password" required
                    autocomplete="new-password" />
                <button type="button" id="togglePassword"
                    class="absolute right-0 flex items-center px-3 py-2.5 text-gray-600 border-l border-gray-400">
                    <svg id="eyeOpen" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" class="w-5 h-5">
                        <path
                            d="M288 32c-80.8 0-145.5 36.8-192.6 80.6C48.6 156 17.3 208 2.5 243.7c-3.3 7.9-3.3 16.7 0 24.6C17.3 304 48.6 356 95.4 399.4C142.5 443.2 207.2 480 288 480s145.5-36.8 192.6-80.6c46.8-43.5 78.1-95.4 93-131.1c3.3-7.9 3.3-16.7 0-24.6c-14.9-35.7-46.2-87.7-93-131.1C433.5 68.8 368.8 32 288 32zM144 256a144 144 0 1 1 288 0 144 144 0 1 1 -288 0zm144-64c0 35.3-28.7 64-64 64c-7.1 0-13.9-1.2-20.3-3.3c-5.5-1.8-11.9 1.6-11.7 7.4c.3 6.9 1.3 13.8 3.2 20.7c13.7 51.2 66.4 81.6 117.6 67.9s81.6-66.4 67.9-117.6c-11.1-41.5-47.8-69.4-88.6-71.1c-5.8-.2-9.2 6.1-7.4 11.7c2.1 6.4 3.3 13.2 3.3 20.3z" />
                    </svg>
                    <svg id="eyeClosed" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 512" class="w-5 h-5 hidden">
                        <path
                            d="M38.8 5.1C28.4-3.1 13.3-1.2 5.1 9.2S-1.2 34.7 9.2 42.9l592 464c10.4 8.2 25.5 6.3 33.7-4.1s6.3-25.5-4.1-33.7L525.6 386.7c39.6-40.6 66.4-86.1 79.9-118.4c3.3-7.9 3.3-16.7 0-24.6c-14.9-35.7-46.2-87.7-93-131.1C465.5 68.8 400.8 32 320 32c-68.2 0-125 26.3-169.3 60.8L38.8 5.1zM223.1 149.5C248.6 126.2 282.7 112 320 112c79.5 0 144 64.5 144 144c0 24.9-6.3 48.3-17.4 68.7L408 294.5c8.4-19.3 10.6-41.4 4.8-63.3c-11.1-41.5-47.8-69.4-88.6-71.1c-5.8-.2-9.2 6.1-7.4 11.7c2.1 6.4 3.3 13.2 3.3 20.3c0 10.2-2.4 19.8-6.6 28.3l-90.3-70.8zM373 389.9c-16.4 6.5-34.3 10.1-53 10.1c-79.5 0-144-64.5-144-144c0-6.9 .5-13.6 1.4-20.2L83.1 161.5C60.3 191.2 44 220.8 34.5 243.7c-3.3 7.9-3.3 16.7 0 24.6c14.9 35.7 46.2 87.7 93 131.1C174.5 443.2 239.2 480 320 480c47.8 0 89.9-12.9 126.2-32.5L373 389.9z" />
                    </svg>
                </button>
            </div>
            <x-input-error :messages="$errors->get('password')" class="mt-2" />
        </div>

        <!-- Confirm Password -->
        <div class="mt-3 relative">
            <x-input-label for="password_confirmation" :value="__('Confirm Password')" />
            <div class="relative flex items-center">
                <x-text-input id="password_confirmation" class="block mt-1 w-full pr-12" type="password"
                    name="password_confirmation" required autocomplete="new-password" />
                <button type="button" id="togglePasswordConfirm"
                    class="absolute right-0 flex items-center px-3 py-2.5 text-gray-600 border-l border-gray-400">
                    <svg id="eyeOpenConfirm" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" class="w-5 h-5">
                        <path
                            d="M288 32c-80.8 0-145.5 36.8-192.6 80.6C48.6 156 17.3 208 2.5 243.7c-3.3 7.9-3.3 16.7 0 24.6C17.3 304 48.6 356 95.4 399.4C142.5 443.2 207.2 480 288 480s145.5-36.8 192.6-80.6c46.8-43.5 78.1-95.4 93-131.1c3.3-7.9 3.3-16.7 0-24.6c-14.9-35.7-46.2-87.7-93-131.1C433.5 68.8 368.8 32 288 32zM144 256a144 144 0 1 1 288 0 144 144 0 1 1 -288 0zm144-64c0 35.3-28.7 64-64 64c-7.1 0-13.9-1.2-20.3-3.3c-5.5-1.8-11.9 1.6-11.7 7.4c.3 6.9 1.3 13.8 3.2 20.7c13.7 51.2 66.4 81.6 117.6 67.9s81.6-66.4 67.9-117.6c-11.1-41.5-47.8-69.4-88.6-71.1c-5.8-.2-9.2 6.1-7.4 11.7c2.1 6.4 3.3 13.2 3.3 20.3z" />
                    </svg>
                    <svg id="eyeClosedConfirm" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 512"
                        class="w-5 h-5 hidden">
                        <path
                            d="M38.8 5.1C28.4-3.1 13.3-1.2 5.1 9.2S-1.2 34.7 9.2 42.9l592 464c10.4 8.2 25.5 6.3 33.7-4.1s6.3-25.5-4.1-33.7L525.6 386.7c39.6-40.6 66.4-86.1 79.9-118.4c3.3-7.9 3.3-16.7 0-24.6c-14.9-35.7-46.2-87.7-93-131.1C465.5 68.8 400.8 32 320 32c-68.2 0-125 26.3-169.3 60.8L38.8 5.1zM223.1 149.5C248.6 126.2 282.7 112 320 112c79.5 0 144 64.5 144 144c0 24.9-6.3 48.3-17.4 68.7L408 294.5c8.4-19.3 10.6-41.4 4.8-63.3c-11.1-41.5-47.8-69.4-88.6-71.1c-5.8-.2-9.2 6.1-7.4 11.7c2.1 6.4 3.3 13.2 3.3 20.3c0 10.2-2.4 19.8-6.6 28.3l-90.3-70.8zM373 389.9c-16.4 6.5-34.3 10.1-53 10.1c-79.5 0-144-64.5-144-144c0-6.9 .5-13.6 1.4-20.2L83.1 161.5C60.3 191.2 44 220.8 34.5 243.7c-3.3 7.9-3.3 16.7 0 24.6c14.9 35.7 46.2 87.7 93 131.1C174.5 443.2 239.2 480 320 480c47.8 0 89.9-12.9 126.2-32.5L373 389.9z" />
                    </svg>
                </button>
            </div>
            <x-input-error :messages="$errors->get('password_confirmation')" class="mt-2" />
        </div>

        <!-- Terms and Conditions Checkbox -->
        <div class="block mt-4">
            <label for="terms" class="inline-flex items-center">
                <input id="terms" type="checkbox"
                    class="rounded border-gray-300 text-indigo-600 shadow-sm focus:ring-indigo-500" name="terms"
                    required>
                <span class="ms-2 text-sm text-gray-600">
                    I agree to the
                    <button type="button" data-modal-target="terms-modal" data-modal-toggle="terms-modal"
                        class="text-blue-500 underline">Terms and Conditions</button> and
                    <button type="button" data-modal-target="privacy-modal" data-modal-toggle="privacy-modal"
                        class="text-blue-500 underline">Privacy Policy</button>
                </span>
            </label>
        </div>

        <div class="mt-4 mb-4 flex justify-center">
            <button type="submit"
                class="inline-flex justify-center items-center px-3 py-3 w-full bg-gray-800 border border-transparent rounded-md font-semibold text-xs text-white uppercase tracking-widest hover:bg-gray-700 focus:bg-gray-700 active:bg-gray-900 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2 transition ease-in-out duration-150">
                {{ __('Register') }}
            </button>
        </div>
        <a href="{{ route('login') }}"
            class="inline-flex justify-center items-center w-full text-xs uppercase tracking-widest text-gray-900">
            {{ __('Sudah Punya Akun?') }}
            <span
                class="font-bold uppercase tracking-widest text-black hover:text-gray-700 transition ease-in-out duration-150 ml-1">
                {{ __('Login Now') }}
            </span>
        </a>
    </form>

    <!-- Modal for Terms of Service -->
<div id="terms-modal" tabindex="-1" aria-hidden="true"
    class="hidden fixed inset-0 flex items-center justify-center bg-gray-900 bg-opacity-50">
    <div class="relative bg-white rounded-lg shadow dark:bg-gray-700 max-w-lg w-full max-h-[80vh] overflow-y-auto">
        <!-- Modal header -->
        <div class="flex items-center justify-between p-4 border-b dark:border-gray-600">
            <h3 class="text-xl font-semibold text-gray-900 dark:text-white">
                Terms of Service
            </h3>
            <button type="button" class="text-gray-400 dark:text-gray-400 hover:text-gray-900 dark:hover:text-white"
                data-modal-hide="terms-modal">
                <svg class="w-6 h-6" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none"
                    viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                        d="M6 18L18 6M6 6l12 12" />
                </svg>
                <span class="sr-only">Close modal</span>
            </button>
        </div>
        <!-- Modal body -->
        <div class="p-4 overflow-y-auto">
            {!! $terms !!}
        </div>
        <!-- Modal footer -->
        <div class="flex justify-end p-4 border-t dark:border-gray-600">
            <button data-modal-hide="terms-modal" type="button"
                class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5">I
                Accept</button>
            <button data-modal-hide="terms-modal" type="button"
                class="ml-2 text-gray-900 bg-white border border-gray-200 hover:bg-gray-100 rounded-lg text-sm px-5 py-2.5">Decline</button>
        </div>
    </div>
</div>

<!-- Modal for Privacy Policy -->
<div id="privacy-modal" tabindex="-1" aria-hidden="true"
    class="hidden fixed inset-0 flex items-center justify-center bg-gray-900 bg-opacity-50">
    <div class="relative bg-white rounded-lg shadow dark:bg-gray-700 max-w-lg w-full max-h-[80vh] overflow-y-auto">
        <!-- Modal header -->
        <div class="flex items-center justify-between p-4 border-b dark:border-gray-600">
            <h3 class="text-xl font-semibold text-gray-900 dark:text-white">
                Privacy Policy
            </h3>
            <button type="button" class="text-gray-400 dark:text-gray-400 hover:text-gray-900 dark:hover:text-white"
                data-modal-hide="privacy-modal">
                <svg class="w-6 h-6" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none"
                    viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                        d="M6 18L18 6M6 6l12 12" />
                </svg>
                <span class="sr-only">Close modal</span>
            </button>
        </div>
        <!-- Modal body -->
        <div class="p-4 overflow-y-auto">
            {!! $privacy !!}
        </div>
        <!-- Modal footer -->
        <div class="flex justify-end p-4 border-t dark:border-gray-600">
            <button data-modal-hide="privacy-modal" type="button"
                class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5">I
                Accept</button>
            <button data-modal-hide="privacy-modal" type="button"
                class="ml-2 text-gray-900 bg-white border border-gray-200 hover:bg-gray-100 rounded-lg text-sm px-5 py-2.5">Decline</button>
        </div>
    </div>
</div>

</x-guest-layout>

<!-- JavaScript to toggle password visibility -->
<script>
    document.addEventListener('DOMContentLoaded', function () {
        const togglePassword = document.querySelector('#togglePassword');
        const passwordInput = document.querySelector('#password');
        const eyeOpen = document.querySelector('#eyeOpen');
        const eyeClosed = document.querySelector('#eyeClosed');

        togglePassword.addEventListener('click', function () {
            if (passwordInput.type === 'password') {
                passwordInput.type = 'text';
                eyeOpen.classList.add('hidden');
                eyeClosed.classList.remove('hidden');
            } else {
                passwordInput.type = 'password';
                eyeOpen.classList.remove('hidden');
                eyeClosed.classList.add('hidden');
            }
        });

        const togglePasswordConfirm = document.querySelector('#togglePasswordConfirm');
        const passwordConfirmInput = document.querySelector('#password_confirmation');
        const eyeOpenConfirm = document.querySelector('#eyeOpenConfirm');
        const eyeClosedConfirm = document.querySelector('#eyeClosedConfirm');

        togglePasswordConfirm.addEventListener('click', function () {
            if (passwordConfirmInput.type === 'password') {
                passwordConfirmInput.type = 'text';
                eyeOpenConfirm.classList.add('hidden');
                eyeClosedConfirm.classList.remove('hidden');
            } else {
                passwordConfirmInput.type = 'password';
                eyeOpenConfirm.classList.remove('hidden');
                eyeClosedConfirm.classList.add('hidden');
            }
        });

        document.querySelectorAll('[data-modal-toggle]').forEach(button => {
            button.addEventListener('click', function () {
                const target = document.getElementById(this.getAttribute('data-modal-target'));
                target.classList.toggle('hidden');
            });
        });

        document.querySelectorAll('[data-modal-hide]').forEach(button => {
            button.addEventListener('click', function () {
                const target = document.getElementById(this.getAttribute('data-modal-hide'));
                target.classList.add('hidden');
            });
        });
    });
</script>