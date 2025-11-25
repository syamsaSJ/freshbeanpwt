-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Nov 2025 pada 02.50
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `freshbeanpwt`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `authentication_log`
--

CREATE TABLE `authentication_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `authenticatable_type` varchar(255) NOT NULL,
  `authenticatable_id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `login_at` timestamp NULL DEFAULT NULL,
  `login_successful` tinyint(1) NOT NULL DEFAULT 0,
  `logout_at` timestamp NULL DEFAULT NULL,
  `cleared_by_user` tinyint(1) NOT NULL DEFAULT 0,
  `location` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`location`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `authentication_log`
--

INSERT INTO `authentication_log` (`id`, `authenticatable_type`, `authenticatable_id`, `ip_address`, `user_agent`, `login_at`, `login_successful`, `logout_at`, `cleared_by_user`, `location`) VALUES
(1, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, 0, '2024-08-12 06:40:17', 0, NULL),
(2, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-12 06:40:39', 1, '2024-08-12 08:54:44', 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(3, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-12 08:54:51', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(4, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-12 10:15:40', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(5, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-12 10:37:29', 1, '2024-08-12 10:47:15', 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(6, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-12 10:48:12', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(7, 'App\\Models\\User', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-12 11:21:53', 0, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(8, 'App\\Models\\User', 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-12 11:22:36', 0, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(9, 'App\\Models\\User', 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-12 11:22:47', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(10, 'App\\Models\\User', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-12 11:54:03', 0, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(11, 'App\\Models\\User', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-12 11:54:23', 0, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(12, 'App\\Models\\User', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-12 11:55:39', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(13, 'App\\Models\\User', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-12 16:14:02', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(14, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-13 01:58:36', 1, '2024-08-13 02:03:29', 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(15, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-13 02:04:31', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(16, 'App\\Models\\User', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-13 02:16:59', 0, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(17, 'App\\Models\\User', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-13 02:17:15', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(18, 'App\\Models\\User', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-13 12:43:58', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(19, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-13 13:05:59', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(20, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-13 13:28:44', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(21, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-14 02:31:37', 1, '2024-08-14 11:41:23', 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(22, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-14 11:45:24', 1, '2024-08-14 11:47:01', 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(23, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-14 11:47:33', 1, '2024-08-14 11:47:49', 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(24, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-14 11:50:02', 1, '2024-08-14 11:50:56', 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(25, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-14 11:51:27', 1, '2024-08-14 11:51:39', 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(26, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-14 11:51:55', 1, '2024-08-14 12:01:27', 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(27, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-14 12:01:54', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(28, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-15 03:49:54', 1, '2024-08-15 07:36:39', 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(29, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-15 07:57:33', 1, '2024-08-15 07:58:48', 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(30, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-15 07:58:59', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(31, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-16 02:58:31', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(32, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-17 04:19:10', 1, '2024-08-17 13:43:58', 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(33, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-17 13:45:03', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(34, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-18 03:18:08', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(35, 'App\\Models\\User', 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-18 16:17:45', 0, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(36, 'App\\Models\\User', 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-18 16:18:04', 0, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(37, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-18 16:18:19', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(38, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-19 03:19:13', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(39, 'App\\Models\\User', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-19 04:20:57', 0, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(40, 'App\\Models\\User', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-19 04:21:54', 0, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(41, 'App\\Models\\User', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-19 04:22:14', 1, '2024-08-19 05:51:30', 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(42, 'App\\Models\\User', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-19 05:55:38', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(43, 'App\\Models\\User', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-19 06:43:30', 0, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(44, 'App\\Models\\User', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-19 06:43:46', 0, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(45, 'App\\Models\\User', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-19 06:44:29', 0, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(46, 'App\\Models\\User', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-19 06:45:47', 0, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(47, 'App\\Models\\User', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-19 06:46:03', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(48, 'App\\Models\\User', 9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-19 07:50:49', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(49, 'App\\Models\\User', 10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-19 07:51:42', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(50, 'App\\Models\\User', 11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-19 07:53:27', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(51, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-19 09:23:17', 1, '2024-08-19 10:47:47', 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(52, 'App\\Models\\User', 12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-19 09:59:05', 1, '2024-08-19 10:00:49', 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(53, 'App\\Models\\User', 12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-19 10:16:16', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(54, 'App\\Models\\User', 13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-19 10:23:05', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(55, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-19 10:49:35', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(56, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 00:40:33', 1, '2024-08-20 08:45:39', 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(57, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:45:54', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.2088,\"lon\":106.8456,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(58, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 09:43:34', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(59, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 09:48:45', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(60, 'App\\Models\\User', 16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 09:55:56', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(61, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-21 03:59:17', 1, '2024-08-21 05:47:09', 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(62, 'App\\Models\\User', 16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-21 04:15:53', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(63, 'App\\Models\\User', 17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-21 05:47:49', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(64, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-21 05:48:26', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(65, 'App\\Models\\User', 18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-21 05:51:21', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(66, 'App\\Models\\User', 19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-21 05:56:06', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(67, 'App\\Models\\User', 20, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-21 05:56:43', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(68, 'App\\Models\\User', 21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-21 05:57:31', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(69, 'App\\Models\\User', 22, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-21 06:06:10', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(70, 'App\\Models\\User', 23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-21 06:32:38', 1, '2024-08-21 07:32:54', 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"US\",\"country\":\"United States\",\"city\":\"New Haven\",\"state\":\"CT\",\"state_name\":\"Connecticut\",\"postal_code\":\"06510\",\"lat\":41.31,\"lon\":-72.92,\"timezone\":\"America\\/New_York\",\"continent\":\"NA\",\"currency\":\"USD\",\"default\":true,\"cached\":false}'),
(71, 'App\\Models\\User', 23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-21 07:33:09', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(72, 'App\\Models\\User', 23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-21 13:30:24', 1, '2024-08-21 14:37:58', 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(73, 'App\\Models\\User', 22, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-21 13:45:03', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(74, 'App\\Models\\User', 16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-21 14:39:01', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(75, 'App\\Models\\User', 23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-21 14:51:41', 1, '2024-08-21 14:52:36', 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(76, 'App\\Models\\User', 24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-21 14:53:55', 1, '2024-08-21 14:54:23', 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(77, 'App\\Models\\User', 23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-21 14:54:42', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(78, 'App\\Models\\User', 25, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-21 15:06:17', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(79, 'App\\Models\\User', 25, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-21 15:08:01', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(80, 'App\\Models\\User', 26, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-21 15:21:29', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(81, 'App\\Models\\User', 27, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-21 15:32:32', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(82, 'App\\Models\\User', 28, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-21 15:38:11', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(83, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-22 00:44:57', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(84, 'App\\Models\\User', 29, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-22 05:47:58', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(85, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-23 05:00:40', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(86, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-24 05:58:21', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(87, 'App\\Models\\User', 1, '192.168.1.4', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '2024-08-24 08:20:24', 0, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(88, 'App\\Models\\User', 1, '192.168.1.5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-24 08:21:42', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(89, 'App\\Models\\User', 1, '192.168.1.4', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '2024-08-24 08:22:09', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(90, 'App\\Models\\User', 1, '192.168.1.5', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '2024-08-24 10:02:26', 0, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(91, 'App\\Models\\User', 1, '192.168.1.5', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '2024-08-24 10:02:38', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(92, 'App\\Models\\User', 1, '192.168.1.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-24 10:09:06', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(93, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-25 02:44:26', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(94, 'App\\Models\\User', 24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-25 09:48:18', 0, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(95, 'App\\Models\\User', 24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-25 09:48:30', 0, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(96, 'App\\Models\\User', 24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-25 09:48:40', 0, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(97, 'App\\Models\\User', 24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-25 09:50:23', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(98, 'App\\Models\\User', 33, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-25 11:54:29', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(99, 'App\\Models\\User', 33, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-25 11:54:51', 1, '2024-08-25 11:55:30', 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}');
INSERT INTO `authentication_log` (`id`, `authenticatable_type`, `authenticatable_id`, `ip_address`, `user_agent`, `login_at`, `login_successful`, `logout_at`, `cleared_by_user`, `location`) VALUES
(100, 'App\\Models\\User', 33, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-25 11:55:44', 1, '2024-08-25 12:16:00', 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(101, 'App\\Models\\User', 33, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-25 12:16:13', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(102, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-26 03:15:02', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(103, 'App\\Models\\User', 33, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-26 05:26:10', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(104, 'App\\Models\\User', 34, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-26 07:54:56', 1, '2024-08-26 07:59:37', 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(105, 'App\\Models\\User', 35, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-26 08:00:12', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(106, 'App\\Models\\User', 36, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-26 08:08:29', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(107, 'App\\Models\\User', 37, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-26 08:38:16', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(108, 'App\\Models\\User', 38, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-26 08:42:03', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(109, 'App\\Models\\User', 39, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-26 08:42:56', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(110, 'App\\Models\\User', 24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-26 08:59:58', 1, '2024-08-26 09:35:53', 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(111, 'App\\Models\\User', 40, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-26 09:02:43', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(112, 'App\\Models\\User', 41, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-26 09:15:04', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(113, 'App\\Models\\User', 24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-26 09:36:12', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(114, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-27 03:02:35', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(115, 'App\\Models\\User', 24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-27 04:39:30', 1, '2024-08-27 04:40:23', 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(116, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-27 04:40:35', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(117, 'App\\Models\\User', 41, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-27 04:44:04', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(118, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '2024-08-28 01:55:50', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(119, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '2024-08-29 01:51:48', 1, '2024-08-29 06:32:56', 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(120, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '2024-08-29 07:15:21', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(121, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '2024-09-26 02:48:32', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(122, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '2024-10-11 03:10:33', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(123, 'App\\Models\\User', 24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '2024-10-11 03:10:53', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(124, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '2024-10-11 03:12:01', 1, '2024-10-11 03:52:24', 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(125, 'App\\Models\\User', 24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '2024-10-11 03:53:22', 1, '2024-10-11 03:53:37', 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(126, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '2024-10-20 12:29:35', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}'),
(127, 'App\\Models\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '2024-11-06 02:01:48', 1, NULL, 0, '{\"ip\":\"127.0.0.0\",\"iso_code\":\"ID\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"state\":\"JK\",\"state_name\":\"Jakarta\",\"postal_code\":\"10110\",\"lat\":-6.21,\"lon\":106.85,\"timezone\":\"Asia\\/Jakarta\",\"continent\":\"AS\",\"currency\":\"IDR\",\"default\":true,\"cached\":false}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `brng_klrs`
--

CREATE TABLE `brng_klrs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `status` enum('terjual','rusak','','') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `brng_klrs`
--

INSERT INTO `brng_klrs` (`id`, `product_id`, `supplier_id`, `quantity`, `status`, `created_at`, `updated_at`) VALUES
(58, 46, 1, 100, NULL, '2024-08-07 13:27:43', '2024-08-07 13:27:43'),
(59, 46, 1, 100, NULL, '2024-08-07 13:30:28', '2024-08-07 15:35:21'),
(60, 46, 1, 100, NULL, '2024-08-07 13:36:09', '2024-08-07 15:35:33'),
(61, 47, 1, 500, NULL, '2024-08-07 13:46:15', '2024-08-07 15:35:53'),
(62, 47, 1, 500, NULL, '2024-08-07 13:47:20', '2024-08-07 15:36:04'),
(63, 46, 1, 100, NULL, '2024-08-07 13:53:53', '2024-08-07 15:36:15'),
(64, 46, 1, 100, NULL, '2024-08-07 14:01:30', '2024-08-07 15:36:27'),
(65, 46, 1, 100, NULL, '2024-08-07 14:15:26', '2024-08-07 15:36:39'),
(66, 46, 1, 100, NULL, '2024-08-07 14:25:21', '2024-08-07 14:25:21'),
(67, 46, 1, 100, NULL, '2024-08-07 14:32:12', '2024-08-07 14:32:12'),
(68, 46, 1, 100, NULL, '2024-08-07 14:33:52', '2024-08-07 14:33:52'),
(69, 46, 1, 100, NULL, '2024-08-07 14:43:22', '2024-08-07 14:43:22'),
(70, 46, 1, 100, NULL, '2024-08-07 16:11:00', '2024-08-07 16:11:00'),
(71, 46, 1, 100, NULL, '2024-08-07 16:12:12', '2024-08-07 16:12:12'),
(72, 46, 1, 100, NULL, '2024-08-07 16:15:35', '2024-08-07 16:15:35'),
(73, 46, 1, 100, NULL, '2024-08-07 16:50:22', '2024-08-07 16:50:22'),
(74, 46, 1, 100, NULL, '2024-08-07 16:52:11', '2024-08-07 16:52:11'),
(75, 46, 1, 200, NULL, '2024-08-07 17:01:52', '2024-08-07 17:01:52'),
(76, 46, 1, 200, NULL, '2024-08-07 17:03:30', '2024-08-07 17:03:30'),
(77, 46, 1, 200, NULL, '2024-08-07 17:04:21', '2024-08-07 17:04:21'),
(78, 46, 1, 100, 'terjual', '2024-08-07 17:11:30', '2024-08-07 17:11:30'),
(79, 46, 1, 350, 'terjual', '2024-08-13 14:32:42', '2024-08-13 14:32:42'),
(80, 46, 1, 300, 'terjual', '2024-08-13 14:53:23', '2024-08-13 14:53:23'),
(81, 46, 1, 300, 'terjual', '2024-08-13 15:06:42', '2024-08-13 15:06:42'),
(82, 46, 1, 100, 'terjual', '2024-08-13 15:20:07', '2024-08-13 15:20:07'),
(83, 46, 1, 100, 'terjual', '2024-08-13 15:23:18', '2024-08-13 15:23:18'),
(84, 46, 1, 100, 'terjual', '2024-08-14 14:04:40', '2024-08-14 14:04:40'),
(85, 46, 1, 100, 'terjual', '2024-08-14 14:14:49', '2024-08-14 14:14:49'),
(86, 47, 1, 1000, 'terjual', '2024-08-18 13:56:42', '2024-08-18 13:56:42'),
(87, 46, 1, 100, 'terjual', '2024-08-26 06:05:09', '2024-08-26 06:05:09'),
(88, 46, 1, 100, 'terjual', '2024-08-27 13:36:39', '2024-08-27 13:36:39'),
(89, 47, 1, 500, 'terjual', '2024-11-25 08:13:21', '2024-11-25 08:13:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `brng_msks`
--

CREATE TABLE `brng_msks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `received_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `brng_msks`
--

INSERT INTO `brng_msks` (`id`, `product_id`, `supplier_id`, `quantity`, `received_at`, `created_at`, `updated_at`) VALUES
(63, 46, 1, 1000, '2024-08-07 13:27:11', '2024-08-07 13:27:11', '2024-08-07 13:27:11'),
(64, 47, 1, 1000, '2024-08-07 13:42:28', '2024-08-07 13:42:28', '2024-08-07 13:42:28'),
(65, 46, 1, 1000, '2024-08-07 14:53:31', '2024-08-07 14:53:31', '2024-08-07 14:53:31'),
(66, 46, 1, 500, '2024-08-13 14:48:39', '2024-08-13 14:48:39', '2024-08-13 14:48:39'),
(67, 46, 1, 1000, '2024-08-14 09:05:30', '2024-08-14 09:05:30', '2024-08-14 09:05:30'),
(68, 47, 1, 1000, '2024-08-15 04:17:45', '2024-08-15 04:17:45', '2024-08-15 04:17:45'),
(69, 47, 1, 1000, '2024-08-21 10:22:15', '2024-08-21 10:22:15', '2024-08-21 10:22:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart_items`
--

CREATE TABLE `cart_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `varian` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cart_items`
--

INSERT INTO `cart_items` (`id`, `user_id`, `product_id`, `quantity`, `varian`, `created_at`, `updated_at`) VALUES
(206, 44, 46, 1, 'Giling', '2024-11-13 07:44:07', '2024-11-13 07:44:07'),
(212, 1, 46, 2, 'Giling', '2024-12-26 03:31:22', '2024-12-26 03:32:13'),
(214, 24, 46, 1, 'Giling', '2025-08-05 07:21:42', '2025-08-05 07:21:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Arabica', '2024-07-11 01:50:15', '2024-07-11 01:50:15'),
(2, 'Robusta', '2024-07-11 01:50:21', '2024-07-11 01:50:21'),
(3, 'Liberica', '2024-08-21 14:24:42', '2024-08-21 14:24:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `chats`
--

CREATE TABLE `chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `chats`
--

INSERT INTO `chats` (`id`, `user_id`, `receiver_id`, `message`, `read`, `created_at`, `updated_at`) VALUES
(1, 24, 1, 'halo', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 24, 'iya halo', 0, '2024-08-27 05:44:32', '2024-08-27 05:44:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_id` int(11) NOT NULL,
  `province_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cities`
--

INSERT INTO `cities` (`id`, `city_id`, `province_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 17, 1, 'Badung', '2024-07-14 14:32:46', '2024-07-14 14:32:46'),
(2, 32, 1, 'Bangli', '2024-07-14 14:32:46', '2024-07-14 14:32:46'),
(3, 94, 1, 'Buleleng', '2024-07-14 14:32:46', '2024-07-14 14:32:46'),
(4, 114, 1, 'Denpasar', '2024-07-14 14:32:46', '2024-07-14 14:32:46'),
(5, 128, 1, 'Gianyar', '2024-07-14 14:32:46', '2024-07-14 14:32:46'),
(6, 161, 1, 'Jembrana', '2024-07-14 14:32:46', '2024-07-14 14:32:46'),
(7, 170, 1, 'Karangasem', '2024-07-14 14:32:46', '2024-07-14 14:32:46'),
(8, 197, 1, 'Klungkung', '2024-07-14 14:32:46', '2024-07-14 14:32:46'),
(9, 447, 1, 'Tabanan', '2024-07-14 14:32:46', '2024-07-14 14:32:46'),
(10, 27, 2, 'Bangka', '2024-07-14 14:32:46', '2024-07-14 14:32:46'),
(11, 28, 2, 'Bangka Barat', '2024-07-14 14:32:46', '2024-07-14 14:32:46'),
(12, 29, 2, 'Bangka Selatan', '2024-07-14 14:32:46', '2024-07-14 14:32:46'),
(13, 30, 2, 'Bangka Tengah', '2024-07-14 14:32:46', '2024-07-14 14:32:46'),
(14, 56, 2, 'Belitung', '2024-07-14 14:32:46', '2024-07-14 14:32:46'),
(15, 57, 2, 'Belitung Timur', '2024-07-14 14:32:46', '2024-07-14 14:32:46'),
(16, 334, 2, 'Pangkal Pinang', '2024-07-14 14:32:46', '2024-07-14 14:32:46'),
(17, 106, 3, 'Cilegon', '2024-07-14 14:32:46', '2024-07-14 14:32:46'),
(18, 232, 3, 'Lebak', '2024-07-14 14:32:46', '2024-07-14 14:32:46'),
(19, 331, 3, 'Pandeglang', '2024-07-14 14:32:46', '2024-07-14 14:32:46'),
(20, 402, 3, 'Serang', '2024-07-14 14:32:46', '2024-07-14 14:32:46'),
(21, 403, 3, 'Serang', '2024-07-14 14:32:46', '2024-07-14 14:32:46'),
(22, 455, 3, 'Tangerang', '2024-07-14 14:32:46', '2024-07-14 14:32:46'),
(23, 456, 3, 'Tangerang', '2024-07-14 14:32:46', '2024-07-14 14:32:46'),
(24, 457, 3, 'Tangerang Selatan', '2024-07-14 14:32:46', '2024-07-14 14:32:46'),
(25, 62, 4, 'Bengkulu', '2024-07-14 14:32:47', '2024-07-14 14:32:47'),
(26, 63, 4, 'Bengkulu Selatan', '2024-07-14 14:32:47', '2024-07-14 14:32:47'),
(27, 64, 4, 'Bengkulu Tengah', '2024-07-14 14:32:47', '2024-07-14 14:32:47'),
(28, 65, 4, 'Bengkulu Utara', '2024-07-14 14:32:47', '2024-07-14 14:32:47'),
(29, 175, 4, 'Kaur', '2024-07-14 14:32:47', '2024-07-14 14:32:47'),
(30, 183, 4, 'Kepahiang', '2024-07-14 14:32:47', '2024-07-14 14:32:47'),
(31, 233, 4, 'Lebong', '2024-07-14 14:32:47', '2024-07-14 14:32:47'),
(32, 294, 4, 'Muko Muko', '2024-07-14 14:32:47', '2024-07-14 14:32:47'),
(33, 379, 4, 'Rejang Lebong', '2024-07-14 14:32:47', '2024-07-14 14:32:47'),
(34, 397, 4, 'Seluma', '2024-07-14 14:32:47', '2024-07-14 14:32:47'),
(35, 39, 5, 'Bantul', '2024-07-14 14:32:47', '2024-07-14 14:32:47'),
(36, 135, 5, 'Gunung Kidul', '2024-07-14 14:32:47', '2024-07-14 14:32:47'),
(37, 210, 5, 'Kulon Progo', '2024-07-14 14:32:47', '2024-07-14 14:32:47'),
(38, 419, 5, 'Sleman', '2024-07-14 14:32:47', '2024-07-14 14:32:47'),
(39, 501, 5, 'Yogyakarta', '2024-07-14 14:32:47', '2024-07-14 14:32:47'),
(40, 151, 6, 'Jakarta Barat', '2024-07-14 14:32:47', '2024-07-14 14:32:47'),
(41, 152, 6, 'Jakarta Pusat', '2024-07-14 14:32:47', '2024-07-14 14:32:47'),
(42, 153, 6, 'Jakarta Selatan', '2024-07-14 14:32:47', '2024-07-14 14:32:47'),
(43, 154, 6, 'Jakarta Timur', '2024-07-14 14:32:47', '2024-07-14 14:32:47'),
(44, 155, 6, 'Jakarta Utara', '2024-07-14 14:32:47', '2024-07-14 14:32:47'),
(45, 189, 6, 'Kepulauan Seribu', '2024-07-14 14:32:47', '2024-07-14 14:32:47'),
(46, 77, 7, 'Boalemo', '2024-07-14 14:32:48', '2024-07-14 14:32:48'),
(47, 88, 7, 'Bone Bolango', '2024-07-14 14:32:48', '2024-07-14 14:32:48'),
(48, 129, 7, 'Gorontalo', '2024-07-14 14:32:48', '2024-07-14 14:32:48'),
(49, 130, 7, 'Gorontalo', '2024-07-14 14:32:48', '2024-07-14 14:32:48'),
(50, 131, 7, 'Gorontalo Utara', '2024-07-14 14:32:48', '2024-07-14 14:32:48'),
(51, 361, 7, 'Pohuwato', '2024-07-14 14:32:48', '2024-07-14 14:32:48'),
(52, 50, 8, 'Batang Hari', '2024-07-14 14:32:48', '2024-07-14 14:32:48'),
(53, 97, 8, 'Bungo', '2024-07-14 14:32:48', '2024-07-14 14:32:48'),
(54, 156, 8, 'Jambi', '2024-07-14 14:32:48', '2024-07-14 14:32:48'),
(55, 194, 8, 'Kerinci', '2024-07-14 14:32:48', '2024-07-14 14:32:48'),
(56, 280, 8, 'Merangin', '2024-07-14 14:32:48', '2024-07-14 14:32:48'),
(57, 293, 8, 'Muaro Jambi', '2024-07-14 14:32:48', '2024-07-14 14:32:48'),
(58, 393, 8, 'Sarolangun', '2024-07-14 14:32:48', '2024-07-14 14:32:48'),
(59, 442, 8, 'Sungaipenuh', '2024-07-14 14:32:48', '2024-07-14 14:32:48'),
(60, 460, 8, 'Tanjung Jabung Barat', '2024-07-14 14:32:48', '2024-07-14 14:32:48'),
(61, 461, 8, 'Tanjung Jabung Timur', '2024-07-14 14:32:48', '2024-07-14 14:32:48'),
(62, 471, 8, 'Tebo', '2024-07-14 14:32:48', '2024-07-14 14:32:48'),
(63, 22, 9, 'Bandung', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(64, 23, 9, 'Bandung', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(65, 24, 9, 'Bandung Barat', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(66, 34, 9, 'Banjar', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(67, 54, 9, 'Bekasi', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(68, 55, 9, 'Bekasi', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(69, 78, 9, 'Bogor', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(70, 79, 9, 'Bogor', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(71, 103, 9, 'Ciamis', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(72, 104, 9, 'Cianjur', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(73, 107, 9, 'Cimahi', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(74, 108, 9, 'Cirebon', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(75, 109, 9, 'Cirebon', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(76, 115, 9, 'Depok', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(77, 126, 9, 'Garut', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(78, 149, 9, 'Indramayu', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(79, 171, 9, 'Karawang', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(80, 211, 9, 'Kuningan', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(81, 252, 9, 'Majalengka', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(82, 332, 9, 'Pangandaran', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(83, 376, 9, 'Purwakarta', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(84, 428, 9, 'Subang', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(85, 430, 9, 'Sukabumi', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(86, 431, 9, 'Sukabumi', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(87, 440, 9, 'Sumedang', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(88, 468, 9, 'Tasikmalaya', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(89, 469, 9, 'Tasikmalaya', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(90, 37, 10, 'Banjarnegara', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(91, 41, 10, 'Banyumas', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(92, 49, 10, 'Batang', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(93, 76, 10, 'Blora', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(94, 91, 10, 'Boyolali', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(95, 92, 10, 'Brebes', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(96, 105, 10, 'Cilacap', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(97, 113, 10, 'Demak', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(98, 134, 10, 'Grobogan', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(99, 163, 10, 'Jepara', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(100, 169, 10, 'Karanganyar', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(101, 177, 10, 'Kebumen', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(102, 181, 10, 'Kendal', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(103, 196, 10, 'Klaten', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(104, 209, 10, 'Kudus', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(105, 249, 10, 'Magelang', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(106, 250, 10, 'Magelang', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(107, 344, 10, 'Pati', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(108, 348, 10, 'Pekalongan', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(109, 349, 10, 'Pekalongan', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(110, 352, 10, 'Pemalang', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(111, 375, 10, 'Purbalingga', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(112, 377, 10, 'Purworejo', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(113, 380, 10, 'Rembang', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(114, 386, 10, 'Salatiga', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(115, 398, 10, 'Semarang', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(116, 399, 10, 'Semarang', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(117, 427, 10, 'Sragen', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(118, 433, 10, 'Sukoharjo', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(119, 445, 10, 'Surakarta (Solo)', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(120, 472, 10, 'Tegal', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(121, 473, 10, 'Tegal', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(122, 476, 10, 'Temanggung', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(123, 497, 10, 'Wonogiri', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(124, 498, 10, 'Wonosobo', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(125, 31, 11, 'Bangkalan', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(126, 42, 11, 'Banyuwangi', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(127, 51, 11, 'Batu', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(128, 74, 11, 'Blitar', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(129, 75, 11, 'Blitar', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(130, 80, 11, 'Bojonegoro', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(131, 86, 11, 'Bondowoso', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(132, 133, 11, 'Gresik', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(133, 160, 11, 'Jember', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(134, 164, 11, 'Jombang', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(135, 178, 11, 'Kediri', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(136, 179, 11, 'Kediri', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(137, 222, 11, 'Lamongan', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(138, 243, 11, 'Lumajang', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(139, 247, 11, 'Madiun', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(140, 248, 11, 'Madiun', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(141, 251, 11, 'Magetan', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(142, 256, 11, 'Malang', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(143, 255, 11, 'Malang', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(144, 289, 11, 'Mojokerto', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(145, 290, 11, 'Mojokerto', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(146, 305, 11, 'Nganjuk', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(147, 306, 11, 'Ngawi', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(148, 317, 11, 'Pacitan', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(149, 330, 11, 'Pamekasan', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(150, 342, 11, 'Pasuruan', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(151, 343, 11, 'Pasuruan', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(152, 363, 11, 'Ponorogo', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(153, 369, 11, 'Probolinggo', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(154, 370, 11, 'Probolinggo', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(155, 390, 11, 'Sampang', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(156, 409, 11, 'Sidoarjo', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(157, 418, 11, 'Situbondo', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(158, 441, 11, 'Sumenep', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(159, 444, 11, 'Surabaya', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(160, 487, 11, 'Trenggalek', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(161, 489, 11, 'Tuban', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(162, 492, 11, 'Tulungagung', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(163, 61, 12, 'Bengkayang', '2024-07-14 14:32:50', '2024-07-14 14:32:50'),
(164, 168, 12, 'Kapuas Hulu', '2024-07-14 14:32:50', '2024-07-14 14:32:50'),
(165, 176, 12, 'Kayong Utara', '2024-07-14 14:32:50', '2024-07-14 14:32:50'),
(166, 195, 12, 'Ketapang', '2024-07-14 14:32:50', '2024-07-14 14:32:50'),
(167, 208, 12, 'Kubu Raya', '2024-07-14 14:32:50', '2024-07-14 14:32:50'),
(168, 228, 12, 'Landak', '2024-07-14 14:32:50', '2024-07-14 14:32:50'),
(169, 279, 12, 'Melawi', '2024-07-14 14:32:50', '2024-07-14 14:32:50'),
(170, 364, 12, 'Pontianak', '2024-07-14 14:32:50', '2024-07-14 14:32:50'),
(171, 365, 12, 'Pontianak', '2024-07-14 14:32:50', '2024-07-14 14:32:50'),
(172, 388, 12, 'Sambas', '2024-07-14 14:32:50', '2024-07-14 14:32:50'),
(173, 391, 12, 'Sanggau', '2024-07-14 14:32:50', '2024-07-14 14:32:50'),
(174, 395, 12, 'Sekadau', '2024-07-14 14:32:50', '2024-07-14 14:32:50'),
(175, 415, 12, 'Singkawang', '2024-07-14 14:32:50', '2024-07-14 14:32:50'),
(176, 417, 12, 'Sintang', '2024-07-14 14:32:50', '2024-07-14 14:32:50'),
(177, 18, 13, 'Balangan', '2024-07-14 14:32:50', '2024-07-14 14:32:50'),
(178, 33, 13, 'Banjar', '2024-07-14 14:32:50', '2024-07-14 14:32:50'),
(179, 35, 13, 'Banjarbaru', '2024-07-14 14:32:50', '2024-07-14 14:32:50'),
(180, 36, 13, 'Banjarmasin', '2024-07-14 14:32:50', '2024-07-14 14:32:50'),
(181, 43, 13, 'Barito Kuala', '2024-07-14 14:32:50', '2024-07-14 14:32:50'),
(182, 143, 13, 'Hulu Sungai Selatan', '2024-07-14 14:32:50', '2024-07-14 14:32:50'),
(183, 144, 13, 'Hulu Sungai Tengah', '2024-07-14 14:32:50', '2024-07-14 14:32:50'),
(184, 145, 13, 'Hulu Sungai Utara', '2024-07-14 14:32:50', '2024-07-14 14:32:50'),
(185, 203, 13, 'Kotabaru', '2024-07-14 14:32:50', '2024-07-14 14:32:50'),
(186, 446, 13, 'Tabalong', '2024-07-14 14:32:50', '2024-07-14 14:32:50'),
(187, 452, 13, 'Tanah Bumbu', '2024-07-14 14:32:50', '2024-07-14 14:32:50'),
(188, 454, 13, 'Tanah Laut', '2024-07-14 14:32:50', '2024-07-14 14:32:50'),
(189, 466, 13, 'Tapin', '2024-07-14 14:32:50', '2024-07-14 14:32:50'),
(190, 44, 14, 'Barito Selatan', '2024-07-14 14:32:50', '2024-07-14 14:32:50'),
(191, 45, 14, 'Barito Timur', '2024-07-14 14:32:50', '2024-07-14 14:32:50'),
(192, 46, 14, 'Barito Utara', '2024-07-14 14:32:50', '2024-07-14 14:32:50'),
(193, 136, 14, 'Gunung Mas', '2024-07-14 14:32:50', '2024-07-14 14:32:50'),
(194, 167, 14, 'Kapuas', '2024-07-14 14:32:50', '2024-07-14 14:32:50'),
(195, 174, 14, 'Katingan', '2024-07-14 14:32:50', '2024-07-14 14:32:50'),
(196, 205, 14, 'Kotawaringin Barat', '2024-07-14 14:32:50', '2024-07-14 14:32:50'),
(197, 206, 14, 'Kotawaringin Timur', '2024-07-14 14:32:50', '2024-07-14 14:32:50'),
(198, 221, 14, 'Lamandau', '2024-07-14 14:32:50', '2024-07-14 14:32:50'),
(199, 296, 14, 'Murung Raya', '2024-07-14 14:32:50', '2024-07-14 14:32:50'),
(200, 326, 14, 'Palangka Raya', '2024-07-14 14:32:50', '2024-07-14 14:32:50'),
(201, 371, 14, 'Pulang Pisau', '2024-07-14 14:32:50', '2024-07-14 14:32:50'),
(202, 405, 14, 'Seruyan', '2024-07-14 14:32:50', '2024-07-14 14:32:50'),
(203, 432, 14, 'Sukamara', '2024-07-14 14:32:51', '2024-07-14 14:32:51'),
(204, 19, 15, 'Balikpapan', '2024-07-14 14:32:51', '2024-07-14 14:32:51'),
(205, 66, 15, 'Berau', '2024-07-14 14:32:51', '2024-07-14 14:32:51'),
(206, 89, 15, 'Bontang', '2024-07-14 14:32:51', '2024-07-14 14:32:51'),
(207, 214, 15, 'Kutai Barat', '2024-07-14 14:32:51', '2024-07-14 14:32:51'),
(208, 215, 15, 'Kutai Kartanegara', '2024-07-14 14:32:51', '2024-07-14 14:32:51'),
(209, 216, 15, 'Kutai Timur', '2024-07-14 14:32:51', '2024-07-14 14:32:51'),
(210, 341, 15, 'Paser', '2024-07-14 14:32:51', '2024-07-14 14:32:51'),
(211, 354, 15, 'Penajam Paser Utara', '2024-07-14 14:32:51', '2024-07-14 14:32:51'),
(212, 387, 15, 'Samarinda', '2024-07-14 14:32:51', '2024-07-14 14:32:51'),
(213, 96, 16, 'Bulungan (Bulongan)', '2024-07-14 14:32:51', '2024-07-14 14:32:51'),
(214, 257, 16, 'Malinau', '2024-07-14 14:32:51', '2024-07-14 14:32:51'),
(215, 311, 16, 'Nunukan', '2024-07-14 14:32:51', '2024-07-14 14:32:51'),
(216, 450, 16, 'Tana Tidung', '2024-07-14 14:32:51', '2024-07-14 14:32:51'),
(217, 467, 16, 'Tarakan', '2024-07-14 14:32:51', '2024-07-14 14:32:51'),
(218, 48, 17, 'Batam', '2024-07-14 14:32:52', '2024-07-14 14:32:52'),
(219, 71, 17, 'Bintan', '2024-07-14 14:32:52', '2024-07-14 14:32:52'),
(220, 172, 17, 'Karimun', '2024-07-14 14:32:52', '2024-07-14 14:32:52'),
(221, 184, 17, 'Kepulauan Anambas', '2024-07-14 14:32:52', '2024-07-14 14:32:52'),
(222, 237, 17, 'Lingga', '2024-07-14 14:32:52', '2024-07-14 14:32:52'),
(223, 302, 17, 'Natuna', '2024-07-14 14:32:52', '2024-07-14 14:32:52'),
(224, 462, 17, 'Tanjung Pinang', '2024-07-14 14:32:52', '2024-07-14 14:32:52'),
(225, 21, 18, 'Bandar Lampung', '2024-07-14 14:32:52', '2024-07-14 14:32:52'),
(226, 223, 18, 'Lampung Barat', '2024-07-14 14:32:52', '2024-07-14 14:32:52'),
(227, 224, 18, 'Lampung Selatan', '2024-07-14 14:32:52', '2024-07-14 14:32:52'),
(228, 225, 18, 'Lampung Tengah', '2024-07-14 14:32:52', '2024-07-14 14:32:52'),
(229, 226, 18, 'Lampung Timur', '2024-07-14 14:32:52', '2024-07-14 14:32:52'),
(230, 227, 18, 'Lampung Utara', '2024-07-14 14:32:52', '2024-07-14 14:32:52'),
(231, 282, 18, 'Mesuji', '2024-07-14 14:32:52', '2024-07-14 14:32:52'),
(232, 283, 18, 'Metro', '2024-07-14 14:32:52', '2024-07-14 14:32:52'),
(233, 355, 18, 'Pesawaran', '2024-07-14 14:32:52', '2024-07-14 14:32:52'),
(234, 356, 18, 'Pesisir Barat', '2024-07-14 14:32:52', '2024-07-14 14:32:52'),
(235, 368, 18, 'Pringsewu', '2024-07-14 14:32:52', '2024-07-14 14:32:52'),
(236, 458, 18, 'Tanggamus', '2024-07-14 14:32:52', '2024-07-14 14:32:52'),
(237, 490, 18, 'Tulang Bawang', '2024-07-14 14:32:52', '2024-07-14 14:32:52'),
(238, 491, 18, 'Tulang Bawang Barat', '2024-07-14 14:32:52', '2024-07-14 14:32:52'),
(239, 496, 18, 'Way Kanan', '2024-07-14 14:32:52', '2024-07-14 14:32:52'),
(240, 14, 19, 'Ambon', '2024-07-14 14:32:53', '2024-07-14 14:32:53'),
(241, 99, 19, 'Buru', '2024-07-14 14:32:53', '2024-07-14 14:32:53'),
(242, 100, 19, 'Buru Selatan', '2024-07-14 14:32:53', '2024-07-14 14:32:53'),
(243, 185, 19, 'Kepulauan Aru', '2024-07-14 14:32:53', '2024-07-14 14:32:53'),
(244, 258, 19, 'Maluku Barat Daya', '2024-07-14 14:32:53', '2024-07-14 14:32:53'),
(245, 259, 19, 'Maluku Tengah', '2024-07-14 14:32:53', '2024-07-14 14:32:53'),
(246, 260, 19, 'Maluku Tenggara', '2024-07-14 14:32:53', '2024-07-14 14:32:53'),
(247, 261, 19, 'Maluku Tenggara Barat', '2024-07-14 14:32:53', '2024-07-14 14:32:53'),
(248, 400, 19, 'Seram Bagian Barat', '2024-07-14 14:32:53', '2024-07-14 14:32:53'),
(249, 401, 19, 'Seram Bagian Timur', '2024-07-14 14:32:53', '2024-07-14 14:32:53'),
(250, 488, 19, 'Tual', '2024-07-14 14:32:53', '2024-07-14 14:32:53'),
(251, 138, 20, 'Halmahera Barat', '2024-07-14 14:32:53', '2024-07-14 14:32:53'),
(252, 139, 20, 'Halmahera Selatan', '2024-07-14 14:32:53', '2024-07-14 14:32:53'),
(253, 140, 20, 'Halmahera Tengah', '2024-07-14 14:32:53', '2024-07-14 14:32:53'),
(254, 141, 20, 'Halmahera Timur', '2024-07-14 14:32:53', '2024-07-14 14:32:53'),
(255, 142, 20, 'Halmahera Utara', '2024-07-14 14:32:53', '2024-07-14 14:32:53'),
(256, 191, 20, 'Kepulauan Sula', '2024-07-14 14:32:53', '2024-07-14 14:32:53'),
(257, 372, 20, 'Pulau Morotai', '2024-07-14 14:32:53', '2024-07-14 14:32:53'),
(258, 477, 20, 'Ternate', '2024-07-14 14:32:53', '2024-07-14 14:32:53'),
(259, 478, 20, 'Tidore Kepulauan', '2024-07-14 14:32:53', '2024-07-14 14:32:53'),
(260, 1, 21, 'Aceh Barat', '2024-07-14 14:32:53', '2024-07-14 14:32:53'),
(261, 2, 21, 'Aceh Barat Daya', '2024-07-14 14:32:53', '2024-07-14 14:32:53'),
(262, 3, 21, 'Aceh Besar', '2024-07-14 14:32:53', '2024-07-14 14:32:53'),
(263, 4, 21, 'Aceh Jaya', '2024-07-14 14:32:53', '2024-07-14 14:32:53'),
(264, 5, 21, 'Aceh Selatan', '2024-07-14 14:32:53', '2024-07-14 14:32:53'),
(265, 6, 21, 'Aceh Singkil', '2024-07-14 14:32:53', '2024-07-14 14:32:53'),
(266, 7, 21, 'Aceh Tamiang', '2024-07-14 14:32:53', '2024-07-14 14:32:53'),
(267, 8, 21, 'Aceh Tengah', '2024-07-14 14:32:53', '2024-07-14 14:32:53'),
(268, 9, 21, 'Aceh Tenggara', '2024-07-14 14:32:53', '2024-07-14 14:32:53'),
(269, 10, 21, 'Aceh Timur', '2024-07-14 14:32:53', '2024-07-14 14:32:53'),
(270, 11, 21, 'Aceh Utara', '2024-07-14 14:32:53', '2024-07-14 14:32:53'),
(271, 20, 21, 'Banda Aceh', '2024-07-14 14:32:53', '2024-07-14 14:32:53'),
(272, 59, 21, 'Bener Meriah', '2024-07-14 14:32:53', '2024-07-14 14:32:53'),
(273, 72, 21, 'Bireuen', '2024-07-14 14:32:53', '2024-07-14 14:32:53'),
(274, 127, 21, 'Gayo Lues', '2024-07-14 14:32:53', '2024-07-14 14:32:53'),
(275, 230, 21, 'Langsa', '2024-07-14 14:32:53', '2024-07-14 14:32:53'),
(276, 235, 21, 'Lhokseumawe', '2024-07-14 14:32:53', '2024-07-14 14:32:53'),
(277, 300, 21, 'Nagan Raya', '2024-07-14 14:32:53', '2024-07-14 14:32:53'),
(278, 358, 21, 'Pidie', '2024-07-14 14:32:53', '2024-07-14 14:32:53'),
(279, 359, 21, 'Pidie Jaya', '2024-07-14 14:32:53', '2024-07-14 14:32:53'),
(280, 384, 21, 'Sabang', '2024-07-14 14:32:53', '2024-07-14 14:32:53'),
(281, 414, 21, 'Simeulue', '2024-07-14 14:32:53', '2024-07-14 14:32:53'),
(282, 429, 21, 'Subulussalam', '2024-07-14 14:32:53', '2024-07-14 14:32:53'),
(283, 68, 22, 'Bima', '2024-07-14 14:32:54', '2024-07-14 14:32:54'),
(284, 69, 22, 'Bima', '2024-07-14 14:32:54', '2024-07-14 14:32:54'),
(285, 118, 22, 'Dompu', '2024-07-14 14:32:54', '2024-07-14 14:32:54'),
(286, 238, 22, 'Lombok Barat', '2024-07-14 14:32:54', '2024-07-14 14:32:54'),
(287, 239, 22, 'Lombok Tengah', '2024-07-14 14:32:54', '2024-07-14 14:32:54'),
(288, 240, 22, 'Lombok Timur', '2024-07-14 14:32:54', '2024-07-14 14:32:54'),
(289, 241, 22, 'Lombok Utara', '2024-07-14 14:32:54', '2024-07-14 14:32:54'),
(290, 276, 22, 'Mataram', '2024-07-14 14:32:54', '2024-07-14 14:32:54'),
(291, 438, 22, 'Sumbawa', '2024-07-14 14:32:54', '2024-07-14 14:32:54'),
(292, 439, 22, 'Sumbawa Barat', '2024-07-14 14:32:54', '2024-07-14 14:32:54'),
(293, 13, 23, 'Alor', '2024-07-14 14:32:54', '2024-07-14 14:32:54'),
(294, 58, 23, 'Belu', '2024-07-14 14:32:54', '2024-07-14 14:32:54'),
(295, 122, 23, 'Ende', '2024-07-14 14:32:54', '2024-07-14 14:32:54'),
(296, 125, 23, 'Flores Timur', '2024-07-14 14:32:54', '2024-07-14 14:32:54'),
(297, 212, 23, 'Kupang', '2024-07-14 14:32:54', '2024-07-14 14:32:54'),
(298, 213, 23, 'Kupang', '2024-07-14 14:32:54', '2024-07-14 14:32:54'),
(299, 234, 23, 'Lembata', '2024-07-14 14:32:54', '2024-07-14 14:32:54'),
(300, 269, 23, 'Manggarai', '2024-07-14 14:32:54', '2024-07-14 14:32:54'),
(301, 270, 23, 'Manggarai Barat', '2024-07-14 14:32:54', '2024-07-14 14:32:54'),
(302, 271, 23, 'Manggarai Timur', '2024-07-14 14:32:54', '2024-07-14 14:32:54'),
(303, 301, 23, 'Nagekeo', '2024-07-14 14:32:54', '2024-07-14 14:32:54'),
(304, 304, 23, 'Ngada', '2024-07-14 14:32:54', '2024-07-14 14:32:54'),
(305, 383, 23, 'Rote Ndao', '2024-07-14 14:32:54', '2024-07-14 14:32:54'),
(306, 385, 23, 'Sabu Raijua', '2024-07-14 14:32:54', '2024-07-14 14:32:54'),
(307, 412, 23, 'Sikka', '2024-07-14 14:32:54', '2024-07-14 14:32:54'),
(308, 434, 23, 'Sumba Barat', '2024-07-14 14:32:54', '2024-07-14 14:32:54'),
(309, 435, 23, 'Sumba Barat Daya', '2024-07-14 14:32:54', '2024-07-14 14:32:54'),
(310, 436, 23, 'Sumba Tengah', '2024-07-14 14:32:54', '2024-07-14 14:32:54'),
(311, 437, 23, 'Sumba Timur', '2024-07-14 14:32:54', '2024-07-14 14:32:54'),
(312, 479, 23, 'Timor Tengah Selatan', '2024-07-14 14:32:54', '2024-07-14 14:32:54'),
(313, 480, 23, 'Timor Tengah Utara', '2024-07-14 14:32:54', '2024-07-14 14:32:54'),
(314, 16, 24, 'Asmat', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(315, 67, 24, 'Biak Numfor', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(316, 90, 24, 'Boven Digoel', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(317, 111, 24, 'Deiyai (Deliyai)', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(318, 117, 24, 'Dogiyai', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(319, 150, 24, 'Intan Jaya', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(320, 157, 24, 'Jayapura', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(321, 158, 24, 'Jayapura', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(322, 159, 24, 'Jayawijaya', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(323, 180, 24, 'Keerom', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(324, 193, 24, 'Kepulauan Yapen (Yapen Waropen)', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(325, 231, 24, 'Lanny Jaya', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(326, 263, 24, 'Mamberamo Raya', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(327, 264, 24, 'Mamberamo Tengah', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(328, 274, 24, 'Mappi', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(329, 281, 24, 'Merauke', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(330, 284, 24, 'Mimika', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(331, 299, 24, 'Nabire', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(332, 303, 24, 'Nduga', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(333, 335, 24, 'Paniai', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(334, 347, 24, 'Pegunungan Bintang', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(335, 373, 24, 'Puncak', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(336, 374, 24, 'Puncak Jaya', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(337, 392, 24, 'Sarmi', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(338, 443, 24, 'Supiori', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(339, 484, 24, 'Tolikara', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(340, 495, 24, 'Waropen', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(341, 499, 24, 'Yahukimo', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(342, 500, 24, 'Yalimo', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(343, 124, 25, 'Fakfak', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(344, 165, 25, 'Kaimana', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(345, 272, 25, 'Manokwari', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(346, 273, 25, 'Manokwari Selatan', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(347, 277, 25, 'Maybrat', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(348, 346, 25, 'Pegunungan Arfak', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(349, 378, 25, 'Raja Ampat', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(350, 424, 25, 'Sorong', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(351, 425, 25, 'Sorong', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(352, 426, 25, 'Sorong Selatan', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(353, 449, 25, 'Tambrauw', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(354, 474, 25, 'Teluk Bintuni', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(355, 475, 25, 'Teluk Wondama', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(356, 60, 26, 'Bengkalis', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(357, 120, 26, 'Dumai', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(358, 147, 26, 'Indragiri Hilir', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(359, 148, 26, 'Indragiri Hulu', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(360, 166, 26, 'Kampar', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(361, 187, 26, 'Kepulauan Meranti', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(362, 207, 26, 'Kuantan Singingi', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(363, 350, 26, 'Pekanbaru', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(364, 351, 26, 'Pelalawan', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(365, 381, 26, 'Rokan Hilir', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(366, 382, 26, 'Rokan Hulu', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(367, 406, 26, 'Siak', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(368, 253, 27, 'Majene', '2024-07-14 14:32:56', '2024-07-14 14:32:56'),
(369, 262, 27, 'Mamasa', '2024-07-14 14:32:56', '2024-07-14 14:32:56'),
(370, 265, 27, 'Mamuju', '2024-07-14 14:32:56', '2024-07-14 14:32:56'),
(371, 266, 27, 'Mamuju Utara', '2024-07-14 14:32:56', '2024-07-14 14:32:56'),
(372, 362, 27, 'Polewali Mandar', '2024-07-14 14:32:56', '2024-07-14 14:32:56'),
(373, 38, 28, 'Bantaeng', '2024-07-14 14:32:56', '2024-07-14 14:32:56'),
(374, 47, 28, 'Barru', '2024-07-14 14:32:56', '2024-07-14 14:32:56'),
(375, 87, 28, 'Bone', '2024-07-14 14:32:56', '2024-07-14 14:32:56'),
(376, 95, 28, 'Bulukumba', '2024-07-14 14:32:56', '2024-07-14 14:32:56'),
(377, 123, 28, 'Enrekang', '2024-07-14 14:32:56', '2024-07-14 14:32:56'),
(378, 132, 28, 'Gowa', '2024-07-14 14:32:56', '2024-07-14 14:32:56'),
(379, 162, 28, 'Jeneponto', '2024-07-14 14:32:56', '2024-07-14 14:32:56'),
(380, 244, 28, 'Luwu', '2024-07-14 14:32:56', '2024-07-14 14:32:56'),
(381, 245, 28, 'Luwu Timur', '2024-07-14 14:32:56', '2024-07-14 14:32:56'),
(382, 246, 28, 'Luwu Utara', '2024-07-14 14:32:56', '2024-07-14 14:32:56'),
(383, 254, 28, 'Makassar', '2024-07-14 14:32:56', '2024-07-14 14:32:56'),
(384, 275, 28, 'Maros', '2024-07-14 14:32:56', '2024-07-14 14:32:56'),
(385, 328, 28, 'Palopo', '2024-07-14 14:32:56', '2024-07-14 14:32:56'),
(386, 333, 28, 'Pangkajene Kepulauan', '2024-07-14 14:32:56', '2024-07-14 14:32:56'),
(387, 336, 28, 'Parepare', '2024-07-14 14:32:56', '2024-07-14 14:32:56'),
(388, 360, 28, 'Pinrang', '2024-07-14 14:32:56', '2024-07-14 14:32:56'),
(389, 396, 28, 'Selayar (Kepulauan Selayar)', '2024-07-14 14:32:56', '2024-07-14 14:32:56'),
(390, 408, 28, 'Sidenreng Rappang/Rapang', '2024-07-14 14:32:56', '2024-07-14 14:32:56'),
(391, 416, 28, 'Sinjai', '2024-07-14 14:32:56', '2024-07-14 14:32:56'),
(392, 423, 28, 'Soppeng', '2024-07-14 14:32:56', '2024-07-14 14:32:56'),
(393, 448, 28, 'Takalar', '2024-07-14 14:32:56', '2024-07-14 14:32:56'),
(394, 451, 28, 'Tana Toraja', '2024-07-14 14:32:56', '2024-07-14 14:32:56'),
(395, 486, 28, 'Toraja Utara', '2024-07-14 14:32:56', '2024-07-14 14:32:56'),
(396, 493, 28, 'Wajo', '2024-07-14 14:32:56', '2024-07-14 14:32:56'),
(397, 25, 29, 'Banggai', '2024-07-14 14:32:57', '2024-07-14 14:32:57'),
(398, 26, 29, 'Banggai Kepulauan', '2024-07-14 14:32:57', '2024-07-14 14:32:57'),
(399, 98, 29, 'Buol', '2024-07-14 14:32:57', '2024-07-14 14:32:57'),
(400, 119, 29, 'Donggala', '2024-07-14 14:32:57', '2024-07-14 14:32:57'),
(401, 291, 29, 'Morowali', '2024-07-14 14:32:57', '2024-07-14 14:32:57'),
(402, 329, 29, 'Palu', '2024-07-14 14:32:57', '2024-07-14 14:32:57'),
(403, 338, 29, 'Parigi Moutong', '2024-07-14 14:32:57', '2024-07-14 14:32:57'),
(404, 366, 29, 'Poso', '2024-07-14 14:32:57', '2024-07-14 14:32:57'),
(405, 410, 29, 'Sigi', '2024-07-14 14:32:57', '2024-07-14 14:32:57'),
(406, 482, 29, 'Tojo Una-Una', '2024-07-14 14:32:57', '2024-07-14 14:32:57'),
(407, 483, 29, 'Toli-Toli', '2024-07-14 14:32:57', '2024-07-14 14:32:57'),
(408, 53, 30, 'Bau-Bau', '2024-07-14 14:32:57', '2024-07-14 14:32:57'),
(409, 85, 30, 'Bombana', '2024-07-14 14:32:57', '2024-07-14 14:32:57'),
(410, 101, 30, 'Buton', '2024-07-14 14:32:57', '2024-07-14 14:32:57'),
(411, 102, 30, 'Buton Utara', '2024-07-14 14:32:57', '2024-07-14 14:32:57'),
(412, 182, 30, 'Kendari', '2024-07-14 14:32:57', '2024-07-14 14:32:57'),
(413, 198, 30, 'Kolaka', '2024-07-14 14:32:57', '2024-07-14 14:32:57'),
(414, 199, 30, 'Kolaka Utara', '2024-07-14 14:32:57', '2024-07-14 14:32:57'),
(415, 200, 30, 'Konawe', '2024-07-14 14:32:57', '2024-07-14 14:32:57'),
(416, 201, 30, 'Konawe Selatan', '2024-07-14 14:32:57', '2024-07-14 14:32:57'),
(417, 202, 30, 'Konawe Utara', '2024-07-14 14:32:57', '2024-07-14 14:32:57'),
(418, 295, 30, 'Muna', '2024-07-14 14:32:57', '2024-07-14 14:32:57'),
(419, 494, 30, 'Wakatobi', '2024-07-14 14:32:57', '2024-07-14 14:32:57'),
(420, 73, 31, 'Bitung', '2024-07-14 14:32:57', '2024-07-14 14:32:57'),
(421, 81, 31, 'Bolaang Mongondow (Bolmong)', '2024-07-14 14:32:57', '2024-07-14 14:32:57'),
(422, 82, 31, 'Bolaang Mongondow Selatan', '2024-07-14 14:32:57', '2024-07-14 14:32:57'),
(423, 83, 31, 'Bolaang Mongondow Timur', '2024-07-14 14:32:57', '2024-07-14 14:32:57'),
(424, 84, 31, 'Bolaang Mongondow Utara', '2024-07-14 14:32:57', '2024-07-14 14:32:57'),
(425, 188, 31, 'Kepulauan Sangihe', '2024-07-14 14:32:57', '2024-07-14 14:32:57'),
(426, 190, 31, 'Kepulauan Siau Tagulandang Biaro (Sitaro)', '2024-07-14 14:32:57', '2024-07-14 14:32:57'),
(427, 192, 31, 'Kepulauan Talaud', '2024-07-14 14:32:57', '2024-07-14 14:32:57'),
(428, 204, 31, 'Kotamobagu', '2024-07-14 14:32:57', '2024-07-14 14:32:57'),
(429, 267, 31, 'Manado', '2024-07-14 14:32:57', '2024-07-14 14:32:57'),
(430, 285, 31, 'Minahasa', '2024-07-14 14:32:57', '2024-07-14 14:32:57'),
(431, 286, 31, 'Minahasa Selatan', '2024-07-14 14:32:57', '2024-07-14 14:32:57'),
(432, 287, 31, 'Minahasa Tenggara', '2024-07-14 14:32:57', '2024-07-14 14:32:57'),
(433, 288, 31, 'Minahasa Utara', '2024-07-14 14:32:57', '2024-07-14 14:32:57'),
(434, 485, 31, 'Tomohon', '2024-07-14 14:32:57', '2024-07-14 14:32:57'),
(435, 12, 32, 'Agam', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(436, 93, 32, 'Bukittinggi', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(437, 116, 32, 'Dharmasraya', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(438, 186, 32, 'Kepulauan Mentawai', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(439, 236, 32, 'Lima Puluh Koto/Kota', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(440, 318, 32, 'Padang', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(441, 321, 32, 'Padang Panjang', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(442, 322, 32, 'Padang Pariaman', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(443, 337, 32, 'Pariaman', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(444, 339, 32, 'Pasaman', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(445, 340, 32, 'Pasaman Barat', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(446, 345, 32, 'Payakumbuh', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(447, 357, 32, 'Pesisir Selatan', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(448, 394, 32, 'Sawah Lunto', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(449, 411, 32, 'Sijunjung (Sawah Lunto Sijunjung)', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(450, 420, 32, 'Solok', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(451, 421, 32, 'Solok', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(452, 422, 32, 'Solok Selatan', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(453, 453, 32, 'Tanah Datar', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(454, 40, 33, 'Banyuasin', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(455, 121, 33, 'Empat Lawang', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(456, 220, 33, 'Lahat', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(457, 242, 33, 'Lubuk Linggau', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(458, 292, 33, 'Muara Enim', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(459, 297, 33, 'Musi Banyuasin', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(460, 298, 33, 'Musi Rawas', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(461, 312, 33, 'Ogan Ilir', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(462, 313, 33, 'Ogan Komering Ilir', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(463, 314, 33, 'Ogan Komering Ulu', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(464, 315, 33, 'Ogan Komering Ulu Selatan', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(465, 316, 33, 'Ogan Komering Ulu Timur', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(466, 324, 33, 'Pagar Alam', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(467, 327, 33, 'Palembang', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(468, 367, 33, 'Prabumulih', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(469, 15, 34, 'Asahan', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(470, 52, 34, 'Batu Bara', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(471, 70, 34, 'Binjai', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(472, 110, 34, 'Dairi', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(473, 112, 34, 'Deli Serdang', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(474, 137, 34, 'Gunungsitoli', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(475, 146, 34, 'Humbang Hasundutan', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(476, 173, 34, 'Karo', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(477, 217, 34, 'Labuhan Batu', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(478, 218, 34, 'Labuhan Batu Selatan', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(479, 219, 34, 'Labuhan Batu Utara', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(480, 229, 34, 'Langkat', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(481, 268, 34, 'Mandailing Natal', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(482, 278, 34, 'Medan', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(483, 307, 34, 'Nias', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(484, 308, 34, 'Nias Barat', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(485, 309, 34, 'Nias Selatan', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(486, 310, 34, 'Nias Utara', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(487, 319, 34, 'Padang Lawas', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(488, 320, 34, 'Padang Lawas Utara', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(489, 323, 34, 'Padang Sidempuan', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(490, 325, 34, 'Pakpak Bharat', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(491, 353, 34, 'Pematang Siantar', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(492, 389, 34, 'Samosir', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(493, 404, 34, 'Serdang Bedagai', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(494, 407, 34, 'Sibolga', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(495, 413, 34, 'Simalungun', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(496, 459, 34, 'Tanjung Balai', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(497, 463, 34, 'Tapanuli Selatan', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(498, 464, 34, 'Tapanuli Tengah', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(499, 465, 34, 'Tapanuli Utara', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(500, 470, 34, 'Tebing Tinggi', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(501, 481, 34, 'Toba Samosir', '2024-07-14 14:32:58', '2024-07-14 14:32:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `couriers`
--

CREATE TABLE `couriers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `courier_name` varchar(255) DEFAULT NULL,
  `shipping_cost` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `couriers`
--

INSERT INTO `couriers` (`id`, `courier_name`, `shipping_cost`, `created_at`, `updated_at`) VALUES
(1, 'Dianter ke Rumah', 12000.00, '2024-07-17 11:07:26', '2024-07-17 11:07:26'),
(2, 'jne', NULL, '2024-07-17 11:11:04', '2024-07-17 12:04:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `exports`
--

CREATE TABLE `exports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `file_disk` varchar(255) NOT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `exporter` varchar(255) NOT NULL,
  `processed_rows` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `total_rows` int(10) UNSIGNED NOT NULL,
  `successful_rows` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `exports`
--

INSERT INTO `exports` (`id`, `completed_at`, `file_disk`, `file_name`, `exporter`, `processed_rows`, `total_rows`, `successful_rows`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '2024-08-13 13:05:59', 'public', 'export-1-categories', 'App\\Filament\\Exports\\CategoryExporter', 2, 2, 2, 1, '2024-08-13 13:05:57', '2024-08-13 13:05:59'),
(2, '2024-08-13 13:28:44', 'public', 'export-2-products', 'App\\Filament\\Exports\\ProductExporter', 74, 74, 74, 1, '2024-08-13 13:28:44', '2024-08-13 13:28:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_import_rows`
--

CREATE TABLE `failed_import_rows` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`data`)),
  `import_id` bigint(20) UNSIGNED NOT NULL,
  `validation_error` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(12, 1, 46, '2024-08-28 02:05:03', '2024-08-28 02:05:03'),
(16, 1, 74, '2024-08-28 10:48:58', '2024-08-28 10:48:58'),
(17, 44, 46, '2024-11-13 07:51:06', '2024-11-13 07:51:06'),
(18, 1, 47, '2024-11-25 08:07:10', '2024-11-25 08:07:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `filament_menu`
--

CREATE TABLE `filament_menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `active_icon` varchar(50) DEFAULT NULL,
  `uri` varchar(50) DEFAULT NULL,
  `badge` varchar(50) DEFAULT NULL,
  `badge_color` varchar(50) DEFAULT NULL,
  `parent_id` bigint(20) NOT NULL DEFAULT -1,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `filament_menu`
--

INSERT INTO `filament_menu` (`id`, `title`, `icon`, `active_icon`, `uri`, `badge`, `badge_color`, `parent_id`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', 'heroicon-o-home', 'heroicon-o-home', '/admin', NULL, NULL, -1, 1, '2024-07-11 01:48:30', '2024-07-11 01:48:30'),
(2, 'Admin', 'heroicon-o-document-text', NULL, '/', NULL, NULL, -1, 2, '2024-07-11 01:48:30', '2024-07-11 01:48:30'),
(3, 'Menu', 'heroicon-o-menu', 'heroicon-o-menu', '/admin/menu', NULL, NULL, 2, 1, '2024-07-11 01:48:30', '2024-07-11 01:48:30'),
(4, 'Users', 'heroicon-o-user', 'heroicon-o-user', '/admin/users', NULL, NULL, 2, 2, '2024-07-11 01:48:30', '2024-07-11 01:48:30'),
(5, 'Roles', 'heroicon-o-user-group', 'heroicon-o-user-group', '/admin/roles', NULL, NULL, 2, 3, '2024-07-11 01:48:30', '2024-07-11 01:48:30'),
(6, 'Permissions', 'heroicon-o-lock-closed', 'heroicon-o-lock-closed', '/admin/permissions', NULL, NULL, 2, 4, '2024-07-11 01:48:30', '2024-07-11 01:48:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `imports`
--

CREATE TABLE `imports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `importer` varchar(255) NOT NULL,
  `processed_rows` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `total_rows` int(10) UNSIGNED NOT NULL,
  `successful_rows` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `job_batches`
--

INSERT INTO `job_batches` (`id`, `name`, `total_jobs`, `pending_jobs`, `failed_jobs`, `failed_job_ids`, `options`, `cancelled_at`, `created_at`, `finished_at`) VALUES
('9cc1a087-7b83-404e-a64a-00061fdc3c47', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:18331:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":6:{s:11:\"\0*\0exporter\";O:37:\"App\\Filament\\Exports\\CategoryExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:37:\"App\\Filament\\Exports\\CategoryExporter\";s:10:\"total_rows\";i:2;s:9:\"file_disk\";s:6:\"public\";s:10:\"updated_at\";s:19:\"2024-08-13 20:05:57\";s:10:\"created_at\";s:19:\"2024-08-13 20:05:57\";s:2:\"id\";i:1;s:9:\"file_name\";s:19:\"export-1-categories\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:37:\"App\\Filament\\Exports\\CategoryExporter\";s:10:\"total_rows\";i:2;s:9:\"file_disk\";s:6:\"public\";s:10:\"updated_at\";s:19:\"2024-08-13 20:05:57\";s:10:\"created_at\";s:19:\"2024-08-13 20:05:57\";s:2:\"id\";i:1;s:9:\"file_name\";s:19:\"export-1-categories\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:19:\"export-1-categories\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:4:\"user\";O:15:\"App\\Models\\User\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"users\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:17:{s:2:\"id\";i:1;s:6:\"avatar\";s:52:\"avatars/DuP0mn6tdTr2kny0MFCZkkxLVNkCcUKsLVA69vJO.png\";s:4:\"name\";s:5:\"admin\";s:5:\"email\";s:29:\"admin@freshbeanpurwokerto.com\";s:5:\"phone\";s:14:\"+6287803280418\";s:11:\"province_id\";i:10;s:7:\"city_id\";i:91;s:6:\"alamat\";s:113:\"Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114\";s:8:\"kode_pos\";s:5:\"16952\";s:17:\"email_verified_at\";s:19:\"2024-07-11 08:48:29\";s:8:\"password\";s:60:\"$2y$12$xgEaloo/DOCUiiqr42sq4elOWDe6nx67a2k9zguwxWixGOzdGR8hy\";s:4:\"role\";s:5:\"admin\";s:14:\"remember_token\";s:60:\"9bypqxqs5DMzyst4ob73bqxITMFscKhNeHYvCqEvULLgavnGtDRqWcHf4yDk\";s:10:\"created_at\";s:19:\"2024-07-11 08:48:29\";s:10:\"updated_at\";s:19:\"2024-07-14 22:34:44\";s:5:\"theme\";s:7:\"default\";s:11:\"theme_color\";N;}s:11:\"\0*\0original\";a:17:{s:2:\"id\";i:1;s:6:\"avatar\";s:52:\"avatars/DuP0mn6tdTr2kny0MFCZkkxLVNkCcUKsLVA69vJO.png\";s:4:\"name\";s:5:\"admin\";s:5:\"email\";s:29:\"admin@freshbeanpurwokerto.com\";s:5:\"phone\";s:14:\"+6287803280418\";s:11:\"province_id\";i:10;s:7:\"city_id\";i:91;s:6:\"alamat\";s:113:\"Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114\";s:8:\"kode_pos\";s:5:\"16952\";s:17:\"email_verified_at\";s:19:\"2024-07-11 08:48:29\";s:8:\"password\";s:60:\"$2y$12$xgEaloo/DOCUiiqr42sq4elOWDe6nx67a2k9zguwxWixGOzdGR8hy\";s:4:\"role\";s:5:\"admin\";s:14:\"remember_token\";s:60:\"9bypqxqs5DMzyst4ob73bqxITMFscKhNeHYvCqEvULLgavnGtDRqWcHf4yDk\";s:10:\"created_at\";s:19:\"2024-07-11 08:48:29\";s:10:\"updated_at\";s:19:\"2024-07-14 22:34:44\";s:5:\"theme\";s:7:\"default\";s:11:\"theme_color\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:17:\"email_verified_at\";s:8:\"datetime\";s:8:\"password\";s:6:\"hashed\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"roles\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:29:\"Spatie\\Permission\\Models\\Role\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"roles\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";i:1;s:4:\"name\";s:11:\"super-admin\";s:10:\"guard_name\";s:3:\"web\";s:10:\"created_at\";s:19:\"2024-07-11 08:48:29\";s:10:\"updated_at\";s:19:\"2024-07-11 08:48:29\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:1;s:4:\"name\";s:11:\"super-admin\";s:10:\"guard_name\";s:3:\"web\";s:10:\"created_at\";s:19:\"2024-07-11 08:48:29\";s:10:\"updated_at\";s:19:\"2024-07-11 08:48:29\";s:14:\"pivot_model_id\";i:1;s:13:\"pivot_role_id\";i:1;s:16:\"pivot_model_type\";s:15:\"App\\Models\\User\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"pivot\";O:49:\"Illuminate\\Database\\Eloquent\\Relations\\MorphPivot\":35:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:15:\"model_has_roles\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:0;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:3:{s:10:\"model_type\";s:15:\"App\\Models\\User\";s:8:\"model_id\";i:1;s:7:\"role_id\";i:1;}s:11:\"\0*\0original\";a:3:{s:10:\"model_type\";s:15:\"App\\Models\\User\";s:8:\"model_id\";i:1;s:7:\"role_id\";i:1;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:0;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"pivotParent\";O:15:\"App\\Models\\User\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"users\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:0;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:0:{}s:11:\"\0*\0original\";a:0:{}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:17:\"email_verified_at\";s:8:\"datetime\";s:8:\"password\";s:6:\"hashed\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:2:{i:0;s:8:\"password\";i:1;s:14:\"remember_token\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:10:{i:0;s:6:\"avatar\";i:1;s:4:\"name\";i:2;s:5:\"email\";i:3;s:5:\"phone\";i:4;s:11:\"province_id\";i:5;s:7:\"city_id\";i:6;s:6:\"alamat\";i:7;s:8:\"kode_pos\";i:8;s:8:\"password\";i:9;s:4:\"role\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:20:\"\0*\0rememberTokenName\";s:14:\"remember_token\";s:14:\"\0*\0accessToken\";N;}s:13:\"\0*\0foreignKey\";s:8:\"model_id\";s:13:\"\0*\0relatedKey\";s:7:\"role_id\";s:12:\"\0*\0morphType\";s:10:\"model_type\";s:13:\"\0*\0morphClass\";s:15:\"App\\Models\\User\";}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:2:{i:0;s:8:\"password\";i:1;s:14:\"remember_token\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:10:{i:0;s:6:\"avatar\";i:1;s:4:\"name\";i:2;s:5:\"email\";i:3;s:5:\"phone\";i:4;s:11:\"province_id\";i:5;s:7:\"city_id\";i:6;s:6:\"alamat\";i:7;s:8:\"kode_pos\";i:8;s:8:\"password\";i:9;s:4:\"role\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:20:\"\0*\0rememberTokenName\";s:14:\"remember_token\";s:14:\"\0*\0accessToken\";N;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:4:{s:2:\"id\";s:2:\"ID\";s:4:\"name\";s:8:\"Kategori\";s:10:\"created_at\";s:17:\"Tanggal Pembuatan\";s:10:\"updated_at\";s:14:\"Tanggal Update\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:1;s:9:\"relations\";a:2:{i:0;s:4:\"user\";i:1;s:10:\"user.roles\";}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:4:{s:2:\"id\";s:2:\"ID\";s:4:\"name\";s:8:\"Kategori\";s:10:\"created_at\";s:17:\"Tanggal Pembuatan\";s:10:\"updated_at\";s:14:\"Tanggal Update\";}s:10:\"\0*\0options\";a:0:{}s:19:\"chainCatchCallbacks\";a:0:{}s:7:\"chained\";a:1:{i:0;s:8886:\"O:44:\"Filament\\Actions\\Exports\\Jobs\\CreateXlsxFile\":4:{s:11:\"\0*\0exporter\";O:37:\"App\\Filament\\Exports\\CategoryExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:37:\"App\\Filament\\Exports\\CategoryExporter\";s:10:\"total_rows\";i:2;s:9:\"file_disk\";s:6:\"public\";s:10:\"updated_at\";s:19:\"2024-08-13 20:05:57\";s:10:\"created_at\";s:19:\"2024-08-13 20:05:57\";s:2:\"id\";i:1;s:9:\"file_name\";s:19:\"export-1-categories\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:37:\"App\\Filament\\Exports\\CategoryExporter\";s:10:\"total_rows\";i:2;s:9:\"file_disk\";s:6:\"public\";s:10:\"updated_at\";s:19:\"2024-08-13 20:05:57\";s:10:\"created_at\";s:19:\"2024-08-13 20:05:57\";s:2:\"id\";i:1;s:9:\"file_name\";s:19:\"export-1-categories\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:19:\"export-1-categories\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:4:\"user\";O:15:\"App\\Models\\User\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"users\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:17:{s:2:\"id\";i:1;s:6:\"avatar\";s:52:\"avatars/DuP0mn6tdTr2kny0MFCZkkxLVNkCcUKsLVA69vJO.png\";s:4:\"name\";s:5:\"admin\";s:5:\"email\";s:29:\"admin@freshbeanpurwokerto.com\";s:5:\"phone\";s:14:\"+6287803280418\";s:11:\"province_id\";i:10;s:7:\"city_id\";i:91;s:6:\"alamat\";s:113:\"Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114\";s:8:\"kode_pos\";s:5:\"16952\";s:17:\"email_verified_at\";s:19:\"2024-07-11 08:48:29\";s:8:\"password\";s:60:\"$2y$12$xgEaloo/DOCUiiqr42sq4elOWDe6nx67a2k9zguwxWixGOzdGR8hy\";s:4:\"role\";s:5:\"admin\";s:14:\"remember_token\";s:60:\"9bypqxqs5DMzyst4ob73bqxITMFscKhNeHYvCqEvULLgavnGtDRqWcHf4yDk\";s:10:\"created_at\";s:19:\"2024-07-11 08:48:29\";s:10:\"updated_at\";s:19:\"2024-07-14 22:34:44\";s:5:\"theme\";s:7:\"default\";s:11:\"theme_color\";N;}s:11:\"\0*\0original\";a:17:{s:2:\"id\";i:1;s:6:\"avatar\";s:52:\"avatars/DuP0mn6tdTr2kny0MFCZkkxLVNkCcUKsLVA69vJO.png\";s:4:\"name\";s:5:\"admin\";s:5:\"email\";s:29:\"admin@freshbeanpurwokerto.com\";s:5:\"phone\";s:14:\"+6287803280418\";s:11:\"province_id\";i:10;s:7:\"city_id\";i:91;s:6:\"alamat\";s:113:\"Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114\";s:8:\"kode_pos\";s:5:\"16952\";s:17:\"email_verified_at\";s:19:\"2024-07-11 08:48:29\";s:8:\"password\";s:60:\"$2y$12$xgEaloo/DOCUiiqr42sq4elOWDe6nx67a2k9zguwxWixGOzdGR8hy\";s:4:\"role\";s:5:\"admin\";s:14:\"remember_token\";s:60:\"9bypqxqs5DMzyst4ob73bqxITMFscKhNeHYvCqEvULLgavnGtDRqWcHf4yDk\";s:10:\"created_at\";s:19:\"2024-07-11 08:48:29\";s:10:\"updated_at\";s:19:\"2024-07-14 22:34:44\";s:5:\"theme\";s:7:\"default\";s:11:\"theme_color\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:17:\"email_verified_at\";s:8:\"datetime\";s:8:\"password\";s:6:\"hashed\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"roles\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:29:\"Spatie\\Permission\\Models\\Role\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"roles\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";i:1;s:4:\"name\";s:11:\"super-admin\";s:10:\"guard_name\";s:3:\"web\";s:10:\"created_at\";s:19:\"2024-07-11 08:48:29\";s:10:\"updated_at\";s:19:\"2024-07-11 08:48:29\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:1;s:4:\"name\";s:11:\"super-admin\";s:10:\"guard_name\";s:3:\"web\";s:10:\"created_at\";s:19:\"2024-07-11 08:48:29\";s:10:\"updated_at\";s:19:\"2024-07-11 08:48:29\";s:14:\"pivot_model_id\";i:1;s:13:\"pivot_role_id\";i:1;s:16:\"pivot_model_type\";s:15:\"App\\Models\\User\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"pivot\";O:49:\"Illuminate\\Database\\Eloquent\\Relations\\MorphPivot\":35:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:15:\"model_has_roles\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:0;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:3:{s:10:\"model_type\";s:15:\"App\\Models\\User\";s:8:\"model_id\";i:1;s:7:\"role_id\";i:1;}s:11:\"\0*\0original\";a:3:{s:10:\"model_type\";s:15:\"App\\Models\\User\";s:8:\"model_id\";i:1;s:7:\"role_id\";i:1;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:0;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"pivotParent\";O:15:\"App\\Models\\User\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"users\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:0;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:0:{}s:11:\"\0*\0original\";a:0:{}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:17:\"email_verified_at\";s:8:\"datetime\";s:8:\"password\";s:6:\"hashed\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:2:{i:0;s:8:\"password\";i:1;s:14:\"remember_token\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:10:{i:0;s:6:\"avatar\";i:1;s:4:\"name\";i:2;s:5:\"email\";i:3;s:5:\"phone\";i:4;s:11:\"province_id\";i:5;s:7:\"city_id\";i:6;s:6:\"alamat\";i:7;s:8:\"kode_pos\";i:8;s:8:\"password\";i:9;s:4:\"role\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:20:\"\0*\0rememberTokenName\";s:14:\"remember_token\";s:14:\"\0*\0accessToken\";N;}s:13:\"\0*\0foreignKey\";s:8:\"model_id\";s:13:\"\0*\0relatedKey\";s:7:\"role_id\";s:12:\"\0*\0morphType\";s:10:\"model_type\";s:13:\"\0*\0morphClass\";s:15:\"App\\Models\\User\";}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:2:{i:0;s:8:\"password\";i:1;s:14:\"remember_token\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:10:{i:0;s:6:\"avatar\";i:1;s:4:\"name\";i:2;s:5:\"email\";i:3;s:5:\"phone\";i:4;s:11:\"province_id\";i:5;s:7:\"city_id\";i:6;s:6:\"alamat\";i:7;s:8:\"kode_pos\";i:8;s:8:\"password\";i:9;s:4:\"role\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:20:\"\0*\0rememberTokenName\";s:14:\"remember_token\";s:14:\"\0*\0accessToken\";N;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:4:{s:2:\"id\";s:2:\"ID\";s:4:\"name\";s:8:\"Kategori\";s:10:\"created_at\";s:17:\"Tanggal Pembuatan\";s:10:\"updated_at\";s:14:\"Tanggal Update\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:1;s:9:\"relations\";a:2:{i:0;s:4:\"user\";i:1;s:10:\"user.roles\";}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:4:{s:2:\"id\";s:2:\"ID\";s:4:\"name\";s:8:\"Kategori\";s:10:\"created_at\";s:17:\"Tanggal Pembuatan\";s:10:\"updated_at\";s:14:\"Tanggal Update\";}s:10:\"\0*\0options\";a:0:{}}\";}}}s:8:\"function\";s:270:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\r\n                if (! $batch->cancelled()) {\r\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\r\n                }\r\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"00000000000009040000000000000000\";}\";s:4:\"hash\";s:44:\"0SaHWF/sCCvqzQpVMklXk1C89y/opqNWTbdxJygULEo=\";}}}}', NULL, 1723554359, 1723554359),
('9cc1a8ab-9edd-4a32-97c7-8fef8c5e2503', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:19181:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":6:{s:11:\"\0*\0exporter\";O:36:\"App\\Filament\\Exports\\ProductExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:36:\"App\\Filament\\Exports\\ProductExporter\";s:10:\"total_rows\";i:74;s:9:\"file_disk\";s:6:\"public\";s:10:\"updated_at\";s:19:\"2024-08-13 20:28:44\";s:10:\"created_at\";s:19:\"2024-08-13 20:28:44\";s:2:\"id\";i:2;s:9:\"file_name\";s:17:\"export-2-products\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:36:\"App\\Filament\\Exports\\ProductExporter\";s:10:\"total_rows\";i:74;s:9:\"file_disk\";s:6:\"public\";s:10:\"updated_at\";s:19:\"2024-08-13 20:28:44\";s:10:\"created_at\";s:19:\"2024-08-13 20:28:44\";s:2:\"id\";i:2;s:9:\"file_name\";s:17:\"export-2-products\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:17:\"export-2-products\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:4:\"user\";O:15:\"App\\Models\\User\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"users\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:17:{s:2:\"id\";i:1;s:6:\"avatar\";s:52:\"avatars/DuP0mn6tdTr2kny0MFCZkkxLVNkCcUKsLVA69vJO.png\";s:4:\"name\";s:5:\"admin\";s:5:\"email\";s:29:\"admin@freshbeanpurwokerto.com\";s:5:\"phone\";s:14:\"+6287803280418\";s:11:\"province_id\";i:10;s:7:\"city_id\";i:91;s:6:\"alamat\";s:113:\"Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114\";s:8:\"kode_pos\";s:5:\"16952\";s:17:\"email_verified_at\";s:19:\"2024-07-11 08:48:29\";s:8:\"password\";s:60:\"$2y$12$xgEaloo/DOCUiiqr42sq4elOWDe6nx67a2k9zguwxWixGOzdGR8hy\";s:4:\"role\";s:5:\"admin\";s:14:\"remember_token\";s:60:\"9bypqxqs5DMzyst4ob73bqxITMFscKhNeHYvCqEvULLgavnGtDRqWcHf4yDk\";s:10:\"created_at\";s:19:\"2024-07-11 08:48:29\";s:10:\"updated_at\";s:19:\"2024-07-14 22:34:44\";s:5:\"theme\";s:7:\"default\";s:11:\"theme_color\";N;}s:11:\"\0*\0original\";a:17:{s:2:\"id\";i:1;s:6:\"avatar\";s:52:\"avatars/DuP0mn6tdTr2kny0MFCZkkxLVNkCcUKsLVA69vJO.png\";s:4:\"name\";s:5:\"admin\";s:5:\"email\";s:29:\"admin@freshbeanpurwokerto.com\";s:5:\"phone\";s:14:\"+6287803280418\";s:11:\"province_id\";i:10;s:7:\"city_id\";i:91;s:6:\"alamat\";s:113:\"Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114\";s:8:\"kode_pos\";s:5:\"16952\";s:17:\"email_verified_at\";s:19:\"2024-07-11 08:48:29\";s:8:\"password\";s:60:\"$2y$12$xgEaloo/DOCUiiqr42sq4elOWDe6nx67a2k9zguwxWixGOzdGR8hy\";s:4:\"role\";s:5:\"admin\";s:14:\"remember_token\";s:60:\"9bypqxqs5DMzyst4ob73bqxITMFscKhNeHYvCqEvULLgavnGtDRqWcHf4yDk\";s:10:\"created_at\";s:19:\"2024-07-11 08:48:29\";s:10:\"updated_at\";s:19:\"2024-07-14 22:34:44\";s:5:\"theme\";s:7:\"default\";s:11:\"theme_color\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:17:\"email_verified_at\";s:8:\"datetime\";s:8:\"password\";s:6:\"hashed\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"roles\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:29:\"Spatie\\Permission\\Models\\Role\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"roles\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";i:1;s:4:\"name\";s:11:\"super-admin\";s:10:\"guard_name\";s:3:\"web\";s:10:\"created_at\";s:19:\"2024-07-11 08:48:29\";s:10:\"updated_at\";s:19:\"2024-07-11 08:48:29\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:1;s:4:\"name\";s:11:\"super-admin\";s:10:\"guard_name\";s:3:\"web\";s:10:\"created_at\";s:19:\"2024-07-11 08:48:29\";s:10:\"updated_at\";s:19:\"2024-07-11 08:48:29\";s:14:\"pivot_model_id\";i:1;s:13:\"pivot_role_id\";i:1;s:16:\"pivot_model_type\";s:15:\"App\\Models\\User\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"pivot\";O:49:\"Illuminate\\Database\\Eloquent\\Relations\\MorphPivot\":35:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:15:\"model_has_roles\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:0;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:3:{s:10:\"model_type\";s:15:\"App\\Models\\User\";s:8:\"model_id\";i:1;s:7:\"role_id\";i:1;}s:11:\"\0*\0original\";a:3:{s:10:\"model_type\";s:15:\"App\\Models\\User\";s:8:\"model_id\";i:1;s:7:\"role_id\";i:1;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:0;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"pivotParent\";O:15:\"App\\Models\\User\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"users\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:0;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:0:{}s:11:\"\0*\0original\";a:0:{}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:17:\"email_verified_at\";s:8:\"datetime\";s:8:\"password\";s:6:\"hashed\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:2:{i:0;s:8:\"password\";i:1;s:14:\"remember_token\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:10:{i:0;s:6:\"avatar\";i:1;s:4:\"name\";i:2;s:5:\"email\";i:3;s:5:\"phone\";i:4;s:11:\"province_id\";i:5;s:7:\"city_id\";i:6;s:6:\"alamat\";i:7;s:8:\"kode_pos\";i:8;s:8:\"password\";i:9;s:4:\"role\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:20:\"\0*\0rememberTokenName\";s:14:\"remember_token\";s:14:\"\0*\0accessToken\";N;}s:13:\"\0*\0foreignKey\";s:8:\"model_id\";s:13:\"\0*\0relatedKey\";s:7:\"role_id\";s:12:\"\0*\0morphType\";s:10:\"model_type\";s:13:\"\0*\0morphClass\";s:15:\"App\\Models\\User\";}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:2:{i:0;s:8:\"password\";i:1;s:14:\"remember_token\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:10:{i:0;s:6:\"avatar\";i:1;s:4:\"name\";i:2;s:5:\"email\";i:3;s:5:\"phone\";i:4;s:11:\"province_id\";i:5;s:7:\"city_id\";i:6;s:6:\"alamat\";i:7;s:8:\"kode_pos\";i:8;s:8:\"password\";i:9;s:4:\"role\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:20:\"\0*\0rememberTokenName\";s:14:\"remember_token\";s:14:\"\0*\0accessToken\";N;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:12:{s:2:\"id\";s:2:\"ID\";s:9:\"origin_id\";s:9:\"Origin id\";s:11:\"category_id\";s:11:\"Category id\";s:4:\"kode\";s:4:\"Kode\";s:5:\"image\";s:5:\"Image\";s:4:\"name\";s:4:\"Name\";s:6:\"weight\";s:6:\"Weight\";s:6:\"satuan\";s:6:\"Satuan\";s:5:\"price\";s:5:\"Price\";s:11:\"description\";s:11:\"Description\";s:10:\"created_at\";s:10:\"Created at\";s:10:\"updated_at\";s:10:\"Updated at\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:2;s:9:\"relations\";a:2:{i:0;s:4:\"user\";i:1;s:10:\"user.roles\";}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:12:{s:2:\"id\";s:2:\"ID\";s:9:\"origin_id\";s:9:\"Origin id\";s:11:\"category_id\";s:11:\"Category id\";s:4:\"kode\";s:4:\"Kode\";s:5:\"image\";s:5:\"Image\";s:4:\"name\";s:4:\"Name\";s:6:\"weight\";s:6:\"Weight\";s:6:\"satuan\";s:6:\"Satuan\";s:5:\"price\";s:5:\"Price\";s:11:\"description\";s:11:\"Description\";s:10:\"created_at\";s:10:\"Created at\";s:10:\"updated_at\";s:10:\"Updated at\";}s:10:\"\0*\0options\";a:0:{}s:19:\"chainCatchCallbacks\";a:0:{}s:7:\"chained\";a:1:{i:0;s:9311:\"O:44:\"Filament\\Actions\\Exports\\Jobs\\CreateXlsxFile\":4:{s:11:\"\0*\0exporter\";O:36:\"App\\Filament\\Exports\\ProductExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:36:\"App\\Filament\\Exports\\ProductExporter\";s:10:\"total_rows\";i:74;s:9:\"file_disk\";s:6:\"public\";s:10:\"updated_at\";s:19:\"2024-08-13 20:28:44\";s:10:\"created_at\";s:19:\"2024-08-13 20:28:44\";s:2:\"id\";i:2;s:9:\"file_name\";s:17:\"export-2-products\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:36:\"App\\Filament\\Exports\\ProductExporter\";s:10:\"total_rows\";i:74;s:9:\"file_disk\";s:6:\"public\";s:10:\"updated_at\";s:19:\"2024-08-13 20:28:44\";s:10:\"created_at\";s:19:\"2024-08-13 20:28:44\";s:2:\"id\";i:2;s:9:\"file_name\";s:17:\"export-2-products\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:17:\"export-2-products\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:4:\"user\";O:15:\"App\\Models\\User\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"users\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:17:{s:2:\"id\";i:1;s:6:\"avatar\";s:52:\"avatars/DuP0mn6tdTr2kny0MFCZkkxLVNkCcUKsLVA69vJO.png\";s:4:\"name\";s:5:\"admin\";s:5:\"email\";s:29:\"admin@freshbeanpurwokerto.com\";s:5:\"phone\";s:14:\"+6287803280418\";s:11:\"province_id\";i:10;s:7:\"city_id\";i:91;s:6:\"alamat\";s:113:\"Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114\";s:8:\"kode_pos\";s:5:\"16952\";s:17:\"email_verified_at\";s:19:\"2024-07-11 08:48:29\";s:8:\"password\";s:60:\"$2y$12$xgEaloo/DOCUiiqr42sq4elOWDe6nx67a2k9zguwxWixGOzdGR8hy\";s:4:\"role\";s:5:\"admin\";s:14:\"remember_token\";s:60:\"9bypqxqs5DMzyst4ob73bqxITMFscKhNeHYvCqEvULLgavnGtDRqWcHf4yDk\";s:10:\"created_at\";s:19:\"2024-07-11 08:48:29\";s:10:\"updated_at\";s:19:\"2024-07-14 22:34:44\";s:5:\"theme\";s:7:\"default\";s:11:\"theme_color\";N;}s:11:\"\0*\0original\";a:17:{s:2:\"id\";i:1;s:6:\"avatar\";s:52:\"avatars/DuP0mn6tdTr2kny0MFCZkkxLVNkCcUKsLVA69vJO.png\";s:4:\"name\";s:5:\"admin\";s:5:\"email\";s:29:\"admin@freshbeanpurwokerto.com\";s:5:\"phone\";s:14:\"+6287803280418\";s:11:\"province_id\";i:10;s:7:\"city_id\";i:91;s:6:\"alamat\";s:113:\"Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114\";s:8:\"kode_pos\";s:5:\"16952\";s:17:\"email_verified_at\";s:19:\"2024-07-11 08:48:29\";s:8:\"password\";s:60:\"$2y$12$xgEaloo/DOCUiiqr42sq4elOWDe6nx67a2k9zguwxWixGOzdGR8hy\";s:4:\"role\";s:5:\"admin\";s:14:\"remember_token\";s:60:\"9bypqxqs5DMzyst4ob73bqxITMFscKhNeHYvCqEvULLgavnGtDRqWcHf4yDk\";s:10:\"created_at\";s:19:\"2024-07-11 08:48:29\";s:10:\"updated_at\";s:19:\"2024-07-14 22:34:44\";s:5:\"theme\";s:7:\"default\";s:11:\"theme_color\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:17:\"email_verified_at\";s:8:\"datetime\";s:8:\"password\";s:6:\"hashed\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"roles\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:29:\"Spatie\\Permission\\Models\\Role\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"roles\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";i:1;s:4:\"name\";s:11:\"super-admin\";s:10:\"guard_name\";s:3:\"web\";s:10:\"created_at\";s:19:\"2024-07-11 08:48:29\";s:10:\"updated_at\";s:19:\"2024-07-11 08:48:29\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:1;s:4:\"name\";s:11:\"super-admin\";s:10:\"guard_name\";s:3:\"web\";s:10:\"created_at\";s:19:\"2024-07-11 08:48:29\";s:10:\"updated_at\";s:19:\"2024-07-11 08:48:29\";s:14:\"pivot_model_id\";i:1;s:13:\"pivot_role_id\";i:1;s:16:\"pivot_model_type\";s:15:\"App\\Models\\User\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"pivot\";O:49:\"Illuminate\\Database\\Eloquent\\Relations\\MorphPivot\":35:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:15:\"model_has_roles\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:0;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:3:{s:10:\"model_type\";s:15:\"App\\Models\\User\";s:8:\"model_id\";i:1;s:7:\"role_id\";i:1;}s:11:\"\0*\0original\";a:3:{s:10:\"model_type\";s:15:\"App\\Models\\User\";s:8:\"model_id\";i:1;s:7:\"role_id\";i:1;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:0;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"pivotParent\";O:15:\"App\\Models\\User\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"users\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:0;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:0:{}s:11:\"\0*\0original\";a:0:{}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:17:\"email_verified_at\";s:8:\"datetime\";s:8:\"password\";s:6:\"hashed\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:2:{i:0;s:8:\"password\";i:1;s:14:\"remember_token\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:10:{i:0;s:6:\"avatar\";i:1;s:4:\"name\";i:2;s:5:\"email\";i:3;s:5:\"phone\";i:4;s:11:\"province_id\";i:5;s:7:\"city_id\";i:6;s:6:\"alamat\";i:7;s:8:\"kode_pos\";i:8;s:8:\"password\";i:9;s:4:\"role\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:20:\"\0*\0rememberTokenName\";s:14:\"remember_token\";s:14:\"\0*\0accessToken\";N;}s:13:\"\0*\0foreignKey\";s:8:\"model_id\";s:13:\"\0*\0relatedKey\";s:7:\"role_id\";s:12:\"\0*\0morphType\";s:10:\"model_type\";s:13:\"\0*\0morphClass\";s:15:\"App\\Models\\User\";}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:2:\"id\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:2:{i:0;s:8:\"password\";i:1;s:14:\"remember_token\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:10:{i:0;s:6:\"avatar\";i:1;s:4:\"name\";i:2;s:5:\"email\";i:3;s:5:\"phone\";i:4;s:11:\"province_id\";i:5;s:7:\"city_id\";i:6;s:6:\"alamat\";i:7;s:8:\"kode_pos\";i:8;s:8:\"password\";i:9;s:4:\"role\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:20:\"\0*\0rememberTokenName\";s:14:\"remember_token\";s:14:\"\0*\0accessToken\";N;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:12:{s:2:\"id\";s:2:\"ID\";s:9:\"origin_id\";s:9:\"Origin id\";s:11:\"category_id\";s:11:\"Category id\";s:4:\"kode\";s:4:\"Kode\";s:5:\"image\";s:5:\"Image\";s:4:\"name\";s:4:\"Name\";s:6:\"weight\";s:6:\"Weight\";s:6:\"satuan\";s:6:\"Satuan\";s:5:\"price\";s:5:\"Price\";s:11:\"description\";s:11:\"Description\";s:10:\"created_at\";s:10:\"Created at\";s:10:\"updated_at\";s:10:\"Updated at\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:2;s:9:\"relations\";a:2:{i:0;s:4:\"user\";i:1;s:10:\"user.roles\";}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:12:{s:2:\"id\";s:2:\"ID\";s:9:\"origin_id\";s:9:\"Origin id\";s:11:\"category_id\";s:11:\"Category id\";s:4:\"kode\";s:4:\"Kode\";s:5:\"image\";s:5:\"Image\";s:4:\"name\";s:4:\"Name\";s:6:\"weight\";s:6:\"Weight\";s:6:\"satuan\";s:6:\"Satuan\";s:5:\"price\";s:5:\"Price\";s:11:\"description\";s:11:\"Description\";s:10:\"created_at\";s:10:\"Created at\";s:10:\"updated_at\";s:10:\"Updated at\";}s:10:\"\0*\0options\";a:0:{}}\";}}}s:8:\"function\";s:270:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\r\n                if (! $batch->cancelled()) {\r\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\r\n                }\r\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"00000000000010fa0000000000000000\";}\";s:4:\"hash\";s:44:\"OVjwsieWt1x/t5v2cenBpvjPmfriYJH7Q2WbRFftKyE=\";}}}}', NULL, 1723555724, 1723555724);

-- --------------------------------------------------------

--
-- Struktur dari tabel `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) DEFAULT NULL,
  `collection_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `disk` varchar(255) NOT NULL,
  `conversions_disk` varchar(255) DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`generated_conversions`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_07_11_043559_create_filament_admin_tables', 1),
(6, '2024_07_11_050952_create_categories_table', 1),
(7, '2024_07_11_051005_create_origins_table', 1),
(8, '2024_07_11_051027_create_roats_levels_table', 1),
(9, '2024_07_11_053024_product', 1),
(10, '2024_07_11_064339_create_suppliers_table', 1),
(11, '2024_07_11_064421_create_stok_brngs_table', 1),
(12, '2024_07_11_072807_brng_msk', 1),
(13, '2024_07_11_072819_brng_klr', 1),
(14, '2024_07_11_092009_create_brng_msks_table', 2),
(15, '2024_07_11_092106_create_brng_klrs_table', 2),
(16, '2024_07_11_092200_create_stok_brngs_table', 2),
(17, '2024_07_11_102420_create_brng_klrs_table', 3),
(18, '2024_07_11_141031_create_notifications_table', 4),
(19, '2024_07_11_144004_create_notifications_table', 5),
(20, '2024_07_12_103844_create_media_table', 6),
(21, '2024_07_12_112550_add_image_to_products_table', 7),
(22, '2024_07_12_125039_create_payment_methods_table', 8),
(23, '2024_07_12_130702_create_alamats_table', 9),
(24, '2024_07_12_135833_alamat', 10),
(25, '2024_07_12_165412_add_avatar_to_users_table', 11),
(26, '2024_07_12_204811_create_rekomendasi_produks_table', 12),
(27, '2024_07_13_085254_add_stok_tersedia_to_product_table', 13),
(28, '2024_07_13_090532_add_stok_tersedia_to_product_table', 14),
(29, '2024_07_13_091543_add_stok_tersedia_to_product_table', 15),
(30, '2024_07_13_114925_remove_stok_brngs_id_from_products', 16),
(31, '2024_07_13_123456_add_security_stok_from_stok_brngs', 17),
(32, '2024_07_13_123709_add_security_stok_from_stok_brngs', 18),
(33, '2024_07_13_183503_create_cart_items_table', 19),
(34, '2024_07_14_134619_create_tokos_table', 20),
(35, '2024_07_14_134950_create_alamat_users_table', 20),
(36, '2024_07_14_171235_add_alamat_to_users_table', 21),
(37, '2024_07_14_212321_create_provinces_table', 22),
(38, '2024_07_14_212334_create_cities_table', 22),
(39, '2024_07_16_124107_add_roast_level_to_cart_items_table', 23),
(40, '2024_07_16_173348_create_orders_table', 24),
(41, '2024_07_16_173357_create_order_items_table', 25),
(42, '2024_07_16_173406_create_order_payments_table', 25),
(43, '2024_07_16_173420_create_order_shippings_table', 25),
(44, '2024_07_17_160558_add_weight_to_product_table', 26),
(45, '2024_07_17_171619_create_couriers_table', 27),
(46, '2024_07_17_173633_courier', 28),
(47, '2024_07_17_173724_add_courier_id_to_order_shippings_table', 29),
(48, '2024_07_17_175040_add_shipping_cost_id_to_courier_table', 30),
(49, '2024_07_17_183029_add_request_api__to_courier_table', 31),
(50, '2024_07_22_110647_create_varians_table', 32),
(51, '2024_07_22_110801_add_varian_to_product_table', 33),
(52, '2024_07_22_145204_remove_varian_id_from_products_table', 34),
(53, '2024_07_22_145629_add_product_id_to_varian_table', 35),
(54, '2024_08_07_200752_add_supplier_id_to_stok_brng_table', 36),
(55, '2024_08_07_201415_add_supplier_id_to_brng_msks_table', 37),
(56, '2024_08_07_201636_add_supplier_id_to_brng_krls_table', 38),
(57, '2024_08_12_130009_create_authentication_log_table', 39),
(58, '2024_08_13_104713_add_themes_settings_to_users_table', 40),
(59, '2024_08_13_200456_create_job_batches_table', 41),
(60, '2024_08_13_200507_create_imports_table', 41),
(61, '2024_08_13_200508_create_exports_table', 41),
(62, '2024_08_13_200509_create_failed_import_rows_table', 41),
(63, '2022_12_14_083707_create_settings_table', 42),
(64, '2024_08_18_102858_sites_settings', 42),
(65, '2024_08_18_102917_pwa_settings', 43),
(67, '2024_08_19_111024_create_permission_tables', 44),
(68, '2024_08_25_163751_create_messages_table', 45),
(69, '2024_08_27_105036_create_chats_table', 46),
(70, '2024_08_27_155837_create_favorites_table', 47),
(71, '2024_08_28_133917_create_reviews_table', 48),
(72, '2024_08_28_141714_create_reviews_table', 49);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 25),
(3, 'App\\Models\\User', 22),
(3, 'App\\Models\\User', 24),
(3, 'App\\Models\\User', 26),
(3, 'App\\Models\\User', 28),
(3, 'App\\Models\\User', 29),
(3, 'App\\Models\\User', 33),
(3, 'App\\Models\\User', 34),
(3, 'App\\Models\\User', 35),
(3, 'App\\Models\\User', 36),
(3, 'App\\Models\\User', 37),
(3, 'App\\Models\\User', 38),
(3, 'App\\Models\\User', 39),
(3, 'App\\Models\\User', 40),
(3, 'App\\Models\\User', 41),
(3, 'App\\Models\\User', 42),
(3, 'App\\Models\\User', 43),
(3, 'App\\Models\\User', 44),
(4, 'App\\Models\\User', 23);

-- --------------------------------------------------------

--
-- Struktur dari tabel `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('01548ed3-60e1-43b4-82b1-98be57116306', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 3, '{\"order_id\":196,\"status\":\"Diproses\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD014 telah diperbarui menjadi Diproses. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history196\",\"button_text\":\"View Order\"}', '2024-07-28 07:39:36', '2024-07-27 15:05:03', '2024-07-28 07:39:36'),
('02a1ff8a-bf99-44a8-8bab-bfeb81283ff7', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 1, '{\"order_id\":214,\"status\":\"completed\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD014 telah diperbarui menjadi completed. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history214\",\"button_text\":\"View Order\"}', '2024-08-07 16:34:16', '2024-08-07 14:43:18', '2024-08-07 16:34:16'),
('063a9584-e081-4eec-ab07-969dbe53c9a0', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 1, '{\"order_id\":231,\"status\":\"Dikirim\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD028 telah diperbarui menjadi Dikirim. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history231\",\"button_text\":\"View Order\"}', '2024-08-14 14:14:42', '2024-08-14 13:44:12', '2024-08-14 14:14:42'),
('0bcf00f9-9689-45c1-a6ad-1137e5a5f323', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/order\\/275\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"admin has marked the order cancelled with No order ORD066. \\n                       \\nPlease check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**Order has been cancelled**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-12-09 07:49:28', '2024-11-25 08:12:48', '2024-12-09 07:49:28'),
('0c7a5422-4579-4b9f-b200-c4744085b7bd', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 3, '{\"order_id\":197,\"status\":\"Dikirim\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD015 telah diperbarui menjadi Dikirim. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history197\",\"button_text\":\"View Order\"}', '2024-07-28 07:39:36', '2024-07-28 05:11:39', '2024-07-28 07:39:36'),
('0ced3f85-d8a5-40bb-bc53-74dd79d94d61', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 3, '{\"order_id\":186,\"status\":\"Diproses\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD005 telah diperbarui Diproses Silakan cek detail pesanan Anda untuk informasi lebih lanjut\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history\\/186\"}', '2024-07-25 09:05:31', '2024-07-25 09:05:01', '2024-07-25 09:05:31'),
('11d84cd6-1c4f-4c6b-b4a8-edf1b0b622c4', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 3, '{\"order_id\":188,\"status\":\"Dikirim\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD007 telah diperbarui menjadi Dikirim. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history188\",\"button_text\":\"View Order\"}', '2024-07-26 14:26:25', '2024-07-26 14:23:48', '2024-07-26 14:26:25'),
('14333080-2a54-4128-a0a5-9354fbea322e', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/orders\\/253\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"admin has placed an order with no order ORD048. \\n                       \\n Please check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**A new order has been placed**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-08-18 14:23:28', '2024-08-18 14:17:26', '2024-08-18 14:23:28'),
('15f71737-6a27-4839-9c19-683679af484d', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_id\":265,\"status\":\"Diproses\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD058 telah diperbarui menjadi Diproses. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history265\",\"button_text\":\"View Order\"}', NULL, '2024-08-21 04:38:02', '2024-08-21 04:38:02'),
('173c5c28-1d43-4a5e-adce-51e1bef2d379', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/orders\\/246\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"admin has placed an order with no order ORD041. \\n                       \\n Please check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**A new order has been placed**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-08-18 13:48:54', '2024-08-18 12:02:11', '2024-08-18 13:48:54'),
('196d6a19-2840-47b8-a07f-3e13495d6c0a', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 3, '{\"order_id\":200,\"status\":\"Dikirim\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD018 telah diperbarui menjadi Dikirim. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history200\",\"button_text\":\"View Order\"}', '2024-07-28 07:39:36', '2024-07-28 06:40:35', '2024-07-28 07:39:36'),
('1d42c17b-c405-40c5-8bc8-b9e4071909a9', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/orders\\/245\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"admin has placed an order with no order ORD040. \\n                       \\n Please check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**A new order has been placed**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-08-18 13:48:54', '2024-08-18 10:59:15', '2024-08-18 13:48:54'),
('1dd8bd3e-10cb-4c0f-8080-eb525d113850', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/order\\/269\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"A new order with no order ORD060 has been placed.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"New Order Created\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-08-23 14:11:45', '2024-08-23 06:43:29', '2024-08-23 14:11:45'),
('1f39b00f-0066-4386-9303-dc01ce452e1d', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/orders\\/260\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"admin has placed an order with no order ORD055. \\n                       \\n Please check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**A new order has been placed**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-08-22 07:11:12', '2024-08-18 14:49:17', '2024-08-22 07:11:12'),
('22c9485d-17e0-4f59-822e-5ca54a289333', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 1, '{\"order_id\":214,\"status\":\"completed\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD014 telah diperbarui menjadi completed. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history214\",\"button_text\":\"View Order\"}', '2024-08-07 16:34:16', '2024-08-07 16:10:56', '2024-08-07 16:34:16'),
('23c40694-3df6-401c-82a5-eb7d4271eac5', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/orders\\/254\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"admin has placed an order with no order ORD049. \\n                       \\n Please check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**A new order has been placed**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-08-18 14:23:28', '2024-08-18 14:19:09', '2024-08-18 14:23:28'),
('252da066-760b-42eb-aeb4-04b8e241be36', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 33, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history\",\"view\":\"filament-actions::link-action\"}],\"body\":\"Your order with number ORD062 status has been updated.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"Order Status Updated\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-08-26 06:17:23', '2024-08-26 05:57:38', '2024-08-26 06:17:23'),
('2845f37d-d16c-4078-b73a-6f6cff2c0394', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 1, '{\"order_id\":212,\"status\":\"completed\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD012 telah diperbarui menjadi completed. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history212\",\"button_text\":\"View Order\"}', '2024-08-07 13:43:02', '2024-08-07 12:42:12', '2024-08-07 13:43:02'),
('2b0789a5-df89-43d0-b15e-282b914aa785', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 1, '{\"order_id\":214,\"status\":\"completed\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD014 telah diperbarui menjadi completed. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history214\",\"button_text\":\"View Order\"}', '2024-08-12 12:00:12', '2024-08-07 17:11:26', '2024-08-12 12:00:12'),
('2ba01626-8ddc-4e83-b1f9-ac8505b917ba', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 1, '{\"order_id\":214,\"status\":\"Dikirim\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD014 telah diperbarui menjadi Dikirim. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history214\",\"button_text\":\"View Order\"}', '2024-08-07 16:34:16', '2024-08-07 14:31:51', '2024-08-07 16:34:16'),
('2bf3f6a6-937b-426e-b411-3d82de701acf', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/orders\\/255\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"admin has placed an order with no order ORD050. \\n                       \\n Please check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**A new order has been placed**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-08-18 14:36:51', '2024-08-18 14:28:02', '2024-08-18 14:36:51'),
('2d5538b6-1e28-4cf1-a478-4bceebeec08d', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/orders\\/249\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"admin has placed an order with no order ORD044. \\n                       \\n Please check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**A new order has been placed**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-08-18 13:48:54', '2024-08-18 13:37:41', '2024-08-18 13:48:54'),
('302e1ae5-bd6f-42ca-a769-fcd102e24fc3', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 3, '{\"order_id\":186,\"status\":\"canceled\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD005 telah diperbarui menjadi canceled. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history186\",\"button_text\":\"View Order\"}', '2024-07-25 10:39:20', '2024-07-25 10:05:59', '2024-07-25 10:39:20'),
('3155450d-20a4-4910-abea-2f5e415f481b', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 3, '{\"order_id\":225,\"status\":\"Diproses\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD022 telah diperbarui menjadi Diproses. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history225\",\"button_text\":\"View Order\"}', NULL, '2024-08-13 11:33:08', '2024-08-13 11:33:08'),
('3485df11-ae55-4278-8ea2-9c46f6dc221a', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/orders\\/265\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"Syamsa Sj has placed an order with no order ORD058. \\n                       \\n Please check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**A new order has been placed**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-08-22 07:11:12', '2024-08-21 04:32:08', '2024-08-22 07:11:12'),
('3516581e-6f66-4fe6-bbae-a5e29fb57eba', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 1, '{\"order_id\":211,\"status\":\"Dikirim\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD011 telah diperbarui menjadi Dikirim. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history211\",\"button_text\":\"View Order\"}', '2024-08-07 13:43:02', '2024-08-07 10:32:02', '2024-08-07 13:43:02'),
('369f1677-990d-4093-b133-cfac4429d14c', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/order\\/270\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"admin has marked the order complete with No order ORD061. \\n                       \\nPlease check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**Order has been completed**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-08-28 05:10:25', '2024-08-27 13:36:39', '2024-08-28 05:10:25'),
('3701f79c-07e9-4806-b444-9645fb8d7cb3', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 3, '{\"order_id\":206,\"status\":\"Diproses\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD006 telah diperbarui menjadi Diproses. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history206\",\"button_text\":\"View Order\"}', '2024-07-31 04:24:34', '2024-07-30 14:37:11', '2024-07-31 04:24:34'),
('3cd88f84-8ee1-4401-934d-a11087fb29f1', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/order\\/275\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"admin has placed an order with no order ORD066. \\n                       \\n Please check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**A new order has been placed**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-12-09 07:49:28', '2024-11-25 08:10:32', '2024-12-09 07:49:28'),
('47a5ab30-a754-435b-a4d5-2dddbd198a61', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/order\\/270\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"admin has placed an order with no order ORD061. \\n                       \\n Please check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**A new order has been placed**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-08-26 06:22:19', '2024-08-26 04:40:23', '2024-08-26 06:22:19'),
('4855b93e-0a0c-4d5e-b06b-503a1371d2ec', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 1, '{\"order_id\":214,\"status\":\"Dikirim\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD014 telah diperbarui menjadi Dikirim. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history214\",\"button_text\":\"View Order\"}', '2024-08-12 12:00:12', '2024-08-07 17:11:13', '2024-08-12 12:00:12'),
('48d4441c-5c8a-4a18-816b-29aad0372856', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 3, '{\"order_id\":207,\"status\":\"Diproses\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD007 telah diperbarui menjadi Diproses. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history207\",\"button_text\":\"View Order\"}', '2024-08-05 03:28:33', '2024-08-02 06:02:02', '2024-08-05 03:28:33'),
('4cd67e10-d450-4685-9011-01251bf3c7f9', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 1, '{\"order_id\":215,\"status\":\"completed\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD015 telah diperbarui menjadi completed. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history215\",\"button_text\":\"View Order\"}', '2024-08-07 16:34:16', '2024-08-07 13:46:11', '2024-08-07 16:34:16'),
('4db367d7-9614-4164-9d93-8daad602b92c', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 3, '{\"order_id\":204,\"status\":\"completed\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD004 telah diperbarui menjadi completed. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history204\",\"button_text\":\"View Order\"}', '2024-07-30 14:36:19', '2024-07-30 07:28:12', '2024-07-30 14:36:19'),
('54a88c11-44af-4b26-8181-1fdfdc8ed8da', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 1, '{\"order_id\":215,\"status\":\"completed\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD015 telah diperbarui menjadi completed. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history215\",\"button_text\":\"View Order\"}', '2024-08-07 16:34:16', '2024-08-07 13:43:49', '2024-08-07 16:34:16'),
('5610738d-56a3-4695-aab2-62657e0a758e', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/orders\\/241\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"admin has placed an order with no order ORD036. \\n                       \\n Please check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**A new order has been placed**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-08-18 13:48:54', '2024-08-18 08:50:19', '2024-08-18 13:48:54'),
('573ad814-2c89-4cb3-a116-924b6c14cf66', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 3, '{\"order_id\":207,\"status\":\"completed\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD007 telah diperbarui menjadi completed. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history207\",\"button_text\":\"View Order\"}', '2024-08-05 03:28:33', '2024-08-02 06:03:59', '2024-08-05 03:28:33'),
('5a2442e9-c0ac-4fcf-8b21-7ad0ec708523', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/order\\/267\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"Shahira Julyinda has placed an order with no order ORD058. \\n                       \\n Please check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**A new order has been placed**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-08-22 07:11:12', '2024-08-21 15:17:07', '2024-08-22 07:11:12'),
('5ad32afc-6e7f-45ce-bf0b-4bf5aa034699', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 3, '{\"order_id\":202,\"status\":\"completed\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD002 telah diperbarui menjadi completed. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history202\",\"button_text\":\"View Order\"}', '2024-07-30 14:36:19', '2024-07-30 05:27:09', '2024-07-30 14:36:19'),
('5b7cf57c-5819-4d0a-b29e-025806552541', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 1, '{\"order_id\":214,\"status\":\"Dikirim\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD014 telah diperbarui menjadi Dikirim. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history214\",\"button_text\":\"View Order\"}', '2024-08-07 16:34:16', '2024-08-07 14:25:07', '2024-08-07 16:34:16'),
('6397e195-8763-496f-a336-11e7e650fd9a', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 1, '{\"order_id\":214,\"status\":\"completed\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD014 telah diperbarui menjadi completed. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history214\",\"button_text\":\"View Order\"}', '2024-08-07 16:34:16', '2024-08-07 14:10:27', '2024-08-07 16:34:16'),
('6474f6c4-2152-4a60-b0e1-69caa7ad28d1', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 3, '{\"order_id\":188,\"status\":\"Diproses\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD007 telah diperbarui menjadi Diproses. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history188\",\"button_text\":\"View Order\"}', '2024-07-26 14:26:25', '2024-07-26 14:21:08', '2024-07-26 14:26:25'),
('6486cbbd-31e8-40b5-99ff-5127c5706e68', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/order\\/274\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"admin has placed an order with no order ORD065. \\n                       \\n Please check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**A new order has been placed**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-12-09 07:49:28', '2024-11-06 02:56:45', '2024-12-09 07:49:28'),
('671573e9-369a-49d5-9dce-17912329a3e6', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/order\\/271\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"andi hermansah has placed an order with no order ORD062. \\n                       \\n Please check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**A new order has been placed**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-08-26 06:22:19', '2024-08-26 05:29:06', '2024-08-26 06:22:19'),
('68c13bb3-1353-4bfb-a773-79409a0cf647', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/order\\/276\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"admin has placed an order with no order ORD067. \\n                       \\n Please check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**A new order has been placed**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-12-09 07:49:28', '2024-12-09 07:05:26', '2024-12-09 07:49:28'),
('6ca7d409-4d7e-4d30-b0aa-442c7de2b47f', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/order\\/259\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"admin has marked the order cancelled with No order ORD054. \\n                       \\nPlease check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**Order has been cancelled**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-08-28 05:10:25', '2024-08-27 13:30:21', '2024-08-28 05:10:25'),
('6e2dd6a8-b8fa-4eeb-9f71-5c8aa39a7974', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 1, '{\"order_id\":214,\"status\":\"completed\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD014 telah diperbarui menjadi completed. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history214\",\"button_text\":\"View Order\"}', '2024-08-07 13:43:02', '2024-08-07 13:36:05', '2024-08-07 13:43:02'),
('6e5a27ef-6808-4dcc-8590-2fd5e5d6b118', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/orders\\/251\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"admin has placed an order with no order ORD046. \\n                       \\n Please check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**A new order has been placed**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-08-18 14:23:28', '2024-08-18 13:50:04', '2024-08-18 14:23:28'),
('719c247d-7ff8-41f4-93ed-0a5d4dc28e22', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 1, '{\"order_id\":214,\"status\":\"Dikirim\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD014 telah diperbarui menjadi Dikirim. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history214\",\"button_text\":\"View Order\"}', '2024-08-07 16:34:16', '2024-08-07 16:10:41', '2024-08-07 16:34:16'),
('73d534ec-f634-417b-b206-93d6ec7766c9', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 3, '{\"order_id\":186,\"status\":\"Dikirim\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD005 telah diperbarui menjadi Dikirim. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history186\",\"button_text\":\"View Order\"}', '2024-07-25 09:18:35', '2024-07-25 09:17:11', '2024-07-25 09:18:35'),
('75a4567a-ceef-4a25-a21a-f5b14121905b', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/order\\/262\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"admin has marked the order cancelled with No order ORD057. \\n                       \\nPlease check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**Order has been cancelled**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-08-28 05:10:25', '2024-08-27 13:08:01', '2024-08-28 05:10:25'),
('75b89716-640d-4476-8378-605f2793447a', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 1, '{\"order_id\":269,\"status\":\"Diproses\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD060 telah diperbarui menjadi Diproses. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history269\",\"button_text\":\"View Order\"}', '2024-08-25 09:18:19', '2024-08-23 06:43:14', '2024-08-25 09:18:19'),
('7789796b-0c3b-455f-9c9c-09015e696aad', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 1, '{\"order_id\":214,\"status\":\"Dikirim\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD014 telah diperbarui menjadi Dikirim. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history214\",\"button_text\":\"View Order\"}', '2024-08-07 16:34:16', '2024-08-07 14:43:06', '2024-08-07 16:34:16'),
('7a011a8f-d3d5-4afb-ada6-b85296f14e78', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\User', 1, '{\"message\":\"A new order has been placed successfully!\"}', '2024-07-30 06:22:55', '2024-07-25 07:50:55', '2024-07-30 06:22:55'),
('7b800e0d-b598-4048-9f48-f655fb2e7c07', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 1, '{\"order_id\":227,\"status\":\"completed\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD024 telah diperbarui menjadi completed. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history227\",\"button_text\":\"View Order\"}', '2024-08-13 15:10:01', '2024-08-13 15:06:37', '2024-08-13 15:10:01'),
('7f2a4448-6d6b-41f6-9795-524e812efe20', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 3, '{\"order_id\":206,\"status\":\"completed\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD006 telah diperbarui menjadi completed. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history206\",\"button_text\":\"View Order\"}', '2024-08-05 03:28:33', '2024-08-02 06:03:39', '2024-08-05 03:28:33'),
('7f2cd389-cf85-4a4a-9c9c-c986283b40a9', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 1, '{\"order_id\":214,\"status\":\"Dikirim\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD014 telah diperbarui menjadi Dikirim. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history214\",\"button_text\":\"View Order\"}', '2024-08-07 16:34:16', '2024-08-07 14:03:45', '2024-08-07 16:34:16'),
('7f8a12d2-4a20-4dd2-bd4b-a58eac85a070', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 1, '{\"order_id\":226,\"status\":\"completed\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD023 telah diperbarui menjadi completed. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history226\",\"button_text\":\"View Order\"}', '2024-08-13 15:10:01', '2024-08-13 14:53:12', '2024-08-13 15:10:01'),
('8207a948-a340-43a7-8108-0a97cee661b4', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 1, '{\"order_id\":229,\"status\":\"Diproses\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD026 telah diperbarui menjadi Diproses. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history229\",\"button_text\":\"View Order\"}', '2024-08-14 14:14:42', '2024-08-14 13:24:14', '2024-08-14 14:14:42'),
('82f823d7-ed71-4911-b85a-231de50d313e', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 1, '{\"order_id\":214,\"status\":\"completed\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD014 telah diperbarui menjadi completed. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history214\",\"button_text\":\"View Order\"}', '2024-08-07 16:34:16', '2024-08-07 14:03:57', '2024-08-07 16:34:16'),
('83e5ce7a-54bb-4973-b4f3-6c0c0eb657e9', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/order\\/272\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"admin has marked the order cancelled with No order ORD063. \\n                       \\nPlease check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**Order has been cancelled**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-12-09 07:49:28', '2024-11-25 08:16:28', '2024-12-09 07:49:28'),
('856628ea-9a0f-4b68-9fa4-a15a586e0451', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 1, '{\"order_id\":215,\"status\":\"completed\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD015 telah diperbarui menjadi completed. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history215\",\"button_text\":\"View Order\"}', '2024-08-07 16:34:16', '2024-08-07 13:47:16', '2024-08-07 16:34:16'),
('8595eb44-98f3-4ce8-aed8-4d28fc55cb34', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 3, '{\"order_id\":208,\"status\":\"completed\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD008 telah diperbarui menjadi completed. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history208\",\"button_text\":\"View Order\"}', '2024-08-05 04:14:17', '2024-08-05 04:05:09', '2024-08-05 04:14:17'),
('89bcf169-75aa-4a16-a17d-e272185f7431', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 3, '{\"order_id\":203,\"status\":\"completed\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD003 telah diperbarui menjadi completed. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history203\",\"button_text\":\"View Order\"}', '2024-07-30 14:36:19', '2024-07-30 06:32:21', '2024-07-30 14:36:19'),
('8a5d42a6-0cb4-4317-8b1f-038cfe1100db', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/orders\\/238\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"admin has placed an order with no order ORD035. \\n                       \\n Please check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**A new order has been placed**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-08-18 13:48:54', '2024-08-18 08:17:48', '2024-08-18 13:48:54'),
('8c2f5735-05fc-4d07-93dd-fd54b8e893f6', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/orders\\/261\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"admin has placed an order with no order ORD056. \\n                       \\n Please check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**A new order has been placed**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-08-22 07:11:12', '2024-08-18 14:50:18', '2024-08-22 07:11:12'),
('8d79b92c-9a71-4474-a6f1-c928b75d742f', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 1, '{\"order_id\":214,\"status\":\"completed\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD014 telah diperbarui menjadi completed. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history214\",\"button_text\":\"View Order\"}', '2024-08-07 16:34:16', '2024-08-07 13:51:51', '2024-08-07 16:34:16'),
('8edbbaae-5953-4831-a466-def2137b2dbf', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 3, '{\"order_id\":201,\"status\":\"Dikirim\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD001 telah diperbarui menjadi Dikirim. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history201\",\"button_text\":\"View Order\"}', '2024-07-30 14:36:19', '2024-07-28 07:39:58', '2024-07-30 14:36:19'),
('8f4704c8-2877-41d3-b93f-4897210421c8', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 1, '{\"order_id\":252,\"status\":\"Diproses\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD047 telah diperbarui menjadi Diproses. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history252\",\"button_text\":\"View Order\"}', '2024-08-18 14:23:28', '2024-08-18 13:55:15', '2024-08-18 14:23:28');
INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('94a1c740-42ff-40bc-8a2e-7c5e9260d12c', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 1, '{\"order_id\":210,\"status\":\"completed\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD010 telah diperbarui menjadi completed. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history210\",\"button_text\":\"View Order\"}', '2024-08-07 13:43:02', '2024-08-07 10:22:03', '2024-08-07 13:43:02'),
('94f455e0-a326-47ee-802c-e3c38a10b9dd', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 3, '{\"order_id\":201,\"status\":\"Diproses\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD001 telah diperbarui menjadi Diproses. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history201\",\"button_text\":\"View Order\"}', '2024-07-28 07:39:36', '2024-07-28 07:39:18', '2024-07-28 07:39:36'),
('9546bf3d-f346-4ccb-8585-29ea0b0b0ac9', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 1, '{\"order_id\":270,\"status\":\"Dikirim\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD061 telah diperbarui menjadi Dikirim. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history270\",\"button_text\":\"View Order\"}', NULL, '2024-08-26 04:43:15', '2024-08-26 04:43:15'),
('95668556-8317-4d9d-b91b-d10c0c27112a', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 33, '{\"actions\":[],\"body\":\"Your order status has been updated.\\n Order ID: ORD062\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"Order Status Updated\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-08-26 05:37:30', '2024-08-26 05:31:22', '2024-08-26 05:37:30'),
('95bee28c-1edf-4f13-88bc-72898688694f', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/orders\\/252\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"admin has placed an order with no order ORD047. \\n                       \\n Please check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**A new order has been placed**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-08-18 14:23:28', '2024-08-18 13:54:14', '2024-08-18 14:23:28'),
('97254060-9194-4925-9bfc-f0d94fe86b34', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 1, '{\"order_id\":232,\"status\":\"completed\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD029 telah diperbarui menjadi completed. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history232\",\"button_text\":\"View Order\"}', '2024-08-14 14:14:42', '2024-08-14 14:04:35', '2024-08-14 14:14:42'),
('98aa0447-90a2-4853-8e86-ad7daf9e5a75', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\User', 1, '{\"message\":\"A new order has been placed successfully!\"}', '2024-07-30 06:22:55', '2024-07-25 07:38:24', '2024-07-30 06:22:55'),
('9b3e0aec-795e-49fc-9015-894a53f691d0', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 1, '{\"order_id\":214,\"status\":\"completed\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD014 telah diperbarui menjadi completed. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history214\",\"button_text\":\"View Order\"}', '2024-08-07 16:34:16', '2024-08-07 14:15:22', '2024-08-07 16:34:16'),
('9dcf131f-9e60-431b-8609-e7c2fd70548f', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history\",\"view\":\"filament-actions::link-action\"}],\"body\":\"Your order with number ORD064 status has been updated.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"Order Status Updated\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-08-28 05:10:25', '2024-08-28 03:51:58', '2024-08-28 05:10:25'),
('9fd31c5f-82a5-44fd-9526-5858e61f3e1c', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 1, '{\"order_id\":270,\"status\":\"Diproses\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD061 telah diperbarui menjadi Diproses. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history270\",\"button_text\":\"View Order\"}', NULL, '2024-08-26 04:42:10', '2024-08-26 04:42:10'),
('a09041a9-f64f-4748-9461-330a169ad138', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 3, '{\"order_id\":186,\"status\":\"completed\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD005 telah diperbarui menjadi completed. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history186\",\"button_text\":\"View Order\"}', '2024-07-25 09:58:49', '2024-07-25 09:58:30', '2024-07-25 09:58:49'),
('a1b443e1-f71b-46d2-91b6-4ba111667c4a', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/orders\\/252\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"admin has marked the order complete with No order ORD047. \\n                       \\nPlease check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**Order has been completed**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-08-18 14:23:28', '2024-08-18 13:56:42', '2024-08-18 14:23:28'),
('a2746b5a-72fc-4803-9b25-79371394831a', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 3, '{\"order_id\":199,\"status\":\"Dikirim\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD017 telah diperbarui menjadi Dikirim. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history199\",\"button_text\":\"View Order\"}', '2024-07-28 07:39:36', '2024-07-28 06:48:18', '2024-07-28 07:39:36'),
('a2e556b8-db46-4a4c-94e3-ba3a961b7980', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/order\\/279\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"SYAMSA SHAHIRA JULYINDA has placed an order with no order ORD070. \\n                       \\n Please check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**A new order has been placed**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', NULL, '2024-12-26 03:53:43', '2024-12-26 03:53:43'),
('a46d6c6d-da70-4072-8dcd-f4994520757f', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 1, '{\"order_id\":234,\"status\":\"Dikirim\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD031 telah diperbarui menjadi Dikirim. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history234\",\"button_text\":\"View Order\"}', '2024-08-14 14:14:42', '2024-08-14 14:09:01', '2024-08-14 14:14:42'),
('a4a2f8ac-8f02-4781-a694-02bf78f38bd0', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 1, '{\"order_id\":228,\"status\":\"completed\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD025 telah diperbarui menjadi completed. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history228\",\"button_text\":\"View Order\"}', '2024-08-14 14:14:42', '2024-08-13 15:20:03', '2024-08-14 14:14:42'),
('aa9b9112-4de8-431a-9caa-26af361a6ac7', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/orders\\/256\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"admin has placed an order with no order ORD051. \\n                       \\n Please check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**A new order has been placed**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-08-18 14:36:51', '2024-08-18 14:31:26', '2024-08-18 14:36:51'),
('ac83532d-e7be-48ce-a488-b3a109d2b221', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/orders\\/242\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"admin has placed an order with no order ORD037. \\n                       \\n Please check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**A new order has been placed**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-08-18 13:48:54', '2024-08-18 09:12:22', '2024-08-18 13:48:54'),
('b3e60dd8-716c-43ef-969d-5399918e66ff', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/orders\\/247\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"admin has placed an order with no order ORD042. \\n                       \\n Please check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**A new order has been placed**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-08-18 13:48:54', '2024-08-18 12:44:33', '2024-08-18 13:48:54'),
('b5a316b8-d4cb-45a8-b56c-a26bc2460a76', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/order\\/260\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"admin has marked the order cancelled with No order ORD055. \\n                       \\nPlease check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**Order has been cancelled**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-08-28 05:10:25', '2024-08-27 13:20:26', '2024-08-28 05:10:25'),
('b8f6d11d-1735-4133-9ffe-1a089695b839', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 3, '{\"order_id\":180,\"status\":\"Dikirim\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD002 telah diperbarui menjadi Dikirim. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history180\",\"button_text\":\"View Order\"}', '2024-07-27 12:53:26', '2024-07-27 11:22:20', '2024-07-27 12:53:26'),
('b9e713f6-efa0-4309-820a-d57ab7889315', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/order\\/278\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"admin has placed an order with no order ORD069. \\n                       \\n Please check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**A new order has been placed**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', NULL, '2024-12-09 09:26:31', '2024-12-09 09:26:31'),
('ba5a08ee-7dd2-4d99-9c48-44356c5377cc', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 1, '{\"order_id\":214,\"status\":\"Dikirim\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD014 telah diperbarui menjadi Dikirim. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history214\",\"button_text\":\"View Order\"}', '2024-08-07 16:34:16', '2024-08-07 14:01:10', '2024-08-07 16:34:16'),
('bcda472e-4eb6-47b8-b404-4789a1eabd1f', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/orders\\/257\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"admin has placed an order with no order ORD052. \\n                       \\n Please check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**A new order has been placed**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-08-18 14:36:51', '2024-08-18 14:33:52', '2024-08-18 14:36:51'),
('bffdf63b-671c-4473-b928-3b1a1f8e0f8e', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/orders\\/259\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"admin has placed an order with no order ORD054. \\n                       \\n Please check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**A new order has been placed**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-08-18 14:36:51', '2024-08-18 14:34:24', '2024-08-18 14:36:51'),
('c0d5d20a-1338-49b5-9610-f89f7cfb508a', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 1, '{\"order_id\":214,\"status\":\"completed\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD014 telah diperbarui menjadi completed. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history214\",\"button_text\":\"View Order\"}', '2024-08-07 16:34:16', '2024-08-07 14:01:25', '2024-08-07 16:34:16'),
('c165f1f6-45bf-43cc-859e-6a7f7060c31d', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 1, '{\"order_id\":213,\"status\":\"completed\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD013 telah diperbarui menjadi completed. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history213\",\"button_text\":\"View Order\"}', '2024-08-07 13:43:02', '2024-08-07 13:30:23', '2024-08-07 13:43:02'),
('c37721b8-5fd6-4dc3-899d-101842b9c084', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 3, '{\"order_id\":176,\"status\":\"Dikirim\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD001 telah diperbarui Dikirim Silakan cek detail pesanan Anda untuk informasi lebih lanjut\",\"url\":\"\\/purchase-history\"}', '2024-07-25 09:05:41', '2024-07-25 07:03:46', '2024-07-25 09:05:41'),
('c4b183d8-ee03-47d0-bc4b-2504bce9da28', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/orders\\/266\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"Syamsa Sj has placed an order with no order ORD059. \\n                       \\n Please check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**A new order has been placed**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-08-22 07:11:12', '2024-08-21 04:39:41', '2024-08-22 07:11:12'),
('c667f4b2-fddf-45cf-953b-007aca43d83d', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/orders\\/244\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"admin has placed an order with no order ORD039. \\n                       \\n Please check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**A new order has been placed**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-08-18 13:48:54', '2024-08-18 09:26:04', '2024-08-18 13:48:54'),
('c7e5403a-6344-4b06-b2ec-52b655821f1b', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 1, '{\"order_id\":235,\"status\":\"Dikirim\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD032 telah diperbarui menjadi Dikirim. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history235\",\"button_text\":\"View Order\"}', '2024-08-14 14:14:42', '2024-08-14 14:14:25', '2024-08-14 14:14:42'),
('c888f0ca-3880-4c28-9d51-c8207fe15a66', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/order\\/258\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"admin has marked the order cancelled with No order ORD053. \\n                       \\nPlease check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**Order has been cancelled**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-08-28 05:10:25', '2024-08-27 13:37:13', '2024-08-28 05:10:25'),
('c92c43a7-f3ef-4d79-8eb1-200bbc6d4819', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/orders\\/243\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"admin has placed an order with no order ORD038. \\n                       \\n Please check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**A new order has been placed**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-08-18 13:48:54', '2024-08-18 09:13:51', '2024-08-18 13:48:54'),
('c9719aa8-42c4-4a5b-a205-5ca7fd3e8228', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 1, '{\"order_id\":214,\"status\":\"Dikirim\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD014 telah diperbarui menjadi Dikirim. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history214\",\"button_text\":\"View Order\"}', '2024-08-07 16:34:16', '2024-08-07 13:51:38', '2024-08-07 16:34:16'),
('c98a7f6b-4fc6-44d8-abca-368bfdd85ff1', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 3, '{\"order_id\":209,\"status\":\"completed\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD009 telah diperbarui menjadi completed. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history209\",\"button_text\":\"View Order\"}', '2024-08-05 04:14:17', '2024-08-05 04:13:15', '2024-08-05 04:14:17'),
('ca212f52-b517-459c-8609-7af93fd81ada', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 1, '{\"order_id\":252,\"status\":\"Dikirim\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD047 telah diperbarui menjadi Dikirim. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history252\",\"button_text\":\"View Order\"}', '2024-08-18 14:23:28', '2024-08-18 13:56:00', '2024-08-18 14:23:28'),
('ca4eaa5c-c3bb-4516-9410-bd226708cc2e', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 1, '{\"order_id\":214,\"status\":\"completed\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD014 telah diperbarui menjadi completed. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history214\",\"button_text\":\"View Order\"}', '2024-08-07 16:34:16', '2024-08-07 14:32:03', '2024-08-07 16:34:16'),
('cba5b661-2b40-4ebf-8c3f-3db333d6df45', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/orders\\/248\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"admin has placed an order with no order ORD043. \\n                       \\n Please check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**A new order has been placed**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-08-18 13:48:54', '2024-08-18 13:36:39', '2024-08-18 13:48:54'),
('cd7ec143-5298-4066-b40e-9069b4a70368', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/order\\/261\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"admin has marked the order cancelled with No order ORD056. \\n                       \\nPlease check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**Order has been cancelled**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-08-28 05:10:25', '2024-08-27 13:17:04', '2024-08-28 05:10:25'),
('ce20f2b9-8213-448c-8268-a30440148daa', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/order\\/257\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"admin has marked the order cancelled with No order ORD052. \\n                       \\nPlease check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**Order has been cancelled**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-08-28 05:10:25', '2024-08-28 03:14:18', '2024-08-28 05:10:25'),
('ced5f659-d5eb-43ec-ba24-9601095577b7', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/orders\\/250\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"admin has placed an order with no order ORD045. \\n                       \\n Please check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**A new order has been placed**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-08-18 13:48:54', '2024-08-18 13:46:07', '2024-08-18 13:48:54'),
('d0a6893c-93c5-4045-ade7-5894c9005b8b', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 3, '{\"order_id\":176,\"status\":\"Diproses\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD001 telah diperbarui Diproses Silakan cek detail pesanan Anda untuk informasi lebih lanjut\",\"url\":\"\\/purchase-history\"}', '2024-07-25 09:54:40', '2024-07-25 06:49:01', '2024-07-25 09:54:40'),
('d4086b7e-93fa-45a7-99e6-67a03a8dd6ea', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/order\\/273\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"admin has placed an order with no order ORD064. \\n                       \\n Please check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**A new order has been placed**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-08-28 05:10:25', '2024-08-28 03:46:07', '2024-08-28 05:10:25'),
('d665c583-4a32-42f4-b5e1-f9ca25558073', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history\",\"view\":\"filament-actions::link-action\"}],\"body\":\"Your order with number ORD061 status has been updated.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"Order Status Updated\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-08-28 05:10:25', '2024-08-27 13:35:24', '2024-08-28 05:10:25'),
('d70adbac-1a0f-45bf-8989-6d201dfb1f0a', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/order\\/277\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"admin has placed an order with no order ORD068. \\n                       \\n Please check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**A new order has been placed**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-12-09 07:49:28', '2024-12-09 07:12:57', '2024-12-09 07:49:28'),
('d74fb9ba-3255-4c3e-842c-0b94b9f5b5d7', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 3, '{\"order_id\":205,\"status\":\"completed\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD005 telah diperbarui menjadi completed. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history205\",\"button_text\":\"View Order\"}', '2024-08-05 03:28:33', '2024-08-02 06:03:16', '2024-08-05 03:28:33'),
('d8396108-0e2e-4e37-8fb3-4e1d535aacaa', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 1, '{\"order_id\":214,\"status\":\"completed\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD014 telah diperbarui menjadi completed. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history214\",\"button_text\":\"View Order\"}', '2024-08-07 16:34:16', '2024-08-07 14:25:18', '2024-08-07 16:34:16'),
('dad843a6-fd8c-4242-99dc-b644fe4e1169', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/order\\/273\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"admin has marked the order complete with No order ORD064. \\n                       \\nPlease check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**Order has been completed**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-12-09 07:49:28', '2024-11-25 08:13:21', '2024-12-09 07:49:28'),
('db35e73c-6e16-4791-a0aa-8a072670f554', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/orders\\/236\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"admin has placed an order with no order ORD033. \\n                       \\n Please check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**A new order has been placed**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-08-18 13:48:54', '2024-08-18 05:55:58', '2024-08-18 13:48:54'),
('dcc174ff-83d7-46da-99b3-ee4d1e7d8748', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/orders\\/262\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"admin has placed an order with no order ORD057. \\n                       \\n Please check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**A new order has been placed**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-08-22 07:11:12', '2024-08-18 16:20:32', '2024-08-22 07:11:12'),
('dd6b2c7c-e009-4900-a01c-39d86fe078c4', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/order\\/272\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"admin has placed an order with no order ORD063. \\n                       \\n Please check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**A new order has been placed**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-08-28 05:10:25', '2024-08-28 03:28:47', '2024-08-28 05:10:25'),
('dfee91d7-d93d-476f-8612-34bceeb45ba1', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[],\"body\":\"Your order status has been updated.\\n Order ID: ORD061\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"Order Status Updated\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-08-26 06:22:19', '2024-08-26 04:58:55', '2024-08-26 06:22:19'),
('e4b30d00-c3cd-4741-8547-2e5bcd6a131e', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/orders\\/237\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"admin has placed an order with no order ORD034. \\n                       \\n Please check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**A new order has been placed**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-08-18 13:48:54', '2024-08-18 08:05:10', '2024-08-18 13:48:54'),
('e6b87129-b3a5-4f08-b9ae-af8f0ece8b88', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 3, '{\"order_id\":195,\"status\":\"Dikirim\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD013 telah diperbarui menjadi Dikirim. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history195\",\"button_text\":\"View Order\"}', '2024-07-27 12:53:26', '2024-07-27 12:18:46', '2024-07-27 12:53:26'),
('e8819e01-b5ed-4f4b-b790-26e79c8bbc3e', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 1, '{\"order_id\":233,\"status\":\"Diproses\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD030 telah diperbarui menjadi Diproses. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history233\",\"button_text\":\"View Order\"}', '2024-08-14 14:14:42', '2024-08-14 13:52:20', '2024-08-14 14:14:42'),
('e9fc0da7-8ec9-472f-b5a8-fa1ddcaf1b21', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 1, '{\"order_id\":233,\"status\":\"Dikirim\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD030 telah diperbarui menjadi Dikirim. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history233\",\"button_text\":\"View Order\"}', '2024-08-14 14:14:42', '2024-08-14 13:58:14', '2024-08-14 14:14:42'),
('eb5804c1-3bdb-4a89-b5cc-6f1dd2e26071', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 1, '{\"order_id\":215,\"status\":\"Dikirim\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD015 telah diperbarui menjadi Dikirim. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history215\",\"button_text\":\"View Order\"}', '2024-08-07 16:34:16', '2024-08-07 13:47:04', '2024-08-07 16:34:16'),
('f1317d49-0382-447f-acb8-5d436870ffa7', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 3, '{\"order_id\":205,\"status\":\"Diproses\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD005 telah diperbarui menjadi Diproses. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history205\",\"button_text\":\"View Order\"}', '2024-08-05 03:28:33', '2024-08-02 06:01:38', '2024-08-05 03:28:33'),
('f2729f97-0c21-45ed-949f-5b0d3a6eaa53', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 1, '{\"order_id\":214,\"status\":\"completed\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD014 telah diperbarui menjadi completed. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history214\",\"button_text\":\"View Order\"}', '2024-08-07 16:34:16', '2024-08-07 13:53:48', '2024-08-07 16:34:16'),
('f5e12763-6a10-49b0-bda7-f50c3fcae775', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/orders\\/258\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"admin has placed an order with no order ORD053. \\n                       \\n Please check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**A new order has been placed**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-08-18 14:36:51', '2024-08-18 14:34:12', '2024-08-18 14:36:51'),
('f8d8b22d-8f88-495a-b023-ddba5bdfef52', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 1, '{\"actions\":[{\"name\":\"View\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"View\",\"shouldClose\":false,\"shouldMarkAsRead\":false,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":false,\"size\":\"sm\",\"tooltip\":null,\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/order\\/271\\/edit\",\"view\":\"filament-actions::link-action\"}],\"body\":\"andi hermansah has marked the order complete with No order ORD062. \\n                       \\nPlease check order to see the detail.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-shopping-bag\",\"iconColor\":null,\"status\":null,\"title\":\"**Order has been completed**\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2024-08-26 06:22:19', '2024-08-26 06:05:09', '2024-08-26 06:22:19'),
('fd4fd21c-a25d-4440-a128-62cdc58a789e', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 3, '{\"order_id\":194,\"status\":\"Diproses\",\"title\":\"Order Status Updated\",\"message\":\"Status pesanan Anda dengan nomor order: #ORD012 telah diperbarui menjadi Diproses. Silakan cek detail pesanan Anda untuk informasi lebih lanjut.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/purchase-history194\",\"button_text\":\"View Order\"}', '2024-07-27 09:00:04', '2024-07-27 08:45:24', '2024-07-27 09:00:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_order` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('pending','Diproses','Dikirim','completed','canceled') NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `payment_method_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shipping_cost` decimal(10,2) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `grand_total` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `no_order`, `user_id`, `status`, `alamat`, `payment_method_id`, `shipping_cost`, `total_price`, `grand_total`, `created_at`, `updated_at`) VALUES
(245, 'ORD040', 1, 'pending', 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', 1, 0.00, 200000.00, 200000.00, '2024-08-18 10:59:09', '2024-08-18 10:59:09'),
(246, 'ORD041', 1, 'pending', 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', 1, 0.00, 100000.00, 100000.00, '2024-08-18 12:02:07', '2024-08-18 12:02:07'),
(247, 'ORD042', 1, 'pending', 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', 1, 0.00, 50000.00, 50000.00, '2024-08-18 12:44:29', '2024-08-18 12:44:29'),
(248, 'ORD043', 1, 'pending', 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', 2, 0.00, 300000.00, 300000.00, '2024-08-18 13:36:35', '2024-08-18 13:36:35'),
(249, 'ORD044', 1, 'pending', 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', 2, 0.00, 0.00, 0.00, '2024-08-18 13:37:38', '2024-08-18 13:37:38'),
(250, 'ORD045', 1, 'pending', 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', 2, 0.00, 25000.00, 25000.00, '2024-08-18 13:46:02', '2024-08-18 13:46:02'),
(251, 'ORD046', 1, 'pending', 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', 2, 0.00, 50000.00, 50000.00, '2024-08-18 13:49:59', '2024-08-18 13:49:59'),
(252, 'ORD047', 1, 'completed', 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', 2, 0.00, 500000.00, 500000.00, '2024-08-18 13:54:10', '2024-08-18 13:56:42'),
(253, 'ORD048', 1, 'pending', 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', 2, 0.00, 25000.00, 25000.00, '2024-08-18 14:17:22', '2024-08-18 14:17:22'),
(254, 'ORD049', 1, 'pending', 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', 2, 0.00, 25000.00, 25000.00, '2024-08-18 14:19:05', '2024-08-18 14:19:05'),
(255, 'ORD050', 1, 'pending', 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', 2, 0.00, 25000.00, 25000.00, '2024-08-18 14:27:58', '2024-08-18 14:27:58'),
(256, 'ORD051', 1, 'pending', 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', 2, 0.00, 275000.00, 275000.00, '2024-08-18 14:31:22', '2024-08-18 14:31:22'),
(257, 'ORD052', 1, 'canceled', 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', 2, 0.00, 25000.00, 25000.00, '2024-08-18 14:33:48', '2024-08-28 03:14:16'),
(258, 'ORD053', 1, 'canceled', 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', 2, 0.00, 0.00, 0.00, '2024-08-18 14:34:07', '2024-08-27 13:37:13'),
(259, 'ORD054', 1, 'canceled', 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', 2, 0.00, 0.00, 0.00, '2024-08-18 14:34:20', '2024-08-27 13:30:20'),
(260, 'ORD055', 1, 'canceled', 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', 2, 0.00, 250000.00, 250000.00, '2024-08-18 14:49:13', '2024-08-27 13:20:26'),
(261, 'ORD056', 1, 'canceled', 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', 2, 0.00, 0.00, 0.00, '2024-08-18 14:50:15', '2024-08-27 13:17:04'),
(262, 'ORD057', 1, 'canceled', 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', 2, 0.00, 300000.00, 300000.00, '2024-08-18 16:20:25', '2024-08-27 13:07:58'),
(267, 'ORD058', 22, 'pending', 'gbj', 2, 0.00, 250000.00, 250000.00, '2024-08-21 15:17:03', '2024-08-21 15:17:03'),
(268, 'ORD059', 1, 'Diproses', 'jl. kalibener', 1, 0.00, 25000.00, 25000.00, '2024-08-23 06:39:00', '2024-08-23 06:39:00'),
(269, 'ORD060', 24, 'Diproses', 'jl. kalibener', 1, 0.00, 50000.00, 50000.00, '2024-08-23 06:43:14', '2024-08-23 06:43:14'),
(270, 'ORD061', 1, 'completed', 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', 2, 0.00, 25000.00, 25000.00, '2024-08-26 04:40:14', '2024-08-27 13:36:39'),
(271, 'ORD062', 33, 'completed', 'ggg', 1, 0.00, 25000.00, 25000.00, '2024-08-26 05:29:02', '2024-08-26 06:05:09'),
(272, 'ORD063', 1, 'canceled', 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', 1, 0.00, 50000.00, 50000.00, '2024-08-28 03:28:41', '2024-11-25 08:16:28'),
(273, 'ORD064', 1, 'completed', 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', 2, 0.00, 250000.00, 250000.00, '2024-08-28 03:46:03', '2024-11-25 08:13:21'),
(274, 'ORD065', 1, 'pending', 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', 1, 0.00, 175000.00, 175000.00, '2024-11-06 02:56:36', '2024-11-06 02:56:36'),
(275, 'ORD066', 1, 'canceled', 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', 2, 0.00, 125000.00, 125000.00, '2024-11-25 08:10:23', '2024-11-25 08:12:48'),
(276, 'ORD067', 1, 'pending', 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', 2, 0.00, 25000.00, 25000.00, '2024-12-09 07:05:18', '2024-12-09 07:05:18'),
(277, 'ORD068', 1, 'pending', 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', 2, 0.00, 25000.00, 25000.00, '2024-12-09 07:12:52', '2024-12-09 07:12:52'),
(278, 'ORD069', 1, 'pending', 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', 2, 0.00, 325000.00, 325000.00, '2024-12-09 09:26:26', '2024-12-09 09:26:26'),
(279, 'ORD070', 24, 'pending', 'jl. gunung putri no.58', 2, 0.00, 50000.00, 50000.00, '2024-12-26 03:53:34', '2024-12-26 03:53:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `varian` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `varian`, `quantity`, `price`, `total`, `created_at`, `updated_at`) VALUES
(168, 245, 46, 'Giling', 8, 25000.00, 200000.00, '2024-08-18 10:59:09', '2024-08-18 10:59:09'),
(169, 246, 47, 'Giling', 1, 50000.00, 50000.00, '2024-08-18 12:02:07', '2024-08-18 12:02:07'),
(170, 246, 47, 'Biji Kopi', 1, 50000.00, 50000.00, '2024-08-18 12:02:07', '2024-08-18 12:02:07'),
(171, 247, 47, 'Giling', 1, 50000.00, 50000.00, '2024-08-18 12:44:29', '2024-08-18 12:44:29'),
(172, 248, 46, 'Biji Kopi', 12, 25000.00, 300000.00, '2024-08-18 13:36:35', '2024-08-18 13:36:35'),
(173, 250, 46, 'Giling', 1, 25000.00, 25000.00, '2024-08-18 13:46:02', '2024-08-18 13:46:02'),
(174, 251, 47, 'Giling', 1, 50000.00, 50000.00, '2024-08-18 13:49:59', '2024-08-18 13:49:59'),
(175, 252, 47, 'Giling', 10, 50000.00, 500000.00, '2024-08-18 13:54:10', '2024-08-18 13:54:10'),
(176, 253, 46, 'Giling', 1, 25000.00, 25000.00, '2024-08-18 14:17:22', '2024-08-18 14:17:22'),
(177, 254, 46, 'Giling', 1, 25000.00, 25000.00, '2024-08-18 14:19:05', '2024-08-18 14:19:05'),
(178, 255, 46, 'Giling', 1, 25000.00, 25000.00, '2024-08-18 14:27:58', '2024-08-18 14:27:58'),
(179, 256, 46, 'Giling', 5, 25000.00, 125000.00, '2024-08-18 14:31:22', '2024-08-18 14:31:22'),
(180, 256, 46, 'Biji Kopi', 6, 25000.00, 150000.00, '2024-08-18 14:31:22', '2024-08-18 14:31:22'),
(181, 257, 46, 'Giling', 1, 25000.00, 25000.00, '2024-08-18 14:33:48', '2024-08-18 14:33:48'),
(182, 260, 46, 'Biji Kopi', 10, 25000.00, 250000.00, '2024-08-18 14:49:13', '2024-08-18 14:49:13'),
(183, 262, 46, 'Giling', 11, 25000.00, 275000.00, '2024-08-18 16:20:25', '2024-08-18 16:20:25'),
(184, 262, 46, 'Biji Kopi', 1, 25000.00, 25000.00, '2024-08-18 16:20:25', '2024-08-18 16:20:25'),
(189, 267, 47, 'Biji Kopi', 5, 50000.00, 250000.00, '2024-08-21 15:17:03', '2024-08-21 15:17:03'),
(190, 268, 46, 'Giling', 1, 25000.00, 25000.00, '2024-08-23 06:39:00', '2024-08-23 06:39:00'),
(191, 269, 46, 'Giling', 2, 25000.00, 50000.00, '2024-08-23 06:43:14', '2024-08-23 06:43:14'),
(192, 270, 46, 'Giling', 1, 25000.00, 25000.00, '2024-08-26 04:40:14', '2024-08-26 04:40:14'),
(193, 271, 46, 'Giling', 1, 25000.00, 25000.00, '2024-08-26 05:29:02', '2024-08-26 05:29:02'),
(194, 272, 46, 'Giling', 1, 25000.00, 25000.00, '2024-08-28 03:28:41', '2024-08-28 03:28:41'),
(195, 272, 46, 'Biji Kopi', 1, 25000.00, 25000.00, '2024-08-28 03:28:41', '2024-08-28 03:28:41'),
(196, 273, 47, 'Giling', 5, 50000.00, 250000.00, '2024-08-28 03:46:03', '2024-08-28 03:46:03'),
(197, 274, 46, 'Giling', 4, 25000.00, 100000.00, '2024-11-06 02:56:36', '2024-11-06 02:56:36'),
(198, 274, 46, 'Biji Kopi', 3, 25000.00, 75000.00, '2024-11-06 02:56:36', '2024-11-06 02:56:36'),
(199, 275, 46, 'Biji Kopi', 5, 25000.00, 125000.00, '2024-11-25 08:10:23', '2024-11-25 08:10:23'),
(200, 276, 46, 'Giling', 1, 25000.00, 25000.00, '2024-12-09 07:05:18', '2024-12-09 07:05:18'),
(201, 277, 46, 'Biji Kopi', 1, 25000.00, 25000.00, '2024-12-09 07:12:52', '2024-12-09 07:12:52'),
(202, 278, 46, 'Giling', 3, 25000.00, 75000.00, '2024-12-09 09:26:26', '2024-12-09 09:26:26'),
(203, 278, 47, 'Biji Kopi', 5, 50000.00, 250000.00, '2024-12-09 09:26:26', '2024-12-09 09:26:26'),
(204, 279, 46, 'Giling', 2, 25000.00, 50000.00, '2024-12-26 03:53:34', '2024-12-26 03:53:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_payments`
--

CREATE TABLE `order_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `payment_method_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_status` enum('Belum diterima','Diterima','Refund') DEFAULT NULL,
  `buktiPembayaran` varchar(255) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `order_payments`
--

INSERT INTO `order_payments` (`id`, `order_id`, `payment_method_id`, `payment_status`, `buktiPembayaran`, `amount`, `created_at`, `updated_at`) VALUES
(134, 245, NULL, 'Belum diterima', NULL, 200000.00, '2024-08-18 10:59:09', '2024-08-18 10:59:09'),
(135, 246, NULL, 'Belum diterima', NULL, 100000.00, '2024-08-18 12:02:07', '2024-08-18 12:02:07'),
(136, 247, 1, 'Belum diterima', NULL, 50000.00, '2024-08-18 12:44:29', '2024-08-18 12:44:29'),
(137, 248, 2, 'Belum diterima', NULL, 300000.00, '2024-08-18 13:36:35', '2024-08-18 13:36:35'),
(138, 249, 2, 'Belum diterima', NULL, 0.00, '2024-08-18 13:37:38', '2024-08-18 13:37:38'),
(139, 250, 2, 'Belum diterima', NULL, 25000.00, '2024-08-18 13:46:02', '2024-08-18 13:46:02'),
(140, 251, 2, 'Belum diterima', NULL, 50000.00, '2024-08-18 13:49:59', '2024-08-18 13:49:59'),
(141, 252, 2, 'Belum diterima', NULL, 500000.00, '2024-08-18 13:54:10', '2024-08-18 13:54:10'),
(142, 253, 2, 'Belum diterima', NULL, 25000.00, '2024-08-18 14:17:22', '2024-08-18 14:17:22'),
(143, 254, 2, 'Belum diterima', NULL, 25000.00, '2024-08-18 14:19:05', '2024-08-18 14:19:05'),
(144, 255, 2, 'Belum diterima', NULL, 25000.00, '2024-08-18 14:27:58', '2024-08-18 14:27:58'),
(145, 256, 2, 'Belum diterima', NULL, 275000.00, '2024-08-18 14:31:22', '2024-08-18 14:31:22'),
(146, 257, 2, 'Belum diterima', NULL, 25000.00, '2024-08-18 14:33:48', '2024-08-18 14:33:48'),
(147, 258, 2, 'Belum diterima', NULL, 0.00, '2024-08-18 14:34:07', '2024-08-18 14:34:07'),
(148, 259, 2, 'Belum diterima', NULL, 0.00, '2024-08-18 14:34:20', '2024-08-18 14:34:20'),
(149, 260, 2, 'Belum diterima', NULL, 250000.00, '2024-08-18 14:49:13', '2024-08-18 14:49:13'),
(150, 261, 2, 'Belum diterima', NULL, 0.00, '2024-08-18 14:50:15', '2024-08-18 14:50:15'),
(151, 262, 2, 'Belum diterima', NULL, 300000.00, '2024-08-18 16:20:25', '2024-08-18 16:20:25'),
(156, 267, 2, 'Belum diterima', NULL, 250000.00, '2024-08-21 15:17:03', '2024-08-21 15:17:03'),
(157, 270, 2, 'Belum diterima', NULL, 25000.00, '2024-08-26 04:40:14', '2024-08-26 04:40:14'),
(158, 271, 1, 'Belum diterima', NULL, 25000.00, '2024-08-26 05:29:02', '2024-08-26 05:29:02'),
(159, 272, 1, 'Belum diterima', NULL, 50000.00, '2024-08-28 03:28:41', '2024-08-28 03:28:41'),
(160, 273, 2, 'Belum diterima', NULL, 250000.00, '2024-08-28 03:46:03', '2024-08-28 03:46:03'),
(161, 274, 1, 'Belum diterima', NULL, 175000.00, '2024-11-06 02:56:36', '2024-11-06 02:56:36'),
(162, 275, 2, 'Belum diterima', NULL, 125000.00, '2024-11-25 08:10:23', '2024-11-25 08:10:23'),
(163, 276, 2, 'Belum diterima', NULL, 25000.00, '2024-12-09 07:05:18', '2024-12-09 07:05:18'),
(164, 277, 2, 'Belum diterima', NULL, 25000.00, '2024-12-09 07:12:52', '2024-12-09 07:12:52'),
(165, 278, 2, 'Belum diterima', NULL, 325000.00, '2024-12-09 09:26:26', '2024-12-09 09:26:26'),
(166, 279, 2, 'Belum diterima', NULL, 50000.00, '2024-12-26 03:53:34', '2024-12-26 03:53:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_shippings`
--

CREATE TABLE `order_shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `courier_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shipping_cost` decimal(10,2) DEFAULT NULL,
  `shipping_address` text NOT NULL,
  `no_resi` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `order_shippings`
--

INSERT INTO `order_shippings` (`id`, `order_id`, `courier_id`, `shipping_cost`, `shipping_address`, `no_resi`, `created_at`, `updated_at`) VALUES
(130, 245, 1, 0.00, 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', '', '2024-08-18 10:59:09', '2024-08-18 10:59:09'),
(131, 246, 2, 0.00, 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', '', '2024-08-18 12:02:07', '2024-08-18 12:02:07'),
(132, 247, 1, 0.00, 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', '', '2024-08-18 12:44:29', '2024-08-18 12:44:29'),
(133, 248, 1, 0.00, 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', '', '2024-08-18 13:36:35', '2024-08-18 13:36:35'),
(134, 249, 1, 0.00, 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', '', '2024-08-18 13:37:38', '2024-08-18 13:37:38'),
(135, 250, 1, 0.00, 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', '', '2024-08-18 13:46:02', '2024-08-18 13:46:02'),
(136, 251, 1, 0.00, 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', '', '2024-08-18 13:49:59', '2024-08-18 13:49:59'),
(137, 252, 1, 0.00, 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', '', '2024-08-18 13:54:10', '2024-08-18 13:54:10'),
(138, 253, 1, 0.00, 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', '', '2024-08-18 14:17:22', '2024-08-18 14:17:22'),
(139, 254, 1, 0.00, 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', '', '2024-08-18 14:19:05', '2024-08-18 14:19:05'),
(140, 255, 1, 0.00, 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', '', '2024-08-18 14:27:58', '2024-08-18 14:27:58'),
(141, 256, 1, 0.00, 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', '', '2024-08-18 14:31:22', '2024-08-18 14:31:22'),
(142, 257, 1, 0.00, 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', '', '2024-08-18 14:33:48', '2024-08-18 14:33:48'),
(143, 258, 1, 0.00, 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', '', '2024-08-18 14:34:07', '2024-08-18 14:34:07'),
(144, 259, 1, 0.00, 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', '', '2024-08-18 14:34:20', '2024-08-18 14:34:20'),
(145, 260, 1, 0.00, 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', '', '2024-08-18 14:49:13', '2024-08-18 14:49:13'),
(146, 261, 1, 0.00, 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', '', '2024-08-18 14:50:15', '2024-08-18 14:50:15'),
(147, 262, 1, 0.00, 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', '', '2024-08-18 16:20:25', '2024-08-18 16:20:25'),
(152, 267, 1, 0.00, 'gbj', '', '2024-08-21 15:17:03', '2024-08-21 15:17:03'),
(153, 270, 1, 0.00, 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', '', '2024-08-26 04:40:14', '2024-08-26 04:40:14'),
(154, 271, 1, 0.00, 'ggg', '', '2024-08-26 05:29:02', '2024-08-26 05:29:02'),
(155, 272, 1, 0.00, 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', '', '2024-08-28 03:28:41', '2024-08-28 03:28:41'),
(156, 273, 2, 15000.00, 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', 'JT3747392', '2024-08-28 03:46:03', '2024-08-28 04:47:34'),
(157, 274, 1, 0.00, 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', NULL, '2024-11-06 02:56:36', '2024-11-06 02:56:36'),
(158, 275, 1, 0.00, 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', NULL, '2024-11-25 08:10:23', '2024-11-25 08:10:23'),
(159, 276, 1, 0.00, 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', NULL, '2024-12-09 07:05:18', '2024-12-09 07:05:18'),
(160, 277, 1, 0.00, 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', NULL, '2024-12-09 07:12:52', '2024-12-09 07:12:52'),
(161, 278, 2, 0.00, 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', NULL, '2024-12-09 09:26:26', '2024-12-09 09:26:26'),
(162, 279, 2, 0.00, 'jl. gunung putri no.58', NULL, '2024-12-26 03:53:34', '2024-12-26 03:53:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `origins`
--

CREATE TABLE `origins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `origins`
--

INSERT INTO `origins` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'ACEH', '2024-07-11 01:48:16', '2024-07-11 01:48:16'),
(2, 'SUMATERA UTARA', '2024-07-11 01:48:16', '2024-07-11 01:48:16'),
(3, 'SUMATERA BARAT', '2024-07-11 01:48:16', '2024-07-11 01:48:16'),
(4, 'RIAU', '2024-07-11 01:48:16', '2024-07-11 01:48:16'),
(5, 'JAMBI', '2024-07-11 01:48:16', '2024-07-11 01:48:16'),
(6, 'SUMATERA SELATAN', '2024-07-11 01:48:16', '2024-07-11 01:48:16'),
(7, 'BENGKULU', '2024-07-11 01:48:16', '2024-07-11 01:48:16'),
(8, 'LAMPUNG', '2024-07-11 01:48:16', '2024-07-11 01:48:16'),
(9, 'KEPULAUAN BANGKA BELITUNG', '2024-07-11 01:48:16', '2024-07-11 01:48:16'),
(10, 'KEPULAUAN RIAU', '2024-07-11 01:48:16', '2024-07-11 01:48:16'),
(11, 'DKI JAKARTA', '2024-07-11 01:48:16', '2024-07-11 01:48:16'),
(12, 'JAWA BARAT', '2024-07-11 01:48:16', '2024-07-11 01:48:16'),
(13, 'JAWA TENGAH', '2024-07-11 01:48:16', '2024-07-11 01:48:16'),
(14, 'DI YOGYAKARTA', '2024-07-11 01:48:16', '2024-07-11 01:48:16'),
(15, 'JAWA TIMUR', '2024-07-11 01:48:16', '2024-07-11 01:48:16'),
(16, 'BANTEN', '2024-07-11 01:48:16', '2024-07-11 01:48:16'),
(17, 'BALI', '2024-07-11 01:48:16', '2024-07-11 01:48:16'),
(18, 'NUSA TENGGARA BARAT', '2024-07-11 01:48:16', '2024-07-11 01:48:16'),
(19, 'NUSA TENGGARA TIMUR', '2024-07-11 01:48:16', '2024-07-11 01:48:16'),
(20, 'KALIMANTAN BARAT', '2024-07-11 01:48:16', '2024-07-11 01:48:16'),
(21, 'KALIMANTAN TENGAH', '2024-07-11 01:48:16', '2024-07-11 01:48:16'),
(22, 'KALIMANTAN SELATAN', '2024-07-11 01:48:16', '2024-07-11 01:48:16'),
(23, 'KALIMANTAN TIMUR', '2024-07-11 01:48:16', '2024-07-11 01:48:16'),
(24, 'KALIMANTAN UTARA', '2024-07-11 01:48:16', '2024-07-11 01:48:16'),
(25, 'SULAWESI UTARA', '2024-07-11 01:48:16', '2024-07-11 01:48:16'),
(26, 'SULAWESI TENGAH', '2024-07-11 01:48:16', '2024-07-11 01:48:16'),
(27, 'SULAWESI SELATAN', '2024-07-11 01:48:16', '2024-07-11 01:48:16'),
(28, 'SULAWESI TENGGARA', '2024-07-11 01:48:16', '2024-07-11 01:48:16'),
(29, 'GORONTALO', '2024-07-11 01:48:16', '2024-07-11 01:48:16'),
(30, 'SULAWESI BARAT', '2024-07-11 01:48:16', '2024-07-11 01:48:16'),
(31, 'MALUKU', '2024-07-11 01:48:16', '2024-07-11 01:48:16'),
(32, 'MALUKU UTARA', '2024-07-11 01:48:16', '2024-07-11 01:48:16'),
(33, 'PAPUA BARAT', '2024-07-11 01:48:16', '2024-07-11 01:48:16'),
(34, 'PAPUA', '2024-07-11 01:48:16', '2024-07-11 01:48:16'),
(35, 'Temanggung', '2024-08-12 03:43:28', '2024-08-12 03:43:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('julyindasyamsa@gmail.com', '$2y$12$W2d0Faeas2wlzK6yEoYYDukRmjp818GDCmkK7kOdF7jI.lerdjd.C', '2024-12-26 06:30:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_payment` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `type_payment`, `created_at`, `updated_at`) VALUES
(1, 'Cash on Delivery', '2024-07-12 05:58:56', '2024-07-12 05:58:56'),
(2, 'Non Tunai', '2024-07-12 05:59:12', '2024-07-12 05:59:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view_authentication::log', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(2, 'view_any_authentication::log', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(3, 'create_authentication::log', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(4, 'update_authentication::log', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(5, 'restore_authentication::log', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(6, 'restore_any_authentication::log', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(7, 'replicate_authentication::log', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(8, 'reorder_authentication::log', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(9, 'delete_authentication::log', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(10, 'delete_any_authentication::log', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(11, 'force_delete_authentication::log', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(12, 'force_delete_any_authentication::log', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(13, 'view_barang::keluar', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(14, 'view_any_barang::keluar', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(15, 'create_barang::keluar', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(16, 'update_barang::keluar', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(17, 'restore_barang::keluar', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(18, 'restore_any_barang::keluar', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(19, 'replicate_barang::keluar', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(20, 'reorder_barang::keluar', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(21, 'delete_barang::keluar', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(22, 'delete_any_barang::keluar', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(23, 'force_delete_barang::keluar', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(24, 'force_delete_any_barang::keluar', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(25, 'view_barang::masuk', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(26, 'view_any_barang::masuk', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(27, 'create_barang::masuk', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(28, 'update_barang::masuk', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(29, 'restore_barang::masuk', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(30, 'restore_any_barang::masuk', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(31, 'replicate_barang::masuk', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(32, 'reorder_barang::masuk', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(33, 'delete_barang::masuk', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(34, 'delete_any_barang::masuk', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(35, 'force_delete_barang::masuk', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(36, 'force_delete_any_barang::masuk', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(37, 'view_category', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(38, 'view_any_category', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(39, 'create_category', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(40, 'update_category', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(41, 'restore_category', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(42, 'restore_any_category', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(43, 'replicate_category', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(44, 'reorder_category', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(45, 'delete_category', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(46, 'delete_any_category', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(47, 'force_delete_category', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(48, 'force_delete_any_category', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(49, 'view_inventory::supplier', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(50, 'view_any_inventory::supplier', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(51, 'create_inventory::supplier', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(52, 'update_inventory::supplier', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(53, 'restore_inventory::supplier', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(54, 'restore_any_inventory::supplier', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(55, 'replicate_inventory::supplier', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(56, 'reorder_inventory::supplier', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(57, 'delete_inventory::supplier', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(58, 'delete_any_inventory::supplier', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(59, 'force_delete_inventory::supplier', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(60, 'force_delete_any_inventory::supplier', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(61, 'view_metode::pembayaran', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(62, 'view_any_metode::pembayaran', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(63, 'create_metode::pembayaran', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(64, 'update_metode::pembayaran', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(65, 'restore_metode::pembayaran', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(66, 'restore_any_metode::pembayaran', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(67, 'replicate_metode::pembayaran', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(68, 'reorder_metode::pembayaran', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(69, 'delete_metode::pembayaran', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(70, 'delete_any_metode::pembayaran', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(71, 'force_delete_metode::pembayaran', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(72, 'force_delete_any_metode::pembayaran', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(73, 'view_origin', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(74, 'view_any_origin', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(75, 'create_origin', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(76, 'update_origin', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(77, 'restore_origin', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(78, 'restore_any_origin', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(79, 'replicate_origin', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(80, 'reorder_origin', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(81, 'delete_origin', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(82, 'delete_any_origin', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(83, 'force_delete_origin', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(84, 'force_delete_any_origin', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(85, 'view_product', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(86, 'view_any_product', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(87, 'create_product', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(88, 'update_product', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(89, 'restore_product', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(90, 'restore_any_product', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(91, 'replicate_product', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(92, 'reorder_product', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(93, 'delete_product', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(94, 'delete_any_product', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(95, 'force_delete_product', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(96, 'force_delete_any_product', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(97, 'view_shield::role', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(98, 'view_any_shield::role', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(99, 'create_shield::role', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(100, 'update_shield::role', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(101, 'delete_shield::role', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(102, 'delete_any_shield::role', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(103, 'view_shipping', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(104, 'view_any_shipping', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(105, 'create_shipping', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(106, 'update_shipping', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(107, 'restore_shipping', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(108, 'restore_any_shipping', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(109, 'replicate_shipping', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(110, 'reorder_shipping', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(111, 'delete_shipping', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(112, 'delete_any_shipping', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(113, 'force_delete_shipping', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(114, 'force_delete_any_shipping', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(115, 'view_shop::order', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(116, 'view_any_shop::order', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(117, 'create_shop::order', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(118, 'update_shop::order', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(119, 'restore_shop::order', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(120, 'restore_any_shop::order', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(121, 'replicate_shop::order', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(122, 'reorder_shop::order', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(123, 'delete_shop::order', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(124, 'delete_any_shop::order', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(125, 'force_delete_shop::order', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(126, 'force_delete_any_shop::order', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(127, 'view_stok::barang', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(128, 'view_any_stok::barang', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(129, 'create_stok::barang', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(130, 'update_stok::barang', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(131, 'restore_stok::barang', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(132, 'restore_any_stok::barang', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(133, 'replicate_stok::barang', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(134, 'reorder_stok::barang', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(135, 'delete_stok::barang', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(136, 'delete_any_stok::barang', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(137, 'force_delete_stok::barang', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(138, 'force_delete_any_stok::barang', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(139, 'view_toko', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(140, 'view_any_toko', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(141, 'create_toko', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(142, 'update_toko', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(143, 'restore_toko', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(144, 'restore_any_toko', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(145, 'replicate_toko', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(146, 'reorder_toko', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(147, 'delete_toko', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(148, 'delete_any_toko', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(149, 'force_delete_toko', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(150, 'force_delete_any_toko', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(151, 'view_user', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(152, 'view_any_user', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(153, 'create_user', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(154, 'update_user', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(155, 'restore_user', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(156, 'restore_any_user', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(157, 'replicate_user', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(158, 'reorder_user', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(159, 'delete_user', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(160, 'delete_any_user', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(161, 'force_delete_user', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(162, 'force_delete_any_user', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(163, 'view_varian', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(164, 'view_any_varian', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(165, 'create_varian', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(166, 'update_varian', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(167, 'restore_varian', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(168, 'restore_any_varian', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(169, 'replicate_varian', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(170, 'reorder_varian', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(171, 'delete_varian', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(172, 'delete_any_varian', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(173, 'force_delete_varian', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(174, 'force_delete_any_varian', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(175, 'view_webpage::rekomendasi::produk', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(176, 'view_any_webpage::rekomendasi::produk', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(177, 'create_webpage::rekomendasi::produk', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(178, 'update_webpage::rekomendasi::produk', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(179, 'restore_webpage::rekomendasi::produk', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(180, 'restore_any_webpage::rekomendasi::produk', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(181, 'replicate_webpage::rekomendasi::produk', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(182, 'reorder_webpage::rekomendasi::produk', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(183, 'delete_webpage::rekomendasi::produk', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(184, 'delete_any_webpage::rekomendasi::produk', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(185, 'force_delete_webpage::rekomendasi::produk', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(186, 'force_delete_any_webpage::rekomendasi::produk', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(187, 'page_Inventory', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(188, 'page_Products', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(189, 'page_Tokos', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(190, 'widget_OrderOverview', 'web', '2024-08-20 11:10:26', '2024-08-20 11:10:26'),
(191, 'widget_StatsOverviewWidget', 'web', '2024-08-20 11:10:27', '2024-08-20 11:10:27'),
(192, 'widget_ProductStats', 'web', '2024-08-20 11:10:27', '2024-08-20 11:10:27'),
(193, 'widget_StokStats', 'web', '2024-08-20 11:10:27', '2024-08-20 11:10:27'),
(194, 'widget_OrdersChart', 'web', '2024-08-20 11:10:27', '2024-08-20 11:10:27'),
(195, 'widget_CustomersChart', 'web', '2024-08-20 11:10:27', '2024-08-20 11:10:27'),
(196, 'widget_OrderStatusOverview', 'web', '2024-08-20 11:10:27', '2024-08-20 11:10:27'),
(197, 'widget_CostumerOverview', 'web', '2024-08-20 11:10:27', '2024-08-20 11:10:27'),
(198, 'widget_LatestOrders', 'web', '2024-08-20 11:10:27', '2024-08-20 11:10:27'),
(199, 'view_role', 'web', '2024-08-20 11:19:00', '2024-08-20 11:19:00'),
(200, 'view_any_role', 'web', '2024-08-20 11:19:00', '2024-08-20 11:19:00'),
(201, 'create_role', 'web', '2024-08-20 11:19:00', '2024-08-20 11:19:00'),
(202, 'update_role', 'web', '2024-08-20 11:19:00', '2024-08-20 11:19:00'),
(203, 'delete_role', 'web', '2024-08-20 11:19:00', '2024-08-20 11:19:00'),
(204, 'delete_any_role', 'web', '2024-08-20 11:19:00', '2024-08-20 11:19:00'),
(205, 'view_customer', 'web', '2024-08-21 06:44:20', '2024-08-21 06:44:20'),
(206, 'view_any_customer', 'web', '2024-08-21 06:44:20', '2024-08-21 06:44:20'),
(207, 'create_customer', 'web', '2024-08-21 06:44:20', '2024-08-21 06:44:20'),
(208, 'update_customer', 'web', '2024-08-21 06:44:20', '2024-08-21 06:44:20'),
(209, 'restore_customer', 'web', '2024-08-21 06:44:20', '2024-08-21 06:44:20'),
(210, 'restore_any_customer', 'web', '2024-08-21 06:44:20', '2024-08-21 06:44:20'),
(211, 'replicate_customer', 'web', '2024-08-21 06:44:20', '2024-08-21 06:44:20'),
(212, 'reorder_customer', 'web', '2024-08-21 06:44:20', '2024-08-21 06:44:20'),
(213, 'delete_customer', 'web', '2024-08-21 06:44:20', '2024-08-21 06:44:20'),
(214, 'delete_any_customer', 'web', '2024-08-21 06:44:20', '2024-08-21 06:44:20'),
(215, 'force_delete_customer', 'web', '2024-08-21 06:44:20', '2024-08-21 06:44:20'),
(216, 'force_delete_any_customer', 'web', '2024-08-21 06:44:20', '2024-08-21 06:44:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(255) NOT NULL,
  `barcode_path` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `origin_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `weight` int(11) NOT NULL,
  `satuan` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_visible` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `kode`, `barcode_path`, `image`, `name`, `origin_id`, `category_id`, `weight`, `satuan`, `price`, `description`, `created_at`, `updated_at`, `is_visible`) VALUES
(46, 'PRDAB001', NULL, 'products/images/75_degrees_green_coffee.png', 'Arabica banyumas pwt', 13, 1, 100, 'gram', 25000.00, 'sweet banget sih', '2024-07-19 04:40:40', '2024-08-22 09:19:02', 1),
(47, 'PRDAGB001', NULL, 'products/images/75_degrees_green_coffee.png', 'Arabica Gayo Bali', 17, 1, 100, 'gram', 50000.00, 'sweet, manis', '2024-07-19 04:41:23', '2024-08-13 15:50:35', 1),
(74, 'PRDAAG001', NULL, 'products/images/75_degrees_green_coffee.png', 'Arabika Aceh Gayo 100gr', 1, 1, 100, 'pcs', 38000.00, 'Kopi Arabika Aceh Gayo ini menawarkan rasa yang kompleks dengan aroma yang menggugah selera.', '2024-07-24 11:50:05', '2024-07-24 11:50:05', 1),
(75, 'PRDAAG002', NULL, 'products/images/75_degrees_green_coffee.png', 'Arabika Aceh Gayo 200gr', 1, 1, 200, 'pcs', 70000.00, 'Nikmati kelezatan kopi Arabika Aceh Gayo dalam kemasan 200 gram.', '2024-07-24 11:50:05', '2024-07-24 11:50:05', 1),
(76, 'PRDAAA001', NULL, 'products/images/75_degrees_green_coffee.png', 'Arabika Arjuno Anaero 200gr', 2, 1, 200, 'pcs', 75000.00, 'Kopi Arabika Arjuno Anaero ini memberikan aroma yang unik dengan rasa yang intens.', '2024-07-24 12:08:42', '2024-07-24 12:08:42', 1),
(77, 'PRDAAB001', NULL, 'products/images/75_degrees_green_coffee.png', 'Arabika Arjuno budug asu 100gr', 2, 1, 100, 'pcs', 30000.00, 'Arabika Arjuno budug asu, kopi dengan rasa dan aroma yang khas.', '2024-07-24 12:08:42', '2024-07-24 12:08:42', 1),
(78, 'PRDABM001', NULL, 'products/images/75_degrees_green_coffee.png', 'Arabika Bali Madu Belantih 200gr', 3, 1, 200, 'pcs', 65000.00, 'Kopi Arabika Bali Madu Belantih ini menghadirkan rasa madu yang lembut dengan sentuhan keunikan Bali.', '2024-07-24 12:08:42', '2024-07-24 12:08:42', 1),
(79, 'PRDABB001', NULL, 'products/images/75_degrees_green_coffee.png', 'Arabika Biscuit Belantih Bali 200gr', 3, 1, 200, 'pcs', 75000.00, 'Arabika Biscuit Belantih Bali memiliki rasa biskuit yang memikat dengan kualitas kopi Bali yang otentik.', '2024-07-24 12:08:42', '2024-07-24 12:08:42', 1),
(80, 'PRDABM002', NULL, 'products/images/75_degrees_green_coffee.png', 'Arabika Brazil Mogiana Nat 200gr', 4, 1, 200, 'pcs', 70000.00, 'Kopi Arabika Brazil Mogiana Nat memberikan rasa yang kaya dan kompleks dengan nuansa buah-buahan tropis.', '2024-07-24 12:08:42', '2024-07-24 12:08:42', 1),
(81, 'PRDABF001', NULL, 'products/images/75_degrees_green_coffee.png', 'Arabika Brazil fazenda 200gr', 4, 1, 200, 'pcs', 85000.00, 'Arabika Brazil Fazenda menawarkan rasa yang halus dengan aroma kacang dan cokelat.', '2024-07-24 12:08:42', '2024-07-24 12:08:42', 1),
(82, 'PRDACL001', NULL, 'products/images/75_degrees_green_coffee.png', 'Arabika Cibunar Linggajati 200gr', 5, 1, 200, 'pcs', 70000.00, 'Kopi Arabika Cibunar Linggajati memiliki rasa yang seimbang dengan nuansa floral yang menyenangkan.', '2024-07-24 12:08:42', '2024-07-24 12:08:42', 1),
(83, 'PRDACB001', NULL, 'products/images/75_degrees_green_coffee.png', 'Arabika Cikuray Bourbon 150gr', 6, 1, 150, 'pcs', 55000.00, 'Arabika Cikuray Bourbon memberikan rasa manis dan asam yang menyegarkan dengan aroma yang menggugah selera.', '2024-07-24 12:08:42', '2024-07-24 12:08:42', 1),
(86, 'PRDAAG003', NULL, 'products/images/75_degrees_green_coffee.png', 'Arabika Aceh Gayo 800gr', 1, 1, 800, 'pcs', 240000.00, 'Kopi Arabika Aceh Gayo dalam kemasan besar 800 gram, ideal untuk stock kopi berkualitas tinggi.', '2024-07-24 12:15:09', '2024-07-24 12:15:09', 1),
(87, 'PRDACS001', NULL, 'products/images/arabika_colombia_supremo.png', 'Arabika Colombia Supremo 200gr', 1, 1, 200, 'pcs', 80000.00, 'Kopi Arabika Colombia Supremo dalam kemasan 200 gram, memberikan rasa yang kaya dan kuat.', '2024-07-24 12:19:19', '2024-07-24 12:19:19', 1),
(88, 'PRDACB002', NULL, 'products/images/arabika_costarica_black_honey.png', 'Arabika Costarica Black Honey 200gr', 2, 1, 200, 'pcs', 85000.00, 'Kopi Arabika Costarica Black Honey dalam kemasan 200 gram, dengan rasa manis alami dan kompleks.', '2024-07-24 12:19:19', '2024-07-24 12:19:19', 1),
(89, 'PRDAES001', NULL, 'products/images/arabika_enrekang_sw.png', 'Arabika Enrekang SW 150gr', 3, 1, 150, 'pcs', 50000.00, 'Kopi Arabika Enrekang SW dalam kemasan 150 gram, menawarkan aroma yang khas dan rasa yang halus.', '2024-07-24 12:19:19', '2024-07-24 12:19:19', 1),
(90, 'PRDAES002', NULL, 'products/images/arabika_enrekang_sw_250gr.png', 'Arabika Enrekang SW 250gr', 3, 1, 250, 'pcs', 70000.00, 'Kopi Arabika Enrekang SW dalam kemasan 250 gram, ideal untuk pencinta kopi dengan rasa yang lebih kuat.', '2024-07-24 12:19:19', '2024-07-24 12:19:19', 1),
(91, 'PRDAES003', NULL, 'products/images/arabika_ethiopia_sidamo.png', 'Arabika Ethiopia Sidamo 100gr', 4, 1, 100, 'pcs', 48000.00, 'Kopi Arabika Ethiopia Sidamo dalam kemasan 100 gram, dengan karakteristik rasa yang fruity dan floral.', '2024-07-24 12:19:19', '2024-07-24 12:19:19', 1),
(92, 'PRDAFE001', NULL, 'products/images/arabika_flores_ende_fw.png', 'Arabika Flores Ende FW 200gr', 5, 1, 200, 'pcs', 70000.00, 'Kopi Arabika Flores Ende FW dalam kemasan 200 gram, dengan rasa yang kuat dan sedikit berasap.', '2024-07-24 12:19:19', '2024-07-24 12:19:19', 1),
(93, 'PRDAFM001', NULL, 'products/images/arabika_flores_manggarai_fw_100gr.png', 'Arabika Flores Manggarai FW 100gr', 6, 1, 100, 'pcs', 36000.00, 'Kopi Arabika Flores Manggarai FW dalam kemasan 100 gram, menawarkan rasa yang lembut dengan sedikit kekuatan.', '2024-07-24 12:19:19', '2024-07-24 12:19:19', 1),
(94, 'PRDAFM002', NULL, 'products/images/arabika_flores_manggarai_fw_200gr.png', 'Arabika Flores Manggarai FW 200gr', 6, 1, 200, 'pcs', 70000.00, 'Kopi Arabika Flores Manggarai FW dalam kemasan 200 gram, ideal untuk pencinta kopi dengan rasa yang lebih mendalam.', '2024-07-24 12:19:19', '2024-07-24 12:19:19', 1),
(95, 'PRDAGH001', NULL, 'products/images/arabika_gayo_honey_madu_hitam.png', 'Arabika Gayo Honey Madu Hitam 100gr', 7, 1, 100, 'pcs', 38000.00, 'Kopi Arabika Gayo Honey Madu Hitam dalam kemasan 100 gram, dengan rasa manis alami dan aroma madu.', '2024-07-24 12:19:19', '2024-07-24 12:19:19', 1),
(96, 'PRDAGH002', NULL, 'products/images/arabika_gayo_honey_madu_hitam_200gr.png', 'Arabika Gayo Honey Madu Hitam 200gr', 7, 1, 200, 'pcs', 75000.00, 'Kopi Arabika Gayo Honey Madu Hitam dalam kemasan 200 gram, memberikan rasa manis dan aroma madu yang kuat.', '2024-07-24 12:19:19', '2024-07-24 12:19:19', 1),
(97, 'PRDAGP001', NULL, 'products/images/arabika_gayo_pondok_gajah_wine.png', 'Arabika Gayo Pondok Gajah Wine 200gr', 7, 1, 200, 'pcs', 75000.00, 'Kopi Arabika Gayo Pondok Gajah Wine dalam kemasan 200 gram, dengan nuansa wine yang khas.', '2024-07-24 12:19:19', '2024-07-24 12:19:19', 1),
(98, 'PRDAGW001', NULL, 'products/images/arabika_gayo_wine_100gr.png', 'Arabika Gayo Wine 100gr', 7, 1, 100, 'pcs', 45000.00, 'Kopi Arabika Gayo Wine dalam kemasan 100 gram, menawarkan rasa wine yang unik dan menarik.', '2024-07-24 12:19:19', '2024-07-24 12:19:19', 1),
(99, 'PRDAGW002', NULL, 'products/images/arabika_gayo_wine_200gr.png', 'Arabika Gayo Wine 200gr', 7, 1, 200, 'pcs', 80000.00, 'Kopi Arabika Gayo Wine dalam kemasan 200 gram, memberikan rasa wine yang mendalam dan memuaskan.', '2024-07-24 12:19:19', '2024-07-24 12:19:19', 1),
(100, 'PRDAGH003', NULL, 'products/images/arabika_gedongsongo_honey.png', 'Arabika Gedongsongo Honey 200gr', 8, 1, 200, 'pcs', 70000.00, 'Kopi Arabika Gedongsongo Honey dalam kemasan 200 gram, menawarkan rasa manis alami dan aroma yang menyegarkan.', '2024-07-24 12:19:19', '2024-07-24 12:19:19', 1),
(101, 'PRDAGT001', NULL, 'products/images/arabika_gn_tilu_honey_150gr.png', 'Arabika Gn Tilu Honey 150gr', 9, 1, 150, 'pcs', 50000.00, 'Kopi Arabika Gn Tilu Honey dalam kemasan 150 gram, menawarkan rasa manis dan aroma khas.', '2024-07-24 12:19:19', '2024-07-24 12:19:19', 1),
(102, 'PRDAGT002', NULL, 'products/images/arabika_gn_tilu_honey_250gr.png', 'Arabika Gn Tilu Honey 250gr', 9, 1, 250, 'pcs', 70000.00, 'Kopi Arabika Gn Tilu Honey dalam kemasan 250 gram, ideal untuk pencinta kopi dengan rasa yang lebih kaya.', '2024-07-24 12:19:19', '2024-07-24 12:19:19', 1),
(103, 'PRDAGL001', NULL, 'products/images/arabika_guatemala_la_antigua.png', 'Arabika Guatemala La Antigua 200gr', 10, 1, 200, 'pcs', 85000.00, 'Kopi Arabika Guatemala La Antigua dalam kemasan 200 gram, dengan rasa yang kompleks dan aroma buah.', '2024-07-24 12:19:19', '2024-07-24 12:19:19', 1),
(104, 'PRDAGE001', NULL, 'products/images/arabika_gujithopia_ethiopia.png', 'Arabika Gujithopia Ethiopia 200gr', 11, 1, 200, 'pcs', 80000.00, 'Kopi Arabika Gujithopia Ethiopia dalam kemasan 200 gram, menawarkan rasa yang beragam dan aroma yang kaya.', '2024-07-24 12:19:19', '2024-07-24 12:19:19', 1),
(105, 'PRDAHH001', NULL, 'products/images/arabika_halu_honey_red_grape.png', 'Arabika Halu Honey Red Grape 100gr', 12, 1, 100, 'pcs', 40000.00, 'Kopi Arabika Halu Honey Red Grape dalam kemasan 100 gram, dengan aroma anggur merah dan rasa manis.', '2024-07-24 12:19:19', '2024-07-24 12:19:19', 1),
(106, 'PRDAHH002', NULL, 'products/images/arabika_halu_honey_red_grape_200gr.png', 'Arabika Halu Honey Red Grape 200gr', 12, 1, 200, 'pcs', 78000.00, 'Kopi Arabika Halu Honey Red Grape dalam kemasan 200 gram, menawarkan rasa dan aroma anggur merah yang menonjol.', '2024-07-24 12:19:19', '2024-07-24 12:19:19', 1),
(107, 'PRDAHM001', NULL, 'products/images/arabika_halu_mekarwangi_150gr.png', 'Arabika Halu Mekarwangi 150gr', 13, 1, 150, 'pcs', 50000.00, 'Kopi Arabika Halu Mekarwangi dalam kemasan 150 gram, memberikan aroma bunga dan rasa yang lembut.', '2024-07-24 12:19:19', '2024-07-24 12:19:19', 1),
(108, 'PRDAHM002', NULL, 'products/images/arabika_halu_mekarwangi_250gr.png', 'Arabika Halu Mekarwangi 250gr', 13, 1, 250, 'pcs', 70000.00, 'Kopi Arabika Halu Mekarwangi dalam kemasan 250 gram, ideal untuk pencinta kopi dengan aroma bunga yang kuat.', '2024-07-24 12:19:19', '2024-07-24 12:19:19', 1),
(109, 'PRDAHP001', NULL, 'products/images/arabika_halu_pink_honey.png', 'Arabika Halu Pink Honey 100gr', 14, 1, 100, 'pcs', 42000.00, 'Kopi Arabika Halu Pink Honey dalam kemasan 100 gram, memberikan rasa manis dengan sentuhan aroma bunga.', '2024-07-24 12:19:19', '2024-07-24 12:19:19', 1),
(110, 'PRDAHH003', NULL, 'products/images/arabika_halu_honey_banana_100gr.png', 'Arabika Halu honey Banana 100gr', 15, 1, 100, 'pcs', 40000.00, 'Kopi Arabika Halu Honey Banana dalam kemasan 100 gram, menawarkan rasa pisang yang manis dan aroma madu.', '2024-07-24 12:19:19', '2024-07-24 12:19:19', 1),
(111, 'PRDAHH004', NULL, 'products/images/arabika_halu_honey_banana_200gr.png', 'Arabika Halu honey Banana 200gr', 15, 1, 200, 'pcs', 75000.00, 'Kopi Arabika Halu Honey Banana dalam kemasan 200 gram, dengan rasa pisang dan madu yang lebih menonjol.', '2024-07-24 12:19:20', '2024-07-24 12:19:20', 1),
(112, 'PRDAHC001', NULL, 'products/images/arabika_honey_ciwidey_200gr.png', 'Arabika Honey Ciwidey 200gr', 16, 1, 200, 'pcs', 70000.00, 'Kopi Arabika Honey Ciwidey dalam kemasan 200 gram, menawarkan rasa madu yang khas.', '2024-07-24 12:25:32', '2024-07-24 12:25:32', 1),
(113, 'PRDAHY001', NULL, 'products/images/arabika_honey_yellow_ciwidey_200gr.png', 'Arabika Honey Yellow Ciwidey 200gr', 16, 1, 200, 'pcs', 75000.00, 'Kopi Arabika Honey Yellow Ciwidey dalam kemasan 200 gram, dengan rasa dan aroma madu yang cerah.', '2024-07-24 12:25:32', '2024-07-24 12:25:32', 1),
(114, 'PRDAIA001', NULL, 'products/images/arabika_ijen_apel_malang_100gr.png', 'Arabika Ijen Apel Malang 100gr', 17, 1, 100, 'pcs', 38000.00, 'Kopi Arabika Ijen Apel Malang dalam kemasan 100 gram, dengan sentuhan rasa apel Malang.', '2024-07-24 12:25:32', '2024-07-24 12:25:32', 1),
(115, 'PRDAIA002', NULL, 'products/images/arabika_ijen_apel_malang_200gr.png', 'Arabika Ijen Apel Malang 200gr', 17, 1, 200, 'pcs', 75000.00, 'Kopi Arabika Ijen Apel Malang dalam kemasan 200 gram, dengan rasa apel Malang yang lebih dominan.', '2024-07-24 12:25:32', '2024-07-24 12:25:32', 1),
(116, 'PRDAIK001', NULL, 'products/images/arabika_ijen_karamela_honey_100gr.png', 'Arabika Ijen Karamela Honey 100gr', 18, 1, 100, 'pcs', 42000.00, 'Kopi Arabika Ijen Karamela Honey dalam kemasan 100 gram, dengan rasa karamel dan madu yang harmonis.', '2024-07-24 12:25:32', '2024-07-24 12:25:32', 1),
(117, 'PRDAIK002', NULL, 'products/images/arabika_ijen_karamela_honey_200gr.png', 'Arabika Ijen Karamela Honey 200gr', 18, 1, 200, 'pcs', 80000.00, 'Kopi Arabika Ijen Karamela Honey dalam kemasan 200 gram, memberikan rasa karamel dan madu yang lebih kuat.', '2024-07-24 12:25:32', '2024-07-24 12:25:32', 1),
(118, 'PRDAIL001', NULL, 'products/images/arabika_ijen_lestari_natural_cm_100gr.png', 'Arabika Ijen Lestari Natural CM 100gr', 19, 1, 100, 'pcs', 55000.00, 'Kopi Arabika Ijen Lestari Natural CM dalam kemasan 100 gram, menawarkan rasa alami dan aroma yang kaya.', '2024-07-24 12:25:32', '2024-07-24 12:25:32', 1),
(119, 'PRDAIN001', NULL, 'products/images/arabika_ijen_natural_classic_200gr.png', 'Arabika Ijen Natural Classic 200gr', 19, 1, 200, 'pcs', 70000.00, 'Kopi Arabika Ijen Natural Classic dalam kemasan 200 gram, dengan rasa klasik dan aroma natural.', '2024-07-24 12:25:32', '2024-07-24 12:25:32', 1),
(120, 'PRDAIH001', NULL, 'products/images/arabika_ijen_honey_madumerah_200gr.png', 'Arabika Ijen honey Madumerah 200gr', 20, 1, 200, 'pcs', 65000.00, 'Kopi Arabika Ijen Honey Madumerah dalam kemasan 200 gram, menawarkan rasa madu merah yang khas.', '2024-07-24 12:25:32', '2024-07-24 12:25:32', 1),
(121, 'PRDAKN001', NULL, 'products/images/arabika_kaligua_natural_100gr.png', 'Arabika Kaligua Natural 100gr', 21, 1, 100, 'pcs', 37000.00, 'Kopi Arabika Kaligua Natural dalam kemasan 100 gram, memberikan rasa natural yang segar.', '2024-07-24 12:25:32', '2024-07-24 12:25:32', 1),
(122, 'PRDAKS001', NULL, 'products/images/arabika_kaligua_slamet_natural_200gr.png', 'Arabika Kaligua Slamet Natural 200gr', 21, 1, 200, 'pcs', 65000.00, 'Kopi Arabika Kaligua Slamet Natural dalam kemasan 200 gram, dengan rasa dan aroma natural yang kuat.', '2024-07-24 12:25:32', '2024-07-24 12:25:32', 1),
(123, 'PRDAKB001', NULL, 'products/images/arabika_kamojang_blackhoney_200gr.png', 'Arabika Kamojang Blackhoney 200gr', 22, 1, 200, 'pcs', 70000.00, 'Kopi Arabika Kamojang Blackhoney dalam kemasan 200 gram, menawarkan rasa madu hitam yang kaya.', '2024-07-24 12:25:32', '2024-07-24 12:25:32', 1),
(124, 'PRDAKM001', NULL, 'products/images/arabika_kamojang_madu_hitam_wanoja_200gr.png', 'Arabika Kamojang Madu Hitam Wanoja 200gr', 22, 1, 200, 'pcs', 75000.00, 'Kopi Arabika Kamojang Madu Hitam Wanoja dalam kemasan 200 gram, dengan rasa madu hitam yang mendalam.', '2024-07-24 12:25:32', '2024-07-24 12:25:32', 1),
(125, 'PRDAKN002', NULL, 'products/images/arabika_karaha_natural_100gr.png', 'Arabika Karaha Natural 100gr', 23, 1, 100, 'pcs', 35000.00, 'Kopi Arabika Karaha Natural dalam kemasan 100 gram, menawarkan rasa alami yang segar.', '2024-07-24 12:25:32', '2024-07-24 12:25:32', 1),
(126, 'PRDAKN003', NULL, 'products/images/arabika_karaha_natural_200gr.png', 'Arabika Karaha Natural 200gr', 23, 1, 200, 'pcs', 60000.00, 'Kopi Arabika Karaha Natural dalam kemasan 200 gram, dengan rasa alami yang kuat.', '2024-07-24 12:25:32', '2024-07-24 12:25:32', 1),
(127, 'PRDAKN004', NULL, 'products/images/arabika_karamat_nat_200gr.png', 'Arabika Karamat Nat 200gr', 24, 1, 200, 'pcs', 65000.00, 'Kopi Arabika Karamat Nat dalam kemasan 200 gram, memberikan rasa yang khas dan unik.', '2024-07-24 12:25:32', '2024-07-24 12:25:32', 1),
(128, 'PRDAKB002', NULL, 'products/images/arabika_karkobar_banjarnegara_200gr.png', 'Arabika Karkobar Banjarnegara 200gr', 25, 1, 200, 'pcs', 65000.00, 'Kopi Arabika Karkobar Banjarnegara dalam kemasan 200 gram, menawarkan rasa dan aroma yang menarik.', '2024-07-24 12:25:32', '2024-07-24 12:25:32', 1),
(129, 'PRDAKT001', NULL, 'products/images/arabika_kelimutu_turajaji_honey_150gr.png', 'Arabika Kelimutu Turajaji Honey 150gr', 26, 1, 150, 'pcs', 50000.00, 'Kopi Arabika Kelimutu Turajaji Honey dalam kemasan 150 gram, memberikan rasa madu yang lembut.', '2024-07-24 12:25:32', '2024-07-24 12:25:32', 1),
(130, 'PRDAKT002', NULL, 'products/images/arabika_kelimutu_turajaji_honey_250gr.png', 'Arabika Kelimutu Turajaji Honey 250gr', 26, 1, 250, 'pcs', 70000.00, 'Kopi Arabika Kelimutu Turajaji Honey dalam kemasan 250 gram, dengan rasa madu yang lebih intens.', '2024-07-24 12:25:32', '2024-07-24 12:25:32', 1),
(131, 'PRDAKK001', NULL, 'products/images/arabika_kenya_kainamui_200gr.png', 'Arabika Kenya Kainamui 200gr', 27, 1, 200, 'pcs', 85000.00, 'Kopi Arabika Kenya Kainamui dalam kemasan 200 gram, dengan rasa yang kuat dan aroma khas.', '2024-07-24 12:25:32', '2024-07-24 12:25:32', 1),
(132, 'PRDAKF001', NULL, 'products/images/arabika_kerinci_fw_200gr.png', 'Arabika Kerinci FW 200gr', 28, 1, 200, 'pcs', 70000.00, 'Kopi Arabika Kerinci FW dalam kemasan 200 gram, memberikan rasa yang kaya dan berkarakter.', '2024-07-24 12:25:32', '2024-07-24 12:25:32', 1),
(133, 'PRDAKN005', NULL, 'products/images/arabika_kerinci_natural_100gr.png', 'Arabika Kerinci Natural 100gr', 28, 1, 100, 'pcs', 35000.00, 'Kopi Arabika Kerinci Natural dalam kemasan 100 gram, menawarkan rasa alami yang segar.', '2024-07-24 12:25:32', '2024-07-24 12:25:32', 1),
(134, 'PRDAKN006', NULL, 'products/images/arabika_kerinci_natural_200gr.png', 'Arabika Kerinci Natural 200gr', 28, 1, 200, 'pcs', 70000.00, 'Kopi Arabika Kerinci Natural dalam kemasan 200 gram, dengan rasa alami yang kuat.', '2024-07-24 12:25:32', '2024-07-24 12:25:32', 1),
(135, 'PRDAKN007', NULL, 'products/images/arabika_kintamani_nat_100gr.png', 'Arabika Kintamani Nat 100gr', 29, 1, 100, 'pcs', 38000.00, 'Kopi Arabika Kintamani Nat dalam kemasan 100 gram, dengan rasa alami dan aroma segar.', '2024-07-24 12:25:32', '2024-07-24 12:25:32', 1),
(136, 'PRDAKN008', NULL, 'products/images/arabika_kintamani_nat_200gr.png', 'Arabika Kintamani Nat 200gr', 29, 1, 200, 'pcs', 70000.00, 'Kopi Arabika Kintamani Nat dalam kemasan 200 gram, menawarkan rasa alami yang intens.', '2024-07-24 12:25:32', '2024-07-24 12:25:32', 1),
(137, 'PRDALS001', NULL, 'products/images/arabika_lamuk_sumbing_fw_200gr.png', 'Arabika Lamuk Sumbing FW 200gr', 30, 1, 200, 'pcs', 70000.00, 'Kopi Arabika Lamuk Sumbing FW dalam kemasan 200 gram, memberikan rasa yang kaya dan kompleks.', '2024-07-24 12:25:32', '2024-07-24 12:25:32', 1),
(138, 'PRDALS002', NULL, 'products/images/arabika_lamuk_sumbing_wine_150gr.png', 'Arabika Lamuk Sumbing Wine 150gr', 30, 1, 150, 'pcs', 55000.00, 'Kopi Arabika Lamuk Sumbing Wine dalam kemasan 150 gram, dengan rasa wine yang khas.', '2024-07-24 12:25:32', '2024-07-24 12:25:32', 1),
(139, 'PRDALS003', NULL, 'products/images/arabika_lamuk_sumbing_wine_250gr.png', 'Arabika Lamuk Sumbing wine 250gr', 30, 1, 250, 'pcs', 75000.00, 'Kopi Arabika Lamuk Sumbing Wine dalam kemasan 250 gram, menawarkan rasa wine yang lebih dominan.', '2024-07-24 12:25:32', '2024-07-24 12:25:32', 1),
(140, 'PRDALH001', NULL, 'products/images/arabika_lemahsugih_honey_200gr.png', 'Arabika Lemahsugih Honey 200gr', 31, 1, 200, 'pcs', 75000.00, 'Kopi Arabika Lemahsugih Honey dalam kemasan 200 gram, dengan rasa madu yang lembut dan manis.', '2024-07-24 12:25:32', '2024-07-24 12:25:32', 1),
(141, 'PRDALN001', NULL, 'products/images/arabika_lintong_nihuta_100gr.png', 'Arabika Lintong Nihuta 100gr', 32, 1, 100, 'pcs', 35000.00, 'Kopi Arabika Lintong Nihuta dalam kemasan 100 gram, dengan rasa yang kuat dan aroma khas.', '2024-07-24 12:25:32', '2024-07-24 12:25:32', 1),
(142, 'PRDALN002', NULL, 'products/images/arabika_lintong_nihuta_200gr.png', 'Arabika Lintong Nihuta 200gr', 32, 1, 200, 'pcs', 65000.00, 'Kopi Arabika Lintong Nihuta dalam kemasan 200 gram, memberikan rasa yang kuat dan kompleks.', '2024-07-24 12:25:32', '2024-07-24 12:25:32', 1),
(143, 'PRDAMB001', NULL, 'products/images/arabika_malabar_blackhoney_200gr.png', 'Arabika Malabar Blackhoney 200gr', 33, 1, 200, 'pcs', 70000.00, 'Kopi Arabika Malabar Blackhoney dalam kemasan 200 gram, menawarkan rasa madu yang kaya dan kompleks.', '2024-07-24 12:25:32', '2024-07-24 12:25:32', 1),
(144, 'PRDAMN001', NULL, 'products/images/arabika_malabar_nat_200gr.png', 'Arabika Malabar Nat 200gr', 33, 1, 200, 'pcs', 65000.00, 'Kopi Arabika Malabar Nat dalam kemasan 200 gram, memberikan rasa yang khas dan intens.', '2024-07-24 12:25:32', '2024-07-24 12:25:32', 1),
(145, 'PRDAMF001', NULL, 'products/images/arabika_mandheling_fw_100gr.png', 'Arabika Mandheling FW 100gr', 34, 1, 100, 'pcs', 35000.00, 'Kopi Arabika Mandheling FW dalam kemasan 100 gram, menawarkan rasa yang kuat dan berkarakter.', '2024-07-24 12:25:32', '2024-07-24 12:25:32', 1),
(146, 'PRDAMF002', NULL, 'products/images/arabika_mandheling_fw_200gr.png', 'Arabika Mandheling FW 200gr', 34, 1, 200, 'pcs', 65000.00, 'Kopi Arabika Mandheling FW dalam kemasan 200 gram, memberikan rasa yang kuat dan berkarakter.', '2024-07-24 12:25:32', '2024-07-24 12:25:32', 1),
(148, 'PRDAW001', NULL, 'products/images/produk.jpg', 'Arabica Wine', 17, 1, 100, 'g', 50000.00, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', '2024-07-26 07:28:44', '2024-07-26 07:28:44', 1),
(149, 'PRDRSU001', NULL, 'products/images/Image.png', 'Robusta sumatera utara', 2, 2, 100, 'gram', 50000.00, 'Manis, asam, pahit', '2024-08-17 04:52:39', '2024-08-17 04:52:39', 1),
(150, 'PRDRB001', NULL, NULL, 'Robusta bali', 17, 2, 100, 'gram', 75000.00, 'sweet', '2024-08-22 09:09:59', '2024-08-22 09:09:59', 1),
(151, 'PRDRT001', NULL, 'products/images/download (18).png', 'Robusta temanggung', 35, 2, 100, 'gram', 75000.00, 'sweet', '2024-08-23 11:02:03', '2024-08-23 11:02:03', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `provinces`
--

CREATE TABLE `provinces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `province_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `provinces`
--

INSERT INTO `provinces` (`id`, `province_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Bali', '2024-07-14 14:32:45', '2024-07-14 14:32:45'),
(2, 2, 'Bangka Belitung', '2024-07-14 14:32:46', '2024-07-14 14:32:46'),
(3, 3, 'Banten', '2024-07-14 14:32:46', '2024-07-14 14:32:46'),
(4, 4, 'Bengkulu', '2024-07-14 14:32:46', '2024-07-14 14:32:46'),
(5, 5, 'DI Yogyakarta', '2024-07-14 14:32:47', '2024-07-14 14:32:47'),
(6, 6, 'DKI Jakarta', '2024-07-14 14:32:47', '2024-07-14 14:32:47'),
(7, 7, 'Gorontalo', '2024-07-14 14:32:47', '2024-07-14 14:32:47'),
(8, 8, 'Jambi', '2024-07-14 14:32:48', '2024-07-14 14:32:48'),
(9, 9, 'Jawa Barat', '2024-07-14 14:32:48', '2024-07-14 14:32:48'),
(10, 10, 'Jawa Tengah', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(11, 11, 'Jawa Timur', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(12, 12, 'Kalimantan Barat', '2024-07-14 14:32:49', '2024-07-14 14:32:49'),
(13, 13, 'Kalimantan Selatan', '2024-07-14 14:32:50', '2024-07-14 14:32:50'),
(14, 14, 'Kalimantan Tengah', '2024-07-14 14:32:50', '2024-07-14 14:32:50'),
(15, 15, 'Kalimantan Timur', '2024-07-14 14:32:51', '2024-07-14 14:32:51'),
(16, 16, 'Kalimantan Utara', '2024-07-14 14:32:51', '2024-07-14 14:32:51'),
(17, 17, 'Kepulauan Riau', '2024-07-14 14:32:51', '2024-07-14 14:32:51'),
(18, 18, 'Lampung', '2024-07-14 14:32:52', '2024-07-14 14:32:52'),
(19, 19, 'Maluku', '2024-07-14 14:32:52', '2024-07-14 14:32:52'),
(20, 20, 'Maluku Utara', '2024-07-14 14:32:53', '2024-07-14 14:32:53'),
(21, 21, 'Nanggroe Aceh Darussalam (NAD)', '2024-07-14 14:32:53', '2024-07-14 14:32:53'),
(22, 22, 'Nusa Tenggara Barat (NTB)', '2024-07-14 14:32:53', '2024-07-14 14:32:53'),
(23, 23, 'Nusa Tenggara Timur (NTT)', '2024-07-14 14:32:54', '2024-07-14 14:32:54'),
(24, 24, 'Papua', '2024-07-14 14:32:54', '2024-07-14 14:32:54'),
(25, 25, 'Papua Barat', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(26, 26, 'Riau', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(27, 27, 'Sulawesi Barat', '2024-07-14 14:32:55', '2024-07-14 14:32:55'),
(28, 28, 'Sulawesi Selatan', '2024-07-14 14:32:56', '2024-07-14 14:32:56'),
(29, 29, 'Sulawesi Tengah', '2024-07-14 14:32:56', '2024-07-14 14:32:56'),
(30, 30, 'Sulawesi Tenggara', '2024-07-14 14:32:57', '2024-07-14 14:32:57'),
(31, 31, 'Sulawesi Utara', '2024-07-14 14:32:57', '2024-07-14 14:32:57'),
(32, 32, 'Sumatera Barat', '2024-07-14 14:32:57', '2024-07-14 14:32:57'),
(33, 33, 'Sumatera Selatan', '2024-07-14 14:32:58', '2024-07-14 14:32:58'),
(34, 34, 'Sumatera Utara', '2024-07-14 14:32:58', '2024-07-14 14:32:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekomendasi_produks`
--

CREATE TABLE `rekomendasi_produks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_visible` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `rekomendasi_produks`
--

INSERT INTO `rekomendasi_produks` (`id`, `product_id`, `created_at`, `updated_at`, `is_visible`) VALUES
(14, 46, '2024-07-24 12:04:50', '2024-07-24 12:04:50', 1),
(15, 47, '2024-07-24 12:04:59', '2024-07-24 12:04:59', 1),
(16, 74, '2024-07-24 12:05:06', '2024-08-14 06:58:27', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `review` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `product_id`, `rating`, `review`, `created_at`, `updated_at`) VALUES
(3, 1, 46, 5, 'enak', '2024-08-28 08:33:39', '2024-08-28 08:33:39'),
(4, 22, 47, 3, '[value-5]', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 33, 46, 3, 'enak', '2024-08-28 09:47:14', '2024-08-28 09:47:14'),
(6, 23, 46, 3, 'good', '2024-08-28 10:10:53', '2024-08-28 10:10:53'),
(7, 1, 47, 4, 'nice', '2024-11-25 08:17:14', '2024-11-25 08:17:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'web', '2024-08-20 11:10:25', '2024-08-20 11:10:25'),
(2, 'admin_gudang', 'web', '2024-08-20 11:20:08', '2024-08-20 11:20:08'),
(3, 'Customer', 'web', '2024-08-21 05:42:48', '2024-08-21 05:42:48'),
(4, 'admin_toko', 'web', '2024-08-21 12:49:48', '2024-08-21 12:49:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 4),
(2, 1),
(2, 2),
(2, 4),
(3, 1),
(3, 2),
(3, 4),
(4, 1),
(4, 2),
(4, 4),
(5, 1),
(5, 2),
(5, 4),
(6, 1),
(6, 2),
(6, 4),
(7, 1),
(7, 2),
(7, 4),
(8, 1),
(8, 2),
(8, 4),
(9, 1),
(9, 2),
(9, 4),
(10, 1),
(10, 2),
(10, 4),
(11, 1),
(11, 2),
(11, 4),
(12, 1),
(12, 2),
(12, 4),
(13, 1),
(13, 2),
(14, 1),
(14, 2),
(15, 1),
(15, 2),
(16, 1),
(16, 2),
(17, 1),
(17, 2),
(18, 1),
(18, 2),
(19, 1),
(19, 2),
(20, 1),
(20, 2),
(21, 1),
(21, 2),
(22, 1),
(22, 2),
(23, 1),
(23, 2),
(24, 1),
(24, 2),
(25, 1),
(25, 2),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(29, 1),
(29, 2),
(30, 1),
(30, 2),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(33, 1),
(33, 2),
(34, 1),
(34, 2),
(35, 1),
(35, 2),
(36, 1),
(36, 2),
(37, 1),
(37, 4),
(38, 1),
(38, 4),
(39, 1),
(39, 4),
(40, 1),
(40, 4),
(41, 1),
(41, 4),
(42, 1),
(42, 4),
(43, 1),
(43, 4),
(44, 1),
(44, 4),
(45, 1),
(45, 4),
(46, 1),
(46, 4),
(47, 1),
(47, 4),
(48, 1),
(48, 4),
(49, 1),
(49, 2),
(50, 1),
(50, 2),
(51, 1),
(51, 2),
(52, 1),
(52, 2),
(53, 1),
(53, 2),
(54, 1),
(54, 2),
(55, 1),
(55, 2),
(56, 1),
(56, 2),
(57, 1),
(57, 2),
(58, 1),
(58, 2),
(59, 1),
(59, 2),
(60, 1),
(60, 2),
(61, 1),
(61, 4),
(62, 1),
(62, 4),
(63, 1),
(63, 4),
(64, 1),
(64, 4),
(65, 1),
(65, 4),
(66, 1),
(66, 4),
(67, 1),
(67, 4),
(68, 1),
(68, 4),
(69, 1),
(69, 4),
(70, 1),
(70, 4),
(71, 1),
(71, 4),
(72, 1),
(72, 4),
(73, 1),
(73, 4),
(74, 1),
(74, 4),
(75, 1),
(75, 4),
(76, 1),
(76, 4),
(77, 1),
(77, 4),
(78, 1),
(78, 4),
(79, 1),
(79, 4),
(80, 1),
(80, 4),
(81, 1),
(81, 4),
(82, 1),
(82, 4),
(83, 1),
(83, 4),
(84, 1),
(84, 4),
(85, 1),
(85, 4),
(86, 1),
(86, 4),
(87, 1),
(87, 4),
(88, 1),
(88, 4),
(89, 1),
(89, 4),
(90, 1),
(90, 4),
(91, 1),
(91, 4),
(92, 1),
(92, 4),
(93, 1),
(93, 4),
(94, 1),
(94, 4),
(95, 1),
(95, 4),
(96, 1),
(96, 4),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(103, 4),
(104, 1),
(104, 4),
(105, 1),
(105, 4),
(106, 1),
(106, 4),
(107, 1),
(107, 4),
(108, 1),
(108, 4),
(109, 1),
(109, 4),
(110, 1),
(110, 4),
(111, 1),
(111, 4),
(112, 1),
(112, 4),
(113, 1),
(113, 4),
(114, 1),
(114, 4),
(115, 1),
(115, 4),
(116, 1),
(116, 4),
(117, 1),
(117, 4),
(118, 1),
(118, 4),
(119, 1),
(119, 4),
(120, 1),
(120, 4),
(121, 1),
(121, 4),
(122, 1),
(122, 4),
(123, 1),
(123, 4),
(124, 1),
(124, 4),
(125, 1),
(125, 4),
(126, 1),
(126, 4),
(127, 1),
(127, 2),
(128, 1),
(128, 2),
(129, 1),
(129, 2),
(130, 1),
(130, 2),
(131, 1),
(131, 2),
(132, 1),
(132, 2),
(133, 1),
(133, 2),
(134, 1),
(134, 2),
(135, 1),
(135, 2),
(136, 1),
(136, 2),
(137, 1),
(137, 2),
(138, 1),
(138, 2),
(139, 1),
(139, 4),
(140, 1),
(140, 4),
(141, 1),
(141, 4),
(142, 1),
(142, 4),
(143, 1),
(143, 4),
(144, 1),
(144, 4),
(145, 1),
(145, 4),
(146, 1),
(146, 4),
(147, 1),
(147, 4),
(148, 1),
(148, 4),
(149, 1),
(149, 4),
(150, 1),
(150, 4),
(151, 1),
(152, 1),
(153, 1),
(154, 1),
(155, 1),
(156, 1),
(157, 1),
(158, 1),
(159, 1),
(160, 1),
(161, 1),
(162, 1),
(163, 1),
(163, 4),
(164, 1),
(164, 4),
(165, 1),
(165, 4),
(166, 1),
(166, 4),
(167, 1),
(167, 4),
(168, 1),
(168, 4),
(169, 1),
(169, 4),
(170, 1),
(170, 4),
(171, 1),
(171, 4),
(172, 1),
(172, 4),
(173, 1),
(173, 4),
(174, 1),
(174, 4),
(175, 1),
(176, 1),
(177, 1),
(178, 1),
(179, 1),
(180, 1),
(181, 1),
(182, 1),
(183, 1),
(184, 1),
(185, 1),
(186, 1),
(187, 1),
(188, 1),
(188, 4),
(189, 1),
(189, 4),
(191, 1),
(191, 4),
(192, 1),
(192, 4),
(193, 1),
(193, 4),
(194, 1),
(194, 4),
(195, 1),
(195, 4),
(196, 1),
(196, 4),
(197, 1),
(197, 4),
(198, 1),
(198, 4),
(205, 1),
(205, 4),
(206, 1),
(206, 4),
(207, 1),
(207, 4),
(208, 1),
(208, 4),
(209, 1),
(209, 4),
(210, 1),
(210, 4),
(211, 1),
(211, 4),
(212, 1),
(212, 4),
(213, 1),
(213, 4),
(214, 1),
(214, 4),
(215, 1),
(215, 4),
(216, 1),
(216, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `stok_brngs`
--

CREATE TABLE `stok_brngs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `stokAwal` int(11) NOT NULL DEFAULT 0,
  `stokMasuk` int(11) NOT NULL DEFAULT 0,
  `stokKeluar` int(11) NOT NULL DEFAULT 0,
  `stokTersedia` int(11) NOT NULL DEFAULT 0,
  `securityStok` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `supplier_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `stok_brngs`
--

INSERT INTO `stok_brngs` (`id`, `product_id`, `stokAwal`, `stokMasuk`, `stokKeluar`, `stokTersedia`, `securityStok`, `created_at`, `updated_at`, `supplier_id`) VALUES
(37, 46, 1000, 2500, 2850, 650, 50, '2024-08-07 13:27:11', '2024-08-27 13:36:39', 1),
(38, 47, 1000, 2000, 2500, 500, 100, '2024-08-07 13:42:28', '2024-11-25 08:13:21', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `contact`, `address`, `created_at`, `updated_at`) VALUES
(1, 'ibu siti', '083738383', 'jl. kalibener no.14', '2024-07-11 02:02:07', '2024-12-26 05:08:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tokos`
--

CREATE TABLE `tokos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_toko` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `province_id` bigint(20) UNSIGNED NOT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `kode_pos` varchar(255) NOT NULL,
  `terms` text NOT NULL,
  `privacy` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tokos`
--

INSERT INTO `tokos` (`id`, `nama_toko`, `contact`, `email`, `province_id`, `city_id`, `alamat`, `kode_pos`, `terms`, `privacy`, `created_at`, `updated_at`) VALUES
(1, 'Toko supplier biji kopi fresh ', '087653565368', 'admin@freshbeanpwt.com', 10, 91, 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', '14543', '<strong>Selamat datang di FreshBeanPurwokerto.</strong><br>\nDengan mengakses atau menggunakan situs kami, Anda setuju untuk terikat oleh syarat dan ketentuan berikut. Jika Anda tidak setuju dengan syarat dan ketentuan ini, harap jangan menggunakan situs kami.<br>\n\n1. Anda setuju untuk menggunakan situs ini hanya untuk tujuan yang sah dan sesuai dengan hukum yang berlaku. Anda tidak diperbolehkan untuk menggunakan situs ini untuk melakukan tindakan yang dapat merusak atau mengganggu fungsi situs.<br>\n\n2. Semua konten yang terdapat di situs ini, termasuk tetapi tidak terbatas pada teks, gambar, dan logo, adalah milik FreshBeanPurwokerto dan dilindungi oleh hak cipta dan undang-undang kekayaan intelektual lainnya. Anda tidak diperbolehkan untuk menyalin, mendistribusikan, atau memodifikasi konten tanpa izin tertulis dari kami.<br>\n\n3. Kami tidak bertanggung jawab atas kerusakan atau kerugian yang timbul dari penggunaan atau ketidakmampuan untuk menggunakan situs ini. Situs ini dapat berisi tautan ke situs web pihak ketiga, dan kami tidak bertanggung jawab atas konten atau kebijakan privasi dari situs-situs tersebut.<br>\n \n4. Kami berhak untuk mengubah syarat dan ketentuan ini dari waktu ke waktu. Perubahan akan diposting di situs kami, dan penggunaan Anda atas situs setelah perubahan menunjukkan bahwa Anda menerima syarat dan ketentuan yang diperbarui.<br>\n\n5. Syarat dan ketentuan ini diatur oleh hukum Indonesia. Setiap sengketa yang timbul dari penggunaan situs ini akan diselesaikan di pengadilan yang berwenang di Purwokerto.<br>\n\nJika Anda memiliki pertanyaan mengenai syarat dan ketentuan ini, silakan hubungi kami di +62 812 3456 7890.', 'Selamat datang di website FreshBeanPurwokerto.<br>\nKami berkomitmen untuk melindungi privasi Anda. Kebijakan Privasi ini menjelaskan bagaimana kami mengumpulkan, menggunakan, dan melindungi informasi pribadi Anda saat Anda mengunjungi situs kami.<br>\n\nKami mengumpulkan informasi pribadi seperti nama, alamat email, dan informasi pembayaran ketika Anda mendaftar atau melakukan pembelian di situs kami. Kami juga dapat mengumpulkan data anonim melalui penggunaan cookies untuk meningkatkan pengalaman Anda.<br>\n\nInformasi yang kami kumpulkan digunakan untuk memproses pesanan Anda, memberikan layanan pelanggan, dan mengirimkan informasi terkait dengan produk dan layanan kami. Kami tidak akan membagikan informasi pribadi Anda dengan pihak ketiga tanpa izin Anda, kecuali jika diperlukan untuk memproses transaksi atau sesuai dengan kewajiban hukum.<br>\n\nKami mengambil langkah-langkah keamanan yang wajar untuk melindungi informasi pribadi Anda dari akses yang tidak sah, penggunaan, atau pengungkapan. Namun, tidak ada sistem yang sepenuhnya aman, dan kami tidak dapat menjamin keamanan absolut dari informasi Anda.<br>\n\nKami dapat memperbarui kebijakan privasi ini dari waktu ke waktu. Kami akan memberitahukan Anda tentang perubahan dengan memposting kebijakan yang diperbarui di situs kami. Anda disarankan untuk memeriksa kebijakan ini secara berkala.<br>\n\nJika Anda memiliki pertanyaan atau kekhawatiran tentang kebijakan privasi ini, jangan ragu untuk menghubungi kami di +62 812 3456 7890.', '2024-07-14 05:17:35', '2025-01-07 03:13:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `province_id` bigint(20) UNSIGNED DEFAULT NULL,
  `city_id` bigint(20) UNSIGNED DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kode_pos` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `google_id`, `avatar`, `name`, `email`, `phone`, `province_id`, `city_id`, `alamat`, `kode_pos`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, 'avatars/5s4txTS7cf3tVGzRiQTVz7uLFJrxFBytAKyU2wT4.png', 'admin', 'admin@freshbeanpurwokerto.com', '+6287803280418', 10, 91, 'Jl. Wargabakti III No.61, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', '16952', '2024-07-11 01:48:29', '$2y$12$H6EhgBiM43wVxoSSQjGEQuzO9O0hEb0bD/9Pt9eZRezwyXNSjAtx.', 'lCpBpBzPPX3yGZUiDe1b7TQ77uHudws9JOzwBbqMmHMJwrS1hK27Ct6aoPGt', '2024-07-11 01:48:29', '2024-08-26 07:32:46'),
(22, '106644551912174808875', NULL, 'Shahira Julyinda', 'julyindashahira@gmail.com', NULL, 6, 40, 'gbj', '34534', NULL, '$2y$12$tiruAYfcKScEGC7x69QxRuB5BVzBIUVu1UAfjoDxAHRRwHoU6uCFu', NULL, '2024-08-21 06:06:10', '2024-08-21 15:10:24'),
(23, NULL, NULL, 'Budi', 'budi@freshbeanpurwokerto.com', '087488493949', 12, 365, 'gbk', '65468', '2024-08-21 15:26:33', '$2y$12$0zaEYCHtiAVEMNxKxJ8D7Ouzr1lIJnXYRbjCkr5JiwFE7Xin9rwpq', NULL, '2024-08-21 06:31:11', '2024-08-21 06:31:11'),
(24, '110029268822437308854', 'avatars/d12D5huO1BFoZ0CVpGWeTmjnfcU5E7bltxytNSzp.jpg', 'SYAMSA SHAHIRA JULYINDA', 'julyindasyamsa@gmail.com', '087847383434', 9, 69, 'jl. gunung putri no.58', '16976', '2024-08-25 09:51:48', '$2y$12$JVBqnZtZqMkgRrVpkKd6k.1UD1NeUswUC/tdV0JXER/d2uI/vS1pi', '1SRMzka2zq7SdbrDxZ1P2eEK1rYL2FmqnAr72GtcytBu5Ibc0p6wJAeCJPyj', '2024-08-21 14:53:55', '2024-12-26 03:48:19'),
(25, NULL, NULL, 'sari', 'sari@freshbeanpurwokerto.com', '087488493949', 6, 152, 'senayan', '65468', '2024-08-21 15:26:52', '$2y$12$K97KBOGRkgWzh2T3TMbPIuiOuQdn1YXg6anmlzXTVqY9tdJ5KL9MG', NULL, '2024-08-21 15:04:41', '2024-08-21 15:04:41'),
(26, NULL, NULL, 'kevin', 'kevin@freshbeanpurwokerto.com', NULL, NULL, NULL, NULL, NULL, '2024-08-21 15:27:09', '$2y$12$2uxvwCGT1OxZ3OPGQYUElewI/2hf//isA8bsCPRolf43dgzXwc9G2', NULL, '2024-08-21 15:21:29', '2024-08-21 15:21:29'),
(33, '105954051525742225835', NULL, 'andi hermansah', 'andihermansah95@gmail.com', NULL, 1, 1, 'ggg', 'jjjj', '2024-08-25 11:57:18', '$2y$12$2Gz9HWgoBAZCeFKBFMsNb.abIlptjr8LVxEL0Vcl2wwvTpe3MKHZi', NULL, '2024-08-25 11:54:29', '2024-08-26 05:28:24'),
(36, '103870489309123444678', NULL, 'SYAMSA SHAHIRA JULYINDA', '21103078@ittelkom-pwt.ac.id', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$ONzSUjGIBS7y6i/FboXK9ubm4k.jadNYIHhUFU4WWGOoxGNAU/CTS', NULL, '2024-08-26 08:08:29', '2024-08-26 08:08:29'),
(39, '110991528972030139654', NULL, 'Kevin Anggara', 'kevinanggara10e@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$6p51XwqRhGbbf04YQt3WGOndkKuzNMrV6isfS6TiXxdVxM10X1oN6', NULL, '2024-08-26 08:42:56', '2024-08-26 08:42:56'),
(40, '108773968433870488816', NULL, 'KM6_SMKSBinaBudiLuhur', 'km6.smksbbl@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$VQjvEAX/ScRp.q4amW4cVe6.muVjDhQ3VmlOLCtV.A1Q1YCO36mP6', NULL, '2024-08-26 09:02:43', '2024-08-26 09:02:43'),
(42, NULL, NULL, 'Syamsa Julyinda', 'andi@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$itwZiwltT4tYJzEooHj.bOALEOMtRCeylu.FlWX1EWN5ZjOTteGnW', NULL, '2024-11-13 06:38:26', '2024-11-13 06:38:26'),
(44, '110220312093883461798', NULL, 'Syamsa Sj', 'syamsasj@gmail.com', NULL, NULL, NULL, NULL, NULL, '2024-11-13 07:04:19', '$2y$12$FZbn/YTD08xj/9CenNxBr.Ma3QanahqyDVhlvaw2aTEq.Uhaq/iF.', '7bIHDaMV2XgBmETdFORPYD7hJAcpcLikLB7uMrYb7leaObGoopxAGTulzv11', '2024-11-13 07:03:18', '2024-11-13 07:24:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `varians`
--

CREATE TABLE `varians` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `varians`
--

INSERT INTO `varians` (`id`, `product_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 47, 'Biji Kopi', '2024-07-22 04:14:35', '2024-07-22 08:07:21'),
(3, 47, 'Giling', '2024-07-22 08:08:48', '2024-07-22 08:11:05'),
(4, 46, 'Giling', '2024-07-22 08:19:49', '2024-07-22 08:19:49'),
(5, 46, 'Biji Kopi', '2024-07-22 08:20:05', '2024-07-22 08:20:05'),
(8, 74, 'Biji Kopi', '2024-08-07 11:02:23', '2024-08-07 11:02:23'),
(9, 74, 'Giling', '2024-08-07 11:02:23', '2024-08-07 11:02:23'),
(10, 149, 'Biji Kopi', '2024-08-17 04:52:39', '2024-08-17 04:52:39'),
(11, 149, 'Giling', '2024-08-17 04:52:39', '2024-08-17 04:52:39'),
(12, 150, 'Biji Kopi', '2024-08-22 09:09:59', '2024-08-22 09:09:59'),
(13, 150, 'Giling', '2024-08-22 09:09:59', '2024-08-22 09:09:59'),
(14, 151, 'Biji Kopi', '2024-08-23 11:02:03', '2024-08-23 11:02:03'),
(15, 151, 'Giling', '2024-08-23 11:02:03', '2024-08-23 11:02:03');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `authentication_log`
--
ALTER TABLE `authentication_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `authentication_log_authenticatable_type_authenticatable_id_index` (`authenticatable_type`,`authenticatable_id`);

--
-- Indeks untuk tabel `brng_klrs`
--
ALTER TABLE `brng_klrs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brng_klrs_supplier_id_foreign` (`supplier_id`);

--
-- Indeks untuk tabel `brng_msks`
--
ALTER TABLE `brng_msks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brng_msks_supplier_id_foreign` (`supplier_id`);

--
-- Indeks untuk tabel `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_items_user_id_foreign` (`user_id`),
  ADD KEY `cart_items_product_id_foreign` (`product_id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chats_user_id_foreign` (`user_id`),
  ADD KEY `chats_receiver_id_foreign` (`receiver_id`);

--
-- Indeks untuk tabel `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cities_city_id_unique` (`city_id`);

--
-- Indeks untuk tabel `couriers`
--
ALTER TABLE `couriers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `exports`
--
ALTER TABLE `exports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exports_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `failed_import_rows`
--
ALTER TABLE `failed_import_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `failed_import_rows_import_id_foreign` (`import_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_user_id_foreign` (`user_id`),
  ADD KEY `favorites_product_id_foreign` (`product_id`);

--
-- Indeks untuk tabel `filament_menu`
--
ALTER TABLE `filament_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `imports`
--
ALTER TABLE `imports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `imports_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_no_order_unique` (`no_order`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `fk_payment_method` (`payment_method_id`);

--
-- Indeks untuk tabel `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`);

--
-- Indeks untuk tabel `order_payments`
--
ALTER TABLE `order_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_payments_order_id_foreign` (`order_id`);

--
-- Indeks untuk tabel `order_shippings`
--
ALTER TABLE `order_shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_shippings_order_id_foreign` (`order_id`),
  ADD KEY `order_shippings_courier_id_foreign` (`courier_id`);

--
-- Indeks untuk tabel `origins`
--
ALTER TABLE `origins`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_kode_unique` (`kode`),
  ADD KEY `products_origin_id_foreign` (`origin_id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indeks untuk tabel `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `provinces_province_id_unique` (`province_id`);

--
-- Indeks untuk tabel `rekomendasi_produks`
--
ALTER TABLE `rekomendasi_produks`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `stok_brngs`
--
ALTER TABLE `stok_brngs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stok_brngs_product_id_foreign` (`product_id`),
  ADD KEY `stok_brngs_supplier_id_foreign` (`supplier_id`);

--
-- Indeks untuk tabel `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tokos`
--
ALTER TABLE `tokos`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `google_id` (`google_id`);

--
-- Indeks untuk tabel `varians`
--
ALTER TABLE `varians`
  ADD PRIMARY KEY (`id`),
  ADD KEY `varians_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `authentication_log`
--
ALTER TABLE `authentication_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT untuk tabel `brng_klrs`
--
ALTER TABLE `brng_klrs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT untuk tabel `brng_msks`
--
ALTER TABLE `brng_msks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT untuk tabel `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=502;

--
-- AUTO_INCREMENT untuk tabel `couriers`
--
ALTER TABLE `couriers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `exports`
--
ALTER TABLE `exports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `failed_import_rows`
--
ALTER TABLE `failed_import_rows`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `filament_menu`
--
ALTER TABLE `filament_menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `imports`
--
ALTER TABLE `imports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=280;

--
-- AUTO_INCREMENT untuk tabel `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT untuk tabel `order_payments`
--
ALTER TABLE `order_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT untuk tabel `order_shippings`
--
ALTER TABLE `order_shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT untuk tabel `origins`
--
ALTER TABLE `origins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT untuk tabel `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `rekomendasi_produks`
--
ALTER TABLE `rekomendasi_produks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `stok_brngs`
--
ALTER TABLE `stok_brngs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tokos`
--
ALTER TABLE `tokos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `varians`
--
ALTER TABLE `varians`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `brng_klrs`
--
ALTER TABLE `brng_klrs`
  ADD CONSTRAINT `brng_klrs_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `brng_msks`
--
ALTER TABLE `brng_msks`
  ADD CONSTRAINT `brng_msks_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `cart_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_items_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `chats`
--
ALTER TABLE `chats`
  ADD CONSTRAINT `chats_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chats_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `exports`
--
ALTER TABLE `exports`
  ADD CONSTRAINT `exports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `failed_import_rows`
--
ALTER TABLE `failed_import_rows`
  ADD CONSTRAINT `failed_import_rows_import_id_foreign` FOREIGN KEY (`import_id`) REFERENCES `imports` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `imports`
--
ALTER TABLE `imports`
  ADD CONSTRAINT `imports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_payment_method` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `order_payments`
--
ALTER TABLE `order_payments`
  ADD CONSTRAINT `order_payments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `order_shippings`
--
ALTER TABLE `order_shippings`
  ADD CONSTRAINT `order_shippings_courier_id_foreign` FOREIGN KEY (`courier_id`) REFERENCES `couriers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `order_shippings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_origin_id_foreign` FOREIGN KEY (`origin_id`) REFERENCES `origins` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `stok_brngs`
--
ALTER TABLE `stok_brngs`
  ADD CONSTRAINT `stok_brngs_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stok_brngs_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `varians`
--
ALTER TABLE `varians`
  ADD CONSTRAINT `varians_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
