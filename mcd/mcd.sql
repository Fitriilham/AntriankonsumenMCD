-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Jan 2024 pada 08.33
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mcd`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `antrian_mcd`
--

CREATE TABLE `antrian_mcd` (
  `id` int(11) NOT NULL,
  `waktu_kedatangan` time DEFAULT NULL,
  `selisih_kedatangan` int(11) DEFAULT NULL,
  `awal_layanan` time DEFAULT NULL,
  `selisih_pelayanan` int(11) DEFAULT NULL,
  `waktu_selesai` time DEFAULT NULL,
  `selisih_akhir` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `antrian_mcd`
--

INSERT INTO `antrian_mcd` (`id`, `waktu_kedatangan`, `selisih_kedatangan`, `awal_layanan`, `selisih_pelayanan`, `waktu_selesai`, `selisih_akhir`) VALUES
(0, '00:00:00', 0, '00:00:00', 0, '00:00:00', 0),
(2, '16:32:00', 1, '16:32:55', 2, '16:34:00', 1),
(3, '16:35:10', 3, '16:35:12', 2, '16:37:10', 3),
(4, '16:39:25', 4, '16:40:10', 1, '16:41:10', 4),
(5, '16:42:00', 3, '16:42:40', 1, '16:43:50', 2),
(6, '16:42:00', 0, '16:43:55', 1, '16:44:30', 1),
(7, '16:42:00', 0, '16:44:33', 1, '16:45:10', 1),
(8, '16:44:10', 2, '16:45:15', 1, '16:46:00', 1),
(9, '16:44:10', 0, '16:46:10', 1, '16:47:00', 1),
(10, '16:45:15', 1, '16:47:00', 0, '16:47:50', 0),
(11, '16:45:15', 0, '16:47:50', 1, '16:48:40', 1),
(12, '16:47:00', 2, '16:48:40', 1, '16:49:30', 1),
(13, '16:51:00', 4, '16:51:30', 1, '16:52:23', 3),
(14, '16:53:00', 2, '16:53:46', 2, '16:55:23', 3),
(15, '16:53:27', 0, '16:55:23', 0, '16:55:57', 0),
(16, '16:53:50', 0, '16:56:10', 2, '16:58:10', 3),
(17, '16:54:10', 1, '16:58:12', 0, '16:58:45', 0),
(18, '16:55:17', 1, '16:58:45', 1, '16:59:45', 1),
(19, '16:56:20', 1, '17:00:10', 1, '17:01:50', 2),
(20, '16:58:00', 2, '17:01:50', 1, '17:02:50', 1),
(21, '16:59:10', 1, '17:02:50', 1, '17:03:50', 1),
(22, '17:00:10', 1, '17:03:50', 1, '17:04:40', 1),
(23, '17:00:30', 0, '17:04:40', 1, '17:05:30', 1),
(24, '17:02:10', 2, '17:05:30', 1, '17:06:20', 1),
(25, '17:10:15', 8, '17:11:18', 0, '17:11:56', 5),
(26, '17:12:57', 2, '17:13:38', 1, '17:14:31', 3),
(27, '17:14:55', 2, '17:15:25', 0, '17:15:50', 1),
(28, '17:18:34', 4, '17:18:41', 1, '17:19:40', 4),
(29, '17:18:41', 0, '17:19:40', 1, '17:20:33', 1),
(30, '17:19:40', 1, '17:21:19', 1, '17:22:22', 2),
(31, '17:19:54', 0, '17:22:43', 1, '17:23:03', 1),
(32, '17:30:37', 11, '17:31:47', 1, '17:32:33', 9),
(33, '17:33:45', 3, '17:34:08', 0, '17:34:38', 1),
(34, '17:35:32', 2, '17:35:58', 1, '17:36:36', 2),
(35, '17:39:10', 4, '17:39:25', 0, '17:39:53', 3),
(36, '17:40:10', 1, '17:40:20', 0, '17:40:46', 1),
(37, '17:43:44', 3, '17:46:00', 1, '17:47:11', 7),
(38, '17:46:08', 3, '17:47:15', 1, '17:48:03', 1),
(40, '17:54:40', 6, '17:55:55', 1, '17:56:27', 7),
(41, '17:57:40', 3, '17:58:06', 0, '17:58:40', 1),
(42, '18:00:00', 3, '18:02:00', 1, '18:03:19', 5),
(43, '18:08:07', 8, '18:09:04', 0, '18:09:45', 6),
(44, '18:11:28', 3, '18:12:00', 3, '18:15:08', 6),
(45, '18:11:57', 0, '18:15:10', 0, '18:15:40', 0),
(46, '18:14:10', 3, '18:15:42', 1, '18:16:50', 1),
(47, '18:14:30', 0, '18:16:55', 1, '18:17:40', 1),
(48, '18:15:00', 1, '18:17:45', 1, '18:18:30', 1),
(49, '18:15:20', 0, '18:18:40', 1, '18:19:25', 1),
(50, '18:16:00', 1, '18:19:30', 1, '18:20:50', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `antrian_mcd`
--
ALTER TABLE `antrian_mcd`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
