-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.33 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for absensi_siswa
CREATE DATABASE IF NOT EXISTS `absensi_siswa` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `absensi_siswa`;

-- Dumping structure for table absensi_siswa.tb_absen
CREATE TABLE IF NOT EXISTS `tb_absen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nisn` varchar(50) DEFAULT NULL,
  `tgl_absen` datetime DEFAULT NULL,
  `foto_siswa` varchar(50) DEFAULT NULL,
  `lokasi_absen` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table absensi_siswa.tb_absen: ~0 rows (approximately)
/*!40000 ALTER TABLE `tb_absen` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_absen` ENABLE KEYS */;

-- Dumping structure for table absensi_siswa.tb_siswa
CREATE TABLE IF NOT EXISTS `tb_siswa` (
  `id_siswa` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `nisn` varchar(11) COLLATE utf8mb4_bin NOT NULL,
  `absen` int(200) NOT NULL,
  PRIMARY KEY (`id_siswa`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- Dumping data for table absensi_siswa.tb_siswa: ~35 rows (approximately)
/*!40000 ALTER TABLE `tb_siswa` DISABLE KEYS */;
REPLACE INTO `tb_siswa` (`id_siswa`, `nama`, `nisn`, `absen`) VALUES
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
/*!40000 ALTER TABLE `tb_siswa` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
