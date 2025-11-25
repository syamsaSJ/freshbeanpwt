<x-app-layout>
    <style>
        .container {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            padding: 20px;
            margin-left: 50px;
        }

        .sidebar {
            width: 250px;
            padding: 20px;
            background-color: #f5f5f5;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-top: 70px;
        }

        .content {
            flex: 1;
            padding: 20px;
            border-radius: 8px;
            margin-top: 70px;
        }

        .breadcrumb {
            margin-bottom: 20px;
        }

        .products {
            display: grid;
            grid-template-columns: repeat(5, 1fr);
            gap: 20px;
        }

        .product {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
            transition: transform 0.2s;
        }

        .product:hover {
            transform: scale(1.05);
        }

        .product img {
            width: auto;
            height: auto;
            border-radius: 8px;
            margin-bottom: 15px;
        }

        .product h3 {
            font-size: 1em;
            margin-bottom: 5px;
            text-align: left;
        }

        .product p {
            color: #555;
            margin-bottom: 10px;
            text-align: left;
        }

        .sidebar h3,
        .sidebar h4 {
            color: #333;
            margin-bottom: 10px;
        }

        .sidebar ul {
            list-style-type: none;
            padding: 0;
        }

        .sidebar ul li {
            margin-bottom: 10px;
        }

        .sidebar ul li label {
            display: flex;
            align-items: center;
            cursor: pointer;
        }

        .sidebar ul li input[type="checkbox"] {
            margin-right: 10px;
        }

        .filter {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
            font-size: 17pt;
        }

        .toggle-section {
            display: flex;
            justify-content: space-between;
            align-items: center;
            cursor: pointer;
            padding: 10px 0;
        }

        .toggle-section i {
            transition: transform 0.3s;
        }

        .toggle-section.collapsed i {
            transform: rotate(180deg);
        }

        .toggle-section-content {
            display: none;
        }

        .toggle-section-content.show {
            display: block;
        }

        @media (max-width: 768px) {
            .container {
                flex-direction: column;
                margin-left: 0;
            }

            .sidebar {
                width: 100%;
            }

            .products {
                grid-template-columns: repeat(2, 1fr);
            }

            .pagination {
                flex-direction: column;
                align-items: center;
            }

            .pagination a,
            .pagination span {
                font-size: 0.875rem;
            }
        }

        @media (max-width: 480px) {
            .products {
                grid-template-columns: 1fr;
            }
        }
    </style>
    <div class="container">
        <div class="sidebar dark:bg-gray-500">
            <div class="filter">
                <h1>Filters</h1>
                <i class="fas fa-filter"></i>
            </div>
            <form method="GET" action="{{ route('products.index') }}" id="filter-form">
                @csrf
                <div class="toggle-section" data-target="#category-content">
                    <h4 class="dark:text-white">Kategori</h4>
                    <i class="fas fa-chevron-down"></i>
                </div>
                <div id="category-content" class="toggle-section-content">
                    <ul>
                        @foreach ($categories as $category)
                            <li>
                                <label>
                                    <input type="checkbox" name="categories[]" value="{{ $category->id }}" {{ is_array(request('categories')) && in_array($category->id, request('categories')) ? 'checked' : '' }}>
                                    {{ $category->name }}
                                </label>
                            </li>
                        @endforeach
                    </ul>
                </div>

                <div class="toggle-section" data-target="#origin-content">
                    <h4 class="dark:text-white">Asal</h4>
                    <i class="fas fa-chevron-down"></i>
                </div>
                <div id="origin-content" class="toggle-section-content">
                    <ul id="origin-list">
                        @foreach ($origins->take(5) as $origin)
                            <li>
                                <label>
                                    <input type="checkbox" name="origins[]" value="{{ $origin->id }}" {{ is_array(request('origins')) && in_array($origin->id, request('origins')) ? 'checked' : '' }}>
                                    {{ $origin->name }}
                                </label>
                            </li>
                        @endforeach
                    </ul>
                    @if ($origins->count() > 5)
                        <a href="#" id="show-more-origins">Lihat Selengkapnya</a>
                    @endif
                    <div id="more-origins" style="display: none;">
                        <ul>
                            @foreach ($origins->slice(5) as $origin)
                                <li>
                                    <label>
                                        <input type="checkbox" name="origins[]" value="{{ $origin->id }}" {{ is_array(request('origins')) && in_array($origin->id, request('origins')) ? 'checked' : '' }}>
                                        {{ $origin->name }}
                                    </label>
                                </li>
                            @endforeach
                        </ul>
                    </div>
                </div>
            </form>
        </div>

        <div class="content" id="products-container">
            <div class="breadcrumb">
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
                        Product
                    </li>
                </ol>
            </div>
            <div class="products">
                @foreach ($products as $product)
                    <div class="product dark:bg-gray-500">
                        <a href="{{ route('products.show', $product->id) }}">
                            <img src="{{ asset('storage/' . $product->image) }}" alt="{{ $product->name }}"
                                class="h-9 w-9 rounded">
                            <h3>{{ $product->name }}</h3>
                            <p>Rp. {{ number_format($product->price, 0, ',', '.') }}</p>
                        </a>
                    </div>
                @endforeach
            </div>
            <div class="pagination mt-6">
                {{ $products->links('vendor.pagination.tailwind') }}
            </div>
        </div>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            document.querySelectorAll('.toggle-section').forEach(section => {
                section.addEventListener('click', function () {
                    const content = document.querySelector(this.getAttribute('data-target'));
                    content.classList.toggle('show');
                    this.classList.toggle('collapsed');
                });
            });

            document.getElementById('show-more-origins').addEventListener('click', function (event) {
                event.preventDefault();
                document.getElementById('more-origins').style.display = 'block';
                this.style.display = 'none';
            });

            document.querySelectorAll('input[type="checkbox"]').forEach(checkbox => {
                checkbox.addEventListener('change', fetchProducts);
            });

            function fetchProducts() {
                const form = document.getElementById('filter-form');
                const formData = new FormData(form);
                const queryString = new URLSearchParams(formData).toString();

                fetch(`{{ route('products.index') }}?${queryString}`, {
                    headers: {
                        'X-Requested-With': 'XMLHttpRequest'
                    }
                })
                    .then(response => response.json())
                    .then(data => {
                        const productsContainer = document.getElementById('products-container');
                        productsContainer.innerHTML = data.html;
                    })
                    .catch(error => {
                        console.error('Error fetching products:', error);
                    });
            }
        });
    </script>
</x-app-layout>