@php
    $panels = [
        'admin' => 'Admin Dashboard',
    ];
@endphp

<style>
    nav {
        background-color: #8E8358;
    }
</style>

<nav x-data="{ open: false }" class="border-b border-gray-100 fixed top-0 w-full z-50 dark:bg-gray-900">
    <!-- Primary Navigation Menu -->
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="flex justify-between h-16">

            <!-- Logo -->
            <div class="shrink-0 flex items-center text-white px-2 py-2">
                <a href=" {{ route('dashboard') }}">
                    <h1>
                        {{ config('app.name') }}
                    </h1>
                    <!-- <img src="{{ asset('images/iconshopwhite.png') }}" alt="Cart Icon" class="block h-6 w-auto"> -->
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
                    <span @click="searchOpen = !searchOpen" class="flex items-center whitespace-nowrap px-3 py-[0.25rem] text-surface dark:border-neutral-400 dark:text-white [&>svg]:h-6 [&>svg]:w-6 cursor-pointer hover:text-gray-700 dark:hover:text-gray-700">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" d="m21 21-5.197-5.197m0 0A7.5 7.5 0 1 0 5.196 5.196a7.5 7.5 0 0 0 10.607 10.607Z" />
                        </svg>
                    </span>

                    <!-- Search Input -->
                    <input x-show="searchOpen" x-ref="searchInput" type="search" placeholder="Search..."       
                        class="ml-2 mt-1 w-64 bg-white text-gray-950 text-surface placeholder:text-gray-500 focus:outline-none dark:text-white dark:placeholder:text-neutral-200 py-2 px-4 border border-neutral-200 dark:border-neutral-600 rounded-md transition-all duration-300 ease-in-out absolute left-0"
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

            <!-- Icon notifikasi dan Dropdown -->
            <div class="flex items-center">
                <!-- Favorite Icon -->
                <button class="{{ request()->routeIs('products.favorites') ? 'text-gray-900' : 'text-white' }} hover:text-gray-700 focus:text-gray-700 relative flex items-center px-3 py-2 border border-transparent text-sm leading-4 font-medium rounded-md focus:outline-none transition ease-in-out duration-150">
                    <a href="{{ route('products.favorites') }}">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="h-6 w-6">
                            <path stroke-linecap="round" stroke-linejoin="round" d="M21 8.25c0-2.485-2.099-4.5-4.688-4.5-1.935 0-3.597 1.126-4.312 2.733-.715-1.607-2.377-2.733-4.313-2.733C5.1 3.75 3 5.765 3 8.25c0 7.22 9 12 9 12s9-4.78 9-12Z" />
                        </svg>
                    </a>
                </button>

                <!-- Notifikasi Icon -->
                @livewire('database-notifications')
                
                <!-- Cart Icon -->
                <button
                    class="{{ request()->routeIs('cart.index') ? 'text-gray-900' : 'text-white' }} hover:text-gray-700 focus:text-gray-700 relative flex items-center px-3 py-2 border border-transparent text-sm leading-4 font-medium rounded-md focus:outline-none transition ease-in-out duration-150">
                    <a href="{{ route('cart.index') }}">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                            stroke="currentColor" class="h-6 w-6">
                            <path stroke-linecap="round" stroke-linejoin="round"
                                d="M2.25 3h1.386c.51 0 .955.343 1.087.835l.383 1.437M7.5 14.25a3 3 0 0 0-3 3h15.75m-12.75-3h11.218c1.121-2.3 2.1-4.684 2.924-7.138a60.114 60.114 0 0 0-16.536-1.84M7.5 14.25 5.106 5.272M6 20.25a.75.75 0 1 1-1.5 0 .75.75 0 0 1 1.5 0Zm12.75 0a.75.75 0 1 1-1.5 0 .75.75 0 0 1 1.5 0Z" />
                        </svg>
                        <span
                            class="absolute top-0 right-0 inline-flex items-center justify-center px-2 py-1 text-xs font-bold leading-none text-red-100 bg-stone-400 rounded-full cart-count">
                            {{ Auth::user()->cartItems->count() }}
                        </span>
                    </a>
                </button>

                <!-- Cart Divider -->
                <div class="flex items-center h-10 mx-2 relative dark:border-gray-600">
                    <div class="absolute left-1/2 transform -translate-x-1/2 border-l border-gray-900 dark:border-gray-400 h-full"></div>
                </div>

                <!-- Settings Dropdown -->
                <div class="hidden sm:flex sm:items-center">
                    <x-dropdown align="right" width="48">
                        <x-slot name="trigger">
                            <button
                                class="inline-flex items-center px-3 py-2 border border-transparent text-sm leading-4 font-medium rounded-md text-white hover:text-gray-700 focus:outline-none transition ease-in-out duration-150">
                                <img src="{{ Auth::user()->avatar ? asset('storage/' . Auth::user()->avatar) : 'https://via.placeholder.com/150' }}"
                                    class="h-7 w-7 rounded-full">
                                <div class="ms-1">
                                    <svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg"
                                        viewBox="0 0 20 20">
                                        <path fill-rule="evenodd"
                                            d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"
                                            clip-rule="evenodd" />
                                    </svg>
                                </div>
                            </button>
                        </x-slot>
                        <x-slot name="content">
                            <!-- jika role=admin maka terdapat dashboard admin -->
                            @foreach ($panels as $panelId => $label)
                                @if (Auth::user()->canAccessPanel(filament()->getPanel($panelId)))
                                    <x-dropdown-link :href="url('/' . $panelId)" class="flex items-center space-x-1 dark:text-white dark:hover:bg-gray-400">
                                        <svg xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="h-4 w-4">
                                            <path stroke-linecap="round" stroke-linejoin="round" d="M15.75 6a3.75 3.75 0 1 1-7.5 0 3.75 3.75 0 0 1 7.5 0ZM4.501 20.118a7.5 7.5 0 0 1 14.998 0A17.933 17.933 0 0 1 12 21.75c-2.676 0-5.216-.584-7.499-1.632Z" />
                                        </svg>
                                        &nbsp;&nbsp;{{ __($label) }}
                                    </x-dropdown-link>
                                @endif
                            @endforeach

                            <!-- History Order -->
                            <x-dropdown-link :href="route('order.history')" class="flex items-center space-x-1 dark:text-white dark:hover:bg-gray-400">
                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" class="h-4 w-4" fill="currentColor">
                                    <path d="M75 75L41 41C25.9 25.9 0 36.6 0 57.9L0 168c0 13.3 10.7 24 24 24l110.1 0c21.4 0 32.1-25.9 17-41l-30.8-30.8C155 85.5 203 64 256 64c106 0 192 86 192 192s-86 192-192 192c-40.8 0-78.6-12.7-109.7-34.4c-14.5-10.1-34.4-6.6-44.6 7.9s-6.6 34.4 7.9 44.6C151.2 495 201.7 512 256 512c141.4 0 256-114.6 256-256S397.4 0 256 0C185.3 0 121.3 28.7 75 75zm181 53c-13.3 0-24 10.7-24 24l0 104c0 6.4 2.5 12.5 7 17l72 72c9.4 9.4 24.6 9.4 33.9 0s9.4-24.6 0-33.9l-65-65 0-94.1c0-13.3-10.7-24-24-24z"/>
                                </svg>
                                &nbsp;&nbsp;{{ __('History Pembelian') }}
                            </x-dropdown-link>

                            <!-- Setting -->
                            <x-dropdown-link :href="route('profile.edit')" class="flex items-center space-x-1 dark:text-white dark:hover:bg-gray-400">
                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" fill="currentColor" class="h-4 w-4">
                                    <path fill-rule="evenodd" d="M6.455 1.45A.5.5 0 0 1 6.952 1h2.096a.5.5 0 0 1 .497.45l.186 1.858a4.996 4.996 0 0 1 1.466.848l1.703-.769a.5.5 0 0 1 .639.206l1.047 1.814a.5.5 0 0 1-.14.656l-1.517 1.09a5.026 5.026 0 0 1 0 1.694l1.516 1.09a.5.5 0 0 1 .141.656l-1.047 1.814a.5.5 0 0 1-.639.206l-1.703-.768c-.433.36-.928.649-1.466.847l-.186 1.858a.5.5 0 0 1-.497.45H6.952a.5.5 0 0 1-.497-.45l-.186-1.858a4.993 4.993 0 0 1-1.466-.848l-1.703.769a.5.5 0 0 1-.639-.206l-1.047-1.814a.5.5 0 0 1 .14-.656l1.517-1.09a5.033 5.033 0 0 1 0-1.694l-1.516-1.09a.5.5 0 0 1-.141-.656L2.46 3.593a.5.5 0 0 1 .639-.206l1.703.769c.433-.36.928-.65 1.466-.848l.186-1.858Zm-.177 7.567-.022-.037a2 2 0 0 1 3.466-1.997l.022.037a2 2 0 0 1-3.466 1.997Z" clip-rule="evenodd" />
                                </svg>
                                &nbsp;&nbsp;{{ __('Setting') }}
                            </x-dropdown-link>

                            <!-- Divider -->
                            <div style="flex: 1; position: relative; margin-bottom: 5px;">
                                <div
                                    style="position: absolute; top: 20%; transform: translateY(-50%); border-top: 1px solid grey; width: 100%;">
                                </div>
                            </div>

                            <!-- Authentication -->
                            <form method="POST" action="{{ route('logout') }}">
                                @csrf
                                <x-dropdown-link :href="route('logout')"
                                    onclick="event.preventDefault(); this.closest('form').submit();"
                                    class="flex items-center space-x-1 dark:text-white">
                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" width="15" height="14" fill="currentColor" class="inline-block">
                                        <path
                                            d="M377.9 105.9L500.7 228.7c7.2 7.2 11.3 17.1 11.3 27.3s-4.1 20.1-11.3 27.3L377.9 406.1c-6.4 6.4-15 9.9-24 9.9c-18.7 0-33.9-15.2-33.9-33.9l0-62.1-128 0c-17.7 0-32-14.3-32-32l0-64c0-17.7 14.3-32 32-32l128 0 0-62.1c0-18.7 15.2-33.9 33.9-33.9c9 0 17.6 3.6 24 9.9zM160 96L96 96c-17.7 0-32 14.3-32 32l0 256c0 17.7 14.3 32 32 32l64 0c17.7 0 32 14.3 32 32s-14.3 32-32 32l-64 0c-53 0-96-43-96-96L0 128C0 75 43 32 96 32l64 0c17.7 0 32 14.3 32 32s-14.3 32-32 32z" />
                                    </svg>
                                    &nbsp;&nbsp;{{ __('Log Out') }}
                                </x-dropdown-link>
                            </form>
                        </x-slot>
                    </x-dropdown>
                </div>

                @livewire('message-sidebar')
            </div>

            <!-- Hamburger -->
            <div class="-me-2 flex items-center sm:hidden">
                <button @click="open = ! open"
                    class="inline-flex items-center justify-center p-2 rounded-md text-white hover:text-gray-500 hover:bg-gray-100 focus:outline-none focus:bg-gray-100 focus:text-gray-500 transition duration-150 ease-in-out">
                    <svg class="h-6 w-6" stroke="currentColor" fill="none" viewBox="0 0 24 24">
                        <path :class="{'hidden': open, 'inline-flex': ! open }" stroke-linecap="round"
                            stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
                        <path :class="{'hidden': ! open, 'inline-flex': open }" stroke-linecap="round"
                            stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
                    </svg>
                </button>
            </div>
        </div>
    </div>

    <!-- Responsive Navigation Menu -->
    <div :class="{'block': open, 'hidden': ! open}" class="hidden sm:hidden">
        <div class="pt-2 pb-3 space-y-1">
            <x-responsive-nav-link :href="route('dashboard')" :active="request()->routeIs('dashboard')">
                {{ __('Dashboard') }}
            </x-responsive-nav-link>
            <x-responsive-nav-link :href="route('products.index')" :active="request()->routeIs('products.index')">
                {{ __('Products') }}
            </x-responsive-nav-link>
        </div>
        <!-- Responsive Settings Options -->
        <div class="pt-4 pb-1 border-t border-gray-200">
            <div class="space-y-1">

                <!-- admin dashboard -->
                @foreach ($panels as $panelId => $label)
                    @if (Auth::user()->canAccessPanel(filament()->getPanel($panelId)))
                        <x-dropdown-link :href="url('/' . $panelId)" class="flex items-center space-x-1">
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="15" height="14" class="inline-block">
                                <path d="M224 256A128 128 0 1 0 224 0a128 128 0 1 0 0 256zm-45.7 48C79.8 304 0 383.8 0 482.3C0 498.7 13.3 512 29.7 512l388.6 0c16.4 0 29.7-13.3 29.7-29.7C448 383.8 368.2 304 269.7 304l-91.4 0z"/>
                            </svg>
                            &nbsp;{{ __($label) }}
                        </x-dropdown-link>
                    @endif
                @endforeach
                <!-- admin dashboard -->

                <!-- History Pembelian -->
                <x-responsive-nav-link :href="route('order.history')" :active="request()->routeIs('order.history')"
                    class="flex items-center space-x-1">
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" width="15" height="14"
                        class="inline-block">
                        <path
                            d="M75 75L41 41C25.9 25.9 0 36.6 0 57.9V168c0 13.3 10.7 24 24 24H134.1c21.4 0 32.1-25.9 17-41l-30.8-30.8C155 85.5 203 64 256 64c106 0 192 86 192 192s-86 192-192 192c-40.8 0-78.6-12.7-109.7-34.4c-14.5-10.1-34.4-6.6-44.6 7.9s-6.6 34.4 7.9 44.6C151.2 495 201.7 512 256 512c141.4 0 256-114.6 256-256S397.4 0 256 0C185.3 0 121.3 28.7 75 75zm181 53c-13.3 0-24 10.7-24 24V256c0 6.4 2.5 12.5 7 17l72 72c9.4 9.4 24.6 9.4 33.9 0s9.4-24.6 0-33.9l-65-65V152c0-13.3-10.7-24-24-24z" />
                    </svg>
                    &nbsp;{{ __('History Pembelian') }}
                </x-responsive-nav-link>
                <!-- History Pembelian -->

                <!-- Setting -->
                <x-responsive-nav-link :href="route('profile.edit')" :active="request()->routeIs('profile.edit')"
                    class="flex items-center space-x-1">
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" width="15" height="14"
                        class="inline-block">
                        <path
                            d="M495.9 166.6c3.2 8.7 .5 18.4-6.4 24.6l-43.3 39.4c1.1 8.3 1.7 16.8 1.7 25.4s-.6 17.1-1.7 25.4l43.3 39.4c6.9 6.2 9.6 15.9 6.4 24.6c-4.4 11.9-9.7 23.3-15.8 34.3l-4.7 8.1c-6.6 11-14 21.4-22.1 31.2c-5.9 7.2-15.7 9.6-24.5 6.8l-55.7-17.7c-13.4 10.3-28.2 18.9-44 25.4l-12.5 57.1c-2 9.1-9 16.3-18.2 17.8c-13.8 2.3-28 3.5-42.5 3.5s-28.7-1.2-42.5-3.5c-9.2-1.5-16.2-8.7-18.2-17.8l-12.5-57.1c-15.8-6.5-30.6-15.1-44-25.4L83.1 425.9c-8.8 2.8-18.6 .3-24.5-6.8c-8.1-9.8-15.5-20.2-22.1-31.2l-4.7-8.1c-6.1-11-11.4-22.4-15.8-34.3c-3.2-8.7-.5-18.4 6.4-24.6l43.3-39.4C64.6 273.1 64 264.6 64 256s.6-17.1 1.7-25.4L22.4 191.2c-6.9-6.2-9.6-15.9-6.4-24.6c4.4-11.9 9.7-23.3 15.8-34.3l4.7-8.1c6.6-11 14-21.4 22.1-31.2c5.9-7.2 15.7-9.6 24.5-6.8l55.7 17.7c13.4-10.3 28.2-18.9 44-25.4l12.5-57.1c2-9.1 9-16.3 18.2-17.8C227.3 1.2 241.5 0 256 0s28.7 1.2 42.5 3.5c9.2 1.5 16.2 8.7 18.2 17.8l12.5 57.1c15.8 6.5 30.6 15.1 44 25.4l55.7-17.7c8.8-2.8 18.6-.3 24.5 6.8c8.1 9.8 15.5 20.2 22.1 31.2l4.7 8.1c6.1 11 11.4 22.4 15.8 34.3zM256 336a80 80 0 1 0 0-160 80 80 0 1 0 0 160z" />
                    </svg>
                    &nbsp;{{ __('Setting') }}
                </x-responsive-nav-link>
                <!-- Setting -->

                <!-- Authentication logout -->
                <form method="POST" action="{{ route('logout') }}">
                    @csrf
                    <x-responsive-nav-link :href="route('logout')"
                        onclick="event.preventDefault(); this.closest('form').submit();"
                        class="flex items-center space-x-1">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" width="15" height="14"
                            class="inline-block">
                            <path
                                d="M377.9 105.9L500.7 228.7c7.2 7.2 11.3 17.1 11.3 27.3s-4.1 20.1-11.3 27.3L377.9 406.1c-6.4 6.4-15 9.9-24 9.9c-18.7 0-33.9-15.2-33.9-33.9l0-62.1-128 0c-17.7 0-32-14.3-32-32l0-64c0-17.7 14.3-32 32-32l128 0 0-62.1c0-18.7 15.2-33.9 33.9-33.9c9 0 17.6 3.6 24 9.9zM160 96L96 96c-17.7 0-32 14.3-32 32l0 256c0 17.7 14.3 32 32 32l64 0c17.7 0 32 14.3 32 32s-14.3 32-32 32l-64 0c-53 0-96-43-96-96L0 128C0 75 43 32 96 32l64 0c17.7 0 32 14.3 32 32s-14.3 32-32 32z" />
                        </svg>
                        &nbsp;{{ __('Log Out') }}
                    </x-responsive-nav-link>
                </form>
                <!-- Authentication logout -->
            </div>
        </div>

        <!-- Responsive Settings Options -->
        <div class="pt-4 pb-1 border-t border-gray-200">
            <x-responsive-nav-link :href="route('profile.edit')" class="flex items-center space-x-1">
                <img src="{{ Auth::user()->avatar ? asset('storage/' . Auth::user()->avatar) : 'https://via.placeholder.com/150' }}"
                    class="h-6 w-6 rounded-full mr-2">
                &nbsp;{{ Auth::user()->name }}
            </x-responsive-nav-link>
        </div>
        <!-- Responsive Settings Options -->

    </div>
</nav>

<script>
    document.addEventListener('alpine:init', () => {
        Alpine.data('searchComponent', () => ({
            searchOpen: false,
            searchQuery: '',
            searchResults: [],

            async searchProducts() {
                if (this.searchQuery.length > 2) {
                    try {
                        const response = await fetch(`/api/products?search=${this.searchQuery}`);
                        const data = await response.json();
                        this.searchResults = data.products;
                    } catch (error) {
                        console.error('Error fetching search results:', error);
                    }
                } else {
                    this.searchResults = [];
                }
            }
        }));
    });
</script>