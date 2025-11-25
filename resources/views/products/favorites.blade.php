<x-app-layout>
    <div class="container mx-auto mt-20 px-4 lg:px-8">
        <!-- Breadcrumb Navigation -->
        <div class="breadcrumb flex items-center mb-6 p-2">
            <ol class="flex items-center whitespace-nowrap">
                <li class="inline-flex items-center">
                    <a class="flex items-center text-sm text-gray-500 hover:text-gray-900 focus:outline-none focus:text-gray-900 dark:text-gray-200 dark:hover:text-gray-500"
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
                <li class="inline-flex items-center text-sm font-semibold text-gray-800 truncate dark:text-gray-50"
                    aria-current="page">
                    Favorite
                </li>
            </ol>
        </div>

        <!-- Favorite Products Section -->
        <div class="rounded-lg p-6 mb-3 border border-gray-500">
            <h1 class="text-2xl font-bold mb-4">My Favorite</h1>

            @if($favorites->isEmpty())
                <p class="text-gray-500">Belum ada produk favorit.</p>
            @else
                @foreach($favorites as $favorite)
                    <div class="flex items-center justify-between p-4 rounded-lg mb-4 border border-gray-500 hover:bg-slate-400">
                        <a href="{{ route('products.show', $favorite->product->id) }}" class="flex items-center space-x-4">
                            <img src="{{ asset('storage/' . $favorite->product->image) }}" alt="{{ $favorite->product->name }}"
                                class="h-24 w-24 object-cover rounded-md shadow-sm">
                            <div class="flex-1">
                                <p class="text-lg font-medium text-gray-800">{{ $favorite->product->name }}</p>
                            </div>
                        </a>
                        <form action="{{ route('favorites.remove', $favorite->product->id) }}" method="POST">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="text-red-600 hover:text-red-800 font-medium">
                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" class="size-6">
                                    <path fill-rule="evenodd"
                                        d="M16.5 4.478v.227a48.816 48.816 0 0 1 3.878.512.75.75 0 1 1-.256 1.478l-.209-.035-1.005 13.07a3 3 0 0 1-2.991 2.77H8.084a3 3 0 0 1-2.991-2.77L4.087 6.66l-.209.035a.75.75 0 0 1-.256-1.478A48.567 48.567 0 0 1 7.5 4.705v-.227c0-1.564 1.213-2.9 2.816-2.951a52.662 52.662 0 0 1 3.369 0c1.603.051 2.815 1.387 2.815 2.951Zm-6.136-1.452a51.196 51.196 0 0 1 3.273 0C14.39 3.05 15 3.684 15 4.478v.113a49.488 49.488 0 0 0-6 0v-.113c0-.794.609-1.428 1.364-1.452Zm-.355 5.945a.75.75 0 1 0-1.5.058l.347 9a.75.75 0 1 0 1.499-.058l-.346-9Zm5.48.058a.75.75 0 1 0-1.498-.058l-.347 9a.75.75 0 0 0 1.5.058l.345-9Z"
                                        clip-rule="evenodd" />
                                </svg>
                            </button>
                        </form>
                    </div>
                @endforeach
            @endif
        </div>
    </div>
</x-app-layout>