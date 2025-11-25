<!DOCTYPE html>
<html>

<head>
    <title>Laporan Stok Barang</title>
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        .container {
            padding: 20px;
            background-color: #ffffff;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            margin: 20px auto;
            width: 95%;
            max-width: 1200px;
        }

        h1 {
            text-align: center;
            color: #333;
            font-size: 28px;
            margin-bottom: 20px;
        }

        p {
            text-align: center;
            color: #777;
            margin-bottom: 30px;
            font-size: 16px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            font-size: 14px;
        }

        table,
        th,
        td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: #007bff;
            color: #fff;
        }

        tbody tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tbody tr:hover {
            background-color: #f1f1f1;
        }

        th,
        td {
            border-left: 2px solid #007bff;
        }

        th:first-child,
        td:first-child {
            border-left: none;
        }
    </style>
</head>

<body>
    <div class="container">
        <h1>Laporan Stok Barang</h1>
        <p>{{ now()->format('d-m-Y H:i:s') }}</p>
        <table>
            <thead>
                <tr>
                    <th>Kode Barang</th>
                    <th>Nama Barang</th>
                    <th>Stok Awal</th>
                    <th>Stok Masuk</th>
                    <th>Stok Keluar</th>
                    <th>Stok Tersedia</th>
                    <th>Tanggal Update</th>
                </tr>
            </thead>
            <tbody>
                @foreach($StokBarang as $item)
                    <tr>
                        <td>{{ $item->product->kode }}</td>
                        <td>{{ $item->product->name }}</td>
                        <td>{{ $item->stokAwal }}</td>
                        <td>{{ $item->stokMasuk }}</td>
                        <td>{{ $item->stokKeluar }}</td>
                        <td>{{ $item->stokTersedia }}</td>
                        <td>{{ $item->created_at->format('d-m-Y H:i:s') }}</td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</body>

</html>