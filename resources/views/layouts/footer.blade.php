<style>
    footer {
        background-color: #8E8358;
        color: white;
        padding: 20px;
        width: 100%;
        box-sizing: border-box;
        margin-top: 20px;
    }

    footer .footer-content {
        display: flex;
        justify-content: space-between;
        max-width: 1200px;
        margin: 0 auto;
        text-align: left;
        flex-wrap: wrap;
        margin-top: 10px;
    }

    footer .about,
    footer .menu,
    footer .extra-menu,
    footer .contact {
        flex: 1;
        padding: 0 20px;
        min-width: 250px;
    }

    footer .about p:first-child,
    footer .menu p,
    footer .extra-menu p,
    footer .contact p {
        margin-bottom: 10px;
        font-weight: bold;
    }

    footer .menu ul,
    footer .extra-menu ul {
        list-style: none;
        padding: 0;
    }

    footer .menu ul li,
    footer .extra-menu ul li {
        margin: 10px 0;
    }

    footer .menu ul li a,
    footer .extra-menu ul li a {
        color: white;
        text-decoration: none;
        transition: color 0.3s;
    }

    footer .menu ul li a:hover,
    footer .extra-menu ul li a:hover {
        color: #D3BC8D;
    }

    footer .contact .icon {
        display: flex;
        align-items: center;
        margin: 10px 0;
        flex-direction: row;
        flex-wrap: nowrap;
    }

    footer .contact .icon i {
        margin-right: 10px;
    }

    footer .contact .icon span {
        white-space: nowrap;
    }

    footer .contact .icon .address {
        display: flex;
        flex-direction: column;
    }

    footer .contact .icon .address span {
        margin: 0;
        white-space: nowrap;
    }

    footer .contact .social-icons {
        margin-left: -10px;
    }

    footer .contact .social-icons a {
        color: white;
        margin: 0 10px;
        text-decoration: none;
        font-size: 1.2em;
        transition: color 0.3s;
    }

    footer .contact .social-icons a:hover {
        color: #D3BC8D;
    }

    footer .divider {
        border-top: 1px solid white;
        margin: 30px 0;
    }

    @media (max-width: 768px) {
        footer .footer-content {
            flex-direction: column;
        }

        footer .about,
        footer .menu,
        footer .extra-menu,
        footer .contact {
            padding: 10px 0;
        }
    }

    footer .footer-bottom {
        text-align: center;
        margin-top: 20px;
    }

    .modal {
        display: none;
        position: fixed;
        z-index: 1;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        overflow: auto;
        background-color: rgba(0, 0, 0, 0.5);
    }

    .modal-content {
        background-color: #EAFDCF;
        margin: 10% auto;
        padding: 20px;
        width: 80%;
        max-width: 600px;
        max-height: 70%;
        overflow-y: auto;
        color: black;
        border-radius: 10px;
    }

    .modal-content h1 {
        text-align: center;
        font-weight: bold;
    }

    .close {
        color: #aaa;
        float: right;
        font-size: 28px;
        font-weight: bold;
    }

    .close:hover,
    .close:focus {
        color: black;
        text-decoration: none;
        cursor: pointer;
    }
</style>

<footer class="dark:bg-gray-900 dark:text-white">
    <div class="footer-content">
        <div class="about">
            <p>Tentang Website</p>
            <p>FreshBeanPurwokerto adalah website</p>
        </div>
        <div class="menu">
            <p>Menu</p>
            <ul>
                <li><a href="{{ route('dashboard') }} ">Dashboard</a></li>
                <li><a href="{{ route('products.index') }}">Products</a></li>
            </ul>
        </div>
        <div class="extra-menu">
            <p>Menu Lainnya</p>
            <ul>
                <li><a href="#" id="privacy-policy">Privacy Policy</a></li>
                <li><a href="#" id="terms-conditions">Terms & Conditions</a></li>
            </ul>
        </div>
        <div class="contact">
            <p>Kontak Kami</p>
            <div class="icon">
                <i class="fas fa-map-marker-alt"></i>
                <span>Jl. Wargabakti III No.61, Purwokerto Lor</span>
            </div>
            <div class="icon">
                <i class="fab fa-whatsapp"></i>
                <span>0856-2608-880</span>
            </div>
            <p>Ikuti Kami</p>
            <div class="social-icons">
                <a href="#"><i class="fab fa-instagram"></i></a>
                <a href="#"><i class="fab fa-facebook"></i></a>
                <a href="#"><i class="fab fa-twitter"></i></a>
            </div>
        </div>
    </div>
    <div class="divider"></div>
    <div class="footer-bottom">
        <p>&copy; 2024 FreshBeanPurwokerto | Toko Suplier Biji Kopi. All Rights Reserved.</p>
    </div>
</footer>

