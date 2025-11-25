<nav x-data="{ open: false }" class="border-b border-gray-100 fixed top-0 w-full z-50" style="background-color: #8E8358;">
    <style>
        .cta {
            display: flex;
            gap: 10px;
        }

        .cta a {
            text-decoration: none;
            color: white;
            padding: 8px 12px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
            font-size: 14px;
        }

        .cta a:first-child {
            border: 2px solid #EAFDCF;
            padding: 8px 12px;
        }

        .cta a:first-child:hover {
            background-color: #fff;
            color: black; /* Changed text color on hover */
        }

        .cta a:last-child {
            background-color: #EAFDCF;
            color: black;
            padding: 8px 12px;
            border: 2px solid #EAFDCF;
        }

        .cta a:last-child:hover{
            background-color: #8E8358;
            color: white;
        }
    </style>

    <!-- Primary Navigation Menu -->
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="flex justify-between h-16">
            
            <!-- Logo -->
            <div class="shrink-0 flex items-center">
                <a href="{{ route('dashboard') }}">
                {{-- <img src="{{ asset('images/iconshop.png') }}" alt="Cart Icon" class="block h-8 w-auto"> --}}
                    <x-application-logo class="block h-2 w-auto fill-current text-gray-800" /> 
                </a>
            </div>

            <!-- Navigation Links - Centered -->
            <div class="flex-grow flex justify-center">
                <div class="hidden space-x-8 sm:-my-px sm:flex">
                    <x-nav-link :href="route('dashboard')" :active="request()->routeIs('dashboard')" class="text-white">
                        {{ __('Dashboard') }}
                    </x-nav-link>
                    <x-nav-link :href="route('products.index')" :active="request()->routeIs('products.index')" class="text-white">
                        {{ __('Products') }}
                    </x-nav-link>
                </div>
            </div>

            <!-- Search -->
            <div x-data="searchComponent" class="relative flex items-center text-white">
                <!-- Wrapper untuk input dan hasil pencarian -->
                <div x-data="{ searchOpen: false }" @click.outside="searchOpen = false">
                    <!-- Search Icon -->
                    <span @click="searchOpen = !searchOpen" class="flex items-center whitespace-nowrap px-3 py-[0.25rem] text-surface dark:border-neutral-400 dark:text-white [&>svg]:h-6 [&>svg]:w-6 cursor-pointer hover:text-gray-700">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" d="m21 21-5.197-5.197m0 0A7.5 7.5 0 1 0 5.196 5.196a7.5 7.5 0 0 0 10.607 10.607Z" />
                        </svg>
                    </span>

                    <!-- Search Input -->
                    <input x-show="searchOpen" x-ref="searchInput" type="search" placeholder        
                        class="ml-2 mt-1 w-64 bg-white text-gray-950 text-surface placeholder:text-gray-950 focus:outline-none dark:text-white dark:placeholder:text-neutral-200 py-2 px-4 border border-neutral-200 dark:border-neutral-600 rounded-md transition-all duration-300 ease-in-out absolute left-0"
                        placeholder="Search" aria-label="Search" id="searchInput" x-model="searchQuery"
                        @input.debounce.300ms="searchProducts" x-show="searchOpen"
                        x-cloak
                            x-transition:enter="transition ease-out duration-100"
                            x-transition:enter-start="opacity-0 transform scale-95"
                            x-transition:enter-end="opacity-100 transform scale-100"
                            x-transition:leave="transition ease-in duration-75"
                            x-transition:leave-start="opacity-100 transform scale-100"
                            x-transition:leave-end="opacity-0 transform scale-95" style="top: 100%;" />

                        <!-- Results Container -->
                        <div x-show="searchOpen && searchResults.length"
                            class="absolute bg-white text-gray-500 border border-neutral-300 rounded-md ml-2 mt-12 w-64 max-h-60 overflow-y-auto z-10 shadow-lg"
                            style="top: calc(100% + 8px); left: 0;" x-cloak>
                            <template x-for="result in searchResults" :key="result.id">
                                <a :href="'/products/' + result.id"
                                    class="block px-4 py-2 text-sm hover:bg-gray-100 dark:hover:bg-neutral-700 transition duration-200 ease-in-out">
                                    <span x-text="result.name"></span>
                                </a>
                            </template>
                            <!-- No Results Message -->
                            <div x-show="!searchResults.length" class="px-4 py-2 text-sm text-center text-neutral-500">
                                No results found
                            </div>
                        </div>
                </div>
            </div>

            <div class="flex">
                <!-- favorite icon -->
                <button class="relative flex items-center px-3 py-2 border border-transparent text-sm leading-4 font-medium rounded-md text-white hover:text-gray-700 focus:outline-none transition ease-in-out duration-150">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="h-6 w-6">
                            <path stroke-linecap="round" stroke-linejoin="round" d="M21 8.25c0-2.485-2.099-4.5-4.688-4.5-1.935 0-3.597 1.126-4.312 2.733-.715-1.607-2.377-2.733-4.313-2.733C5.1 3.75 3 5.765 3 8.25c0 7.22 9 12 9 12s9-4.78 9-12Z" />
                        </svg>
                </button>

                <!-- notifikasi icon -->
                <button class="relative flex items-center px-3 py-2 border border-transparent text-sm leading-4 font-medium rounded-md text-white hover:text-gray-700 focus:outline-none transition ease-in-out duration-150">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="h-7 w-7">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M14.857 17.082a23.848 23.848 0 0 0 5.454-1.31A8.967 8.967 0 0 1 18 9.75V9A6 6 0 0 0 6 9v.75a8.967 8.967 0 0 1-2.312 6.022c1.733.64 3.56 1.085 5.455 1.31m5.714 0a24.255 24.255 0 0 1-5.714 0m5.714 0a3 3 0 1 1-5.714 0" />
                    </svg>
                </button>

                <!-- cart icon -->
                <button class="{{ request()->routeIs('cart.index') ? 'text-gray-900' : 'text-white' }} hover:text-gray-700 focus:text-gray-700 relative flex items-center  border border-transparent text-sm leading-4 font-medium rounded-md focus:outline-none transition ease-in-out duration-150">
                    <a href="{{ route('cart.index') }}">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="h-6 w-6">
                            <path stroke-linecap="round" stroke-linejoin="round" d="M2.25 3h1.386c.51 0 .955.343 1.087.835l.383 1.437M7.5 14.25a3 3 0 0 0-3 3h15.75m-12.75-3h11.218c1.121-2.3 2.1-4.684 2.924-7.138a60.114 60.114 0 0 0-16.536-1.84M7.5 14.25 5.106 5.272M6 20.25a.75.75 0 1 1-1.5 0 .75.75 0 0 1 1.5 0Zm12.75 0a.75.75 0 1 1-1.5 0 .75.75 0 0 1 1.5 0Z" />
                        </svg>
                    </a>
                </button>

               <!-- Cart Divider -->
               <div style="flex: 1; height: 64px; margin: 0 10px; position: relative;">
                    <div style="position: absolute; left: 50%; transform: translateX(-50%); border-left: 1px solid black; height: 100%;"></div>
                </div>
            </div>

            <!-- CTA Buttons -->
            <div class="hidden sm:flex items-center"> <!-- Hides on small screens -->
                <div class="cta">
                    <a href="{{ route('login') }}">Masuk</a>
                    @if (Route::has('register'))
                    <a href="{{ route('register') }}">Daftar</a>
                    @endif
                </div>
            </div>

            <!-- Hamburger -->
            <div class="-me-2 flex items-center sm:hidden">
                <button @click="open = ! open" class="inline-flex items-center justify-center p-2 rounded-md text-white hover:text-gray-500 hover:bg-gray-100 focus:outline-none focus:bg-gray-100 focus:text-gray-500 transition duration-150 ease-in-out">
                    <svg class="h-6 w-6" stroke="currentColor" fill="none" viewBox="0 0 24 24">
                        <path :class="{'hidden': open, 'inline-flex': ! open }" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
                        <path :class="{'hidden': ! open, 'inline-flex': open }" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
                    </svg>
                </button>
            </div>
        </div>
    </div>

    <!-- Responsive Navigation Menu -->
    <div :class="{'block': open, 'hidden': ! open}" class="hidden sm:hidden">
        <div class="pt-2 pb-3 space-y-1">
            <x-responsive-nav-link :href="route('dashboard')" :active="request()->routeIs('dashboard')" class="text-white">
                {{ __('Dashboard') }}
            </x-responsive-nav-link>
            <x-responsive-nav-link :href="route('products.index')" :active="request()->routeIs('products.index')" class="text-white">
                {{ __('Products') }}
            </x-responsive-nav-link>
        </div>

        <!-- Responsive CTA Buttons -->
        <div class="pt-4 pb-1 border-t border-gray-200" style="display: flex; gap: 10px;">
            <div class="space-y-1 flex" style="padding: 8px 12px; gap: 10px;">
                <x-responsive-nav-link :href="route('login')" class="text-white" style="border: 2px solid #EAFDCF; border-radius: 5px;">
                    {{ __('Masuk') }}
                </x-responsive-nav-link>
                @if (Route::has('register'))
                    <x-responsive-nav-link :href="route('register')" class="text-black" style="background-color: #EAFDCF; border: 2px solid #EAFDCF; border-radius: 5px;">
                        {{ __('Daftar') }}
                    </x-responsive-nav-link>
                @endif
            </div>
        </div>
    </div>
</nav>
