-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Mar 2023 pada 14.33
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absensi_siswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_absen`
--

CREATE TABLE `tb_absen` (
  `id` int(11) NOT NULL,
  `nisn` varchar(50) DEFAULT NULL,
  `tgl_absen` datetime DEFAULT NULL,
  `foto_siswa` varchar(50) DEFAULT NULL,
  `lokasi_absen` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id_siswa` int(11) NOT NULL,
  `nama` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `nisn` varchar(11) COLLATE utf8mb4_bin NOT NULL,
  `absen` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tb_siswa`
--

INSERT INTO `tb_siswa` (`id_siswa`, `nama`, `nisn`, `absen`) VALUES
(1, 'Abubakar Adni', '3066642881', 1),
(2, 'Ahmad Ribby Aldi', '0058034275', 2),
(3, 'Andra Saputra', '0067177252', 3),
(4, 'Andreo Obelix Segah', '0052682876', 4),
(5, 'Aria Sutan Heraldi', '0052252049', 5),
(6, 'Azzahra Zaina Kharisma', '0057610367', 6),
(7, 'Dwi Putra Setiawan', '0061210368', 7),
(8, 'Fandi Nurrezky', '0063810069', 8),
(9, 'Fatur Rachman Huda', '0058042562', 9),
(10, 'Gian Al Haritz Ueldy Secondri', '0063495448', 10),
(11, 'Gilang Firdaus Rahmatullah', '0068235808', 11),
(12, 'Haikal Jailani Al Farizzy', '0062794701', 12),
(13, 'Ihsan Razhak Ramadhan', '0065594941', 13),
(14, 'Imam Ahmad Dzaki', '0062435118', 14),
(15, 'Intan Putry Naydi', '0064678798', 15),
(16, 'Kurniawan Budi Saputra', '0068231058', 16),
(18, 'Marsha Aulia Fakhriza', '0065542963', 18),
(19, 'Much Trigusni Hermawan', '0061972551', 19),
(20, 'Muhammad Arya Setya Budi', '0069284039', 20),
(21, 'Muhammad Asy Syuhada', '0069242812', 21),
(22, 'Muhammad Avesina Elfarobi Annabi', '0067341976', 22),
(23, 'Muhammad Bilal Rizwan', '0059030179', 23),
(24, 'Muhammad Farros Anand', '0066276647', 24),
(25, 'Muhammad Fauzan Mirzavickya', '0068842375', 25),
(26, 'Muhammad Qholdi Rheody', '0061499975', 26),
(27, 'Muhammad Raihan Pribadi', '0062563898', 27),
(28, 'Nabila Putri', '0069746138', 28),
(29, 'Naura Syifa Novianti', '0065990205', 29),
(30, 'Nayla Octa Syawalia', '0061477051', 30),
(31, 'Ronal Willy Saputra', '0051048467', 31),
(32, 'Satria Rajawali Ektya Antara', '0067241329', 32),
(33, 'Sherly Wulandari', '0052543482', 33),
(34, 'Stevan Andreas', '0068175222', 34),
(35, 'William', '0069347146', 35),
(36, 'M. Gatan Nazwari Azis', '0066240307', 17);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, '0', '0'),
(2, 'user', '$2y$10$HCKoA/jtSlzuSXiyoElRLuc1OLWqoea7ci6wp1tjYaVq3hOMmrM16'),
(3, 'user', '$2y$10$OIfBQxVLGaRucExISRKSO.W1fqk33FxRA6PiqdlHM6pIQNd4AWYA.'),
(4, 'haikal', '$2y$10$bUUZF9B2KOs7zb6VxyMOBuuwhpX0LW8g0dD9XXsn/cZ3XQwOC39Ne');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_absen`
--
ALTER TABLE `tb_absen`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id_siswa`) USING BTREE;

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_absen`
--
ALTER TABLE `tb_absen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