<!-- The Modal for Privacy Policy -->
<div id="privacyModal" class="modal">
    <div class="modal-content">
        <span class="close" id="privacyClose">&times;</span>
        <h1>Kebijakan Privasi</h1>&nbsp;
        <h2>Selamat datang di website freshbeanpwt.</h2>
        <p>Kami berkomitmen untuk melindungi privasi Anda. Kebijakan Privasi ini menjelaskan bagaimana kami
            mengumpulkan, menggunakan, dan melindungi informasi pribadi Anda saat Anda
            mengunjungi situs kami.</p>&nbsp;
        <p>Kami mengumpulkan informasi pribadi seperti nama, alamat email, dan informasi pembayaran ketika Anda
            mendaftar atau melakukan pembelian di situs kami. Kami juga dapat mengumpulkan data
            anonim melalui penggunaan cookies untuk meningkatkan pengalaman Anda.</p>&nbsp;
        <p>Informasi yang kami kumpulkan digunakan untuk memproses pesanan Anda, memberikan
            layanan pelanggan, dan mengirimkan informasi terkait dengan produk dan layanan kami. Kami tidak akan
            membagikan informasi pribadi Anda dengan pihak ketiga tanpa izin Anda, kecuali jika diperlukan untuk
            memproses transaksi atau sesuai dengan kewajiban hukum.</p>&nbsp;
        <p>Kami mengambil langkah-langkah keamanan yang wajar untuk melindungi informasi pribadi Anda dari
            akses yang tidak sah, penggunaan, atau pengungkapan. Namun, tidak ada sistem yang sepenuhnya aman, dan kami
            tidak dapat menjamin keamanan absolut dari informasi Anda.</p>&nbsp;
        <p>Kami dapat memperbarui kebijakan privasi ini dari waktu ke waktu. Kami akan
            memberitahukan Anda tentang perubahan dengan memposting kebijakan yang diperbarui di situs kami. Anda
            disarankan untuk memeriksa kebijakan ini secara berkala.</p>&nbsp;
        <p>Jika Anda memiliki pertanyaan atau kekhawatiran tentang kebijakan privasi ini, jangan ragu untuk
            menghubungi kami di +62 812 3456 7890.</p>
    </div>
</div>

<!-- The Modal for Terms and Conditions -->
<div id="termsModal" class="modal">
    <div class="modal-content">
        <span class="close" id="termsClose">&times;</span>
        <h1>Syarat dan Ketentuan</h1>&nbsp;
        <h2><strong>Selamat datang di FreshBeanPurwokerto.</strong><br></h2>
        <p>Dengan mengakses atau menggunakan situs kami, Anda setuju untuk terikat oleh syarat dan ketentuan berikut. Jika Anda tidak setuju dengan syarat dan ketentuan ini, harap jangan menggunakan situs kami.</p>
        <p>1. Anda setuju untuk menggunakan situs ini hanya untuk tujuan yang sah dan sesuai dengan hukum
            yang berlaku. Anda tidak diperbolehkan untuk menggunakan situs ini untuk melakukan tindakan yang dapat
            merusak atau mengganggu fungsi situs.</p>&nbsp;
        <p>2. Semua konten yang terdapat di situs ini, termasuk tetapi tidak terbatas pada teks,
            gambar, dan logo, adalah milik FreshBeanPurwokerto dan dilindungi oleh hak cipta dan undang-undang
            kekayaan intelektual lainnya. Anda tidak diperbolehkan untuk menyalin, mendistribusikan, atau memodifikasi
            konten tanpa izin tertulis dari kami.</p>&nbsp;
        <p>3. Kami tidak bertanggung jawab atas kerusakan atau kerugian yang timbul dari
            penggunaan atau ketidakmampuan untuk menggunakan situs ini. Situs ini dapat berisi tautan ke situs web pihak
            ketiga, dan kami tidak bertanggung jawab atas konten atau kebijakan privasi dari situs-situs tersebut.</p>
        &nbsp;
        <p>4. Kami berhak untuk mengubah syarat dan ketentuan ini dari waktu ke waktu.
            Perubahan akan diposting di situs kami, dan penggunaan Anda atas situs setelah perubahan menunjukkan bahwa
            Anda menerima syarat dan ketentuan yang diperbarui.</p>&nbsp;
        <p>5. Syarat dan ketentuan ini diatur oleh hukum Indonesia. Setiap sengketa yang timbul
            dari penggunaan situs ini akan diselesaikan di pengadilan yang berwenang di Purwokerto.</p>&nbsp;
        <p>Jika Anda memiliki pertanyaan mengenai syarat dan ketentuan ini, silakan hubungi kami di +62 812 3456 7890.</p>
    </div>
</div>

<script>
    // Get the modals
    var privacyModal = document.getElementById("privacyModal");
    var termsModal = document.getElementById("termsModal");

    // Get the links that open the modals
    var privacyLink = document.getElementById("privacy-policy");
    var termsLink = document.getElementById("terms-conditions");

    // Get the <span> elements that close the modals
    var privacyClose = document.getElementById("privacyClose");
    var termsClose = document.getElementById("termsClose");

    // When the user clicks on the link, open the modal
    privacyLink.onclick = function () {
        privacyModal.style.display = "block";
    }

    termsLink.onclick = function () {
        termsModal.style.display = "block";
    }

    // When the user clicks on <span> (x), close the modal
    privacyClose.onclick = function () {
        privacyModal.style.display = "none";
    }

    termsClose.onclick = function () {
        termsModal.style.display = "none";
    }

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function (event) {
        if (event.target == privacyModal) {
            privacyModal.style.display = "none";
        }
        if (event.target == termsModal) {
            termsModal.style.display = "none";
        }
    }
</script>