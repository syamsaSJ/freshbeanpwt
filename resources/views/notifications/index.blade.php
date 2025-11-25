<!-- resources/views/notifications/index.blade.php -->

<!-- Tombol notifikasi untuk menampilkan dropdown -->
<div class="dropdown">
    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownNotifications" data-toggle="dropdown"
        aria-haspopup="true" aria-expanded="false">
        Notifications <span class="badge badge-pill badge-primary">{{ $notifications->count() }}</span>
    </button>
    <div class="dropdown-menu" aria-labelledby="dropdownNotifications">
        @foreach($notifications as $notification)
            <a class="dropdown-item" href="#">{{ $notification->data['message'] }}</a>
        @endforeach
    </div>
</div>
<!-- resources/views/notifications/index.blade.php -->

<!-- Tambahkan jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- Tambahkan Bootstrap JS (jika belum ada) -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.6.0/js/bootstrap.bundle.min.js"></script>

<!-- Script untuk menangani dropdown -->
<script>
    // Tambahkan event handler untuk menangani klik notifikasi
    $('.dropdown-toggle').on('click', function (e) {
        e.stopPropagation(); // Menghentikan event propagation agar dropdown tidak tertutup saat mengklik

        var $dropdownMenu = $(this).next('.dropdown-menu');

        // Toggle dropdown
        $dropdownMenu.toggleClass('show');

        // Tutup dropdown saat mengklik di luar dropdown
        $(document).on('click', function (e) {
            if (!$(e.target).closest('.dropdown').length) {
                $dropdownMenu.removeClass('show');
            }
        });
    });
</script>