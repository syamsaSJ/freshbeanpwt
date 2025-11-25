# FreshBeanPWT

FreshBeanPWT adalah sebuah website e-commerce khusus kopi yang menyediakan berbagai produk kopi premium dari berbagai daerah. Website ini dirancang untuk memberikan pengalaman berbelanja yang mudah, cepat, dan aman bagi para pecinta kopi.

---

## Fitur

- **Produk**
  - Menampilkan berbagai jenis kopi, termasuk detail produk seperti origin, kategori, roast level, harga, dan stok.
  - Upload gambar produk dengan tampilan yang menarik.

- **Keranjang & Checkout**
  - Tambah produk ke keranjang.
  - Hitung otomatis subtotal, total harga, dan biaya pengiriman.
  - Integrasi dengan API midtrans.

- **User & Profile**
  - Register & Login.
  - Update profil dan alamat pengiriman.
  - Riwayat pesanan lengkap dengan status pesanan.

- **Admin Panel (Filament)**
  - Kelola produk, kategori, origin, roast level, supplier, dan stok.
  - Kelola pesanan, pengiriman, dan pembayaran.
  - Dashboard dengan widget overview untuk pesanan dan pengguna baru.
  
- **Notifikasi**
  - Admin dapat mengirim update status pesanan.
  - User menerima notifikasi realtime melalui dropdown menu.

- **Responsive Design**
  - Tampilan responsif untuk desktop, tablet, dan mobile menggunakan Tailwind CSS dan CSS.

---

## Teknologi

- **Backend:** Laravel 10
- **Frontend:** Blade + Tailwind CSS + CSS
- **Admin Panel:** Filament
- **Database:** MySQL
- **API Integrasi:** Midtrans untuk pembayaran
- **Version Control:** Git

---

## Instalasi

1. Clone repository:

```bash
git clone https://github.com/syamsaSJ/freshbeanpwt.git
cd freshbeanpwt

2. Install dependencies:

```bash
composer install
npm install
npm run dev

3. Buat file .env dari .env.example:

```bash
cp .env.example .env
php artisan key:generate

4. Migrasi database:

```bash
php artisan migrate
atau
Upload file freshbeanpwt.sql di mysql

5. Jalankan server:

```bash
php artisan serve

Website akan berjalan di http://127.0.0.1:8000.

Struktur Folder Utama
app/            - Folder utama Laravel (Models, Controllers, Services)
database/       - Migrations, Seeders, Factories
resources/views - Blade templates
public/         - Assets publik (gambar, css, js)
routes/         - Web & API routes

Kontribusi
1. Fork repository ini.
2. Buat branch fitur baru (git checkout -b feature/fitur-baru).
3. Commit perubahan (git commit -m "Deskripsi perubahan").
4. Push ke branch (git push origin feature/fitur-baru).
5. Buat Pull Request.

Lisensi

Proyek ini dilisensikan di bawah MIT License. Lihat file LICENSE untuk detail lebih lanjut.

Kontak
Email: julyindasyamsa@gmail.com
Website: https://freshbeanpwt.com
Github: https://github.com/syamsaSJ