@if ($paginator->hasPages())
    <div role="navigation" aria-label="{{ __('Pagination Navigation') }}"
        class="relative z-0 inline-flex items-center justify-between w-full">
        {{-- Previous Page Link --}}
        @if ($paginator->onFirstPage())
            <span
                class="relative inline-flex items-center px-4 py-2 text-sm font-medium text-gray-500 bg-gray-200 border border-gray-300 cursor-not-allowed rounded-l-md dark:text-gray-500 dark:bg-gray-200">
                {!! __('« Previous') !!}
            </span>
        @else
            <a href="{{ $paginator->previousPageUrl() }}"
                class="relative inline-flex items-center px-4 py-2 text-sm font-medium text-blue-600 bg-white border border-gray-300 rounded-l-md hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500 dark:text-gray-500 dark:bg-gray-200">
                {!! __('« Previous') !!}
            </a>
        @endif

        {{-- Pagination Elements --}}
        <div class="relative inline-flex items-center">
            @foreach ($elements as $element)
                {{-- "Three Dots" Separator --}}
                @if (is_string($element))
                    <span
                        class="relative inline-flex items-center px-4 py-2 text-sm font-medium 
                            text-gray-500 bg-gray-200 border border-gray-300">
                            {{ $element }}
                    </span>
                @endif

                {{-- Array Of Links --}}
                @if (is_array($element))
                    @foreach ($element as $page => $url)
                        @if ($page == $paginator->currentPage())
                            <span class="relative inline-flex items-center px-4 py-2 text-sm font-medium 
                                                    text-gray-300 bg-gray-500 border border-gray-300
                                                    dark:text-gray-300 dark:bg-gray-500 dark:border dark:border-gray-300">
                                {{ $page }}
                            </span>
                        @else
                            <a href="{{ $url }}" class="relative inline-flex items-center px-4 py-2 text-sm font-medium 
                                                    text-gray-600 bg-white border border-gray-300 hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500 
                                                    dark:text-gray-500 dark:bg-gray-200 dark:hover:bg-gray-100">
                                {{ $page }}
                            </a>
                        @endif
                    @endforeach
                @endif
            @endforeach
        </div>

        {{-- Next Page Link --}}
        @if ($paginator->hasMorePages())
            <a href="{{ $paginator->nextPageUrl() }}"
                class="relative inline-flex items-center px-4 py-2 text-sm font-medium text-blue-600 bg-white border border-gray-300 rounded-r-md hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500 dark:text-gray-500 dark:bg-gray-200">
                {!! __('Next »') !!}
            </a>
        @else
            <span
                class="relative inline-flex items-center px-4 py-2 text-sm font-medium text-gray-500 bg-gray-200 border border-gray-300 cursor-not-allowed rounded-r-md dark:text-gray-500 dark:bg-gray-200">
                {!! __('Next »') !!}
            </span>
        @endif
    </div>
@endif
