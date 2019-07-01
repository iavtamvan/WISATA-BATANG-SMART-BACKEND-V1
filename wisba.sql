-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2019 at 05:01 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wisba`
--

-- --------------------------------------------------------

--
-- Table structure for table `wisba_account`
--

CREATE TABLE `wisba_account` (
  `id_account` int(4) NOT NULL,
  `registered` datetime DEFAULT CURRENT_TIMESTAMP,
  `nama_account` varchar(100) DEFAULT NULL,
  `email_account` varchar(100) DEFAULT NULL,
  `no_hp_account` varchar(100) DEFAULT NULL,
  `nik_account` varchar(100) DEFAULT NULL COMMENT 'update UMKM',
  `alamat_account` varchar(100) DEFAULT NULL COMMENT 'update UMKM',
  `agama_account` varchar(100) DEFAULT NULL COMMENT 'update UMKM',
  `jabatan_account` varchar(100) DEFAULT NULL COMMENT 'update UMKM',
  `kota_account` varchar(100) DEFAULT NULL COMMENT 'update UMKM',
  `kab_account` varchar(100) DEFAULT NULL COMMENT 'update UMKM',
  `foto_front_account` text,
  `foto_back_account` text,
  `ttd_account` text,
  `lat_account` varchar(100) DEFAULT NULL,
  `long_account` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `status_account` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wisba_account`
--

INSERT INTO `wisba_account` (`id_account`, `registered`, `nama_account`, `email_account`, `no_hp_account`, `nik_account`, `alamat_account`, `agama_account`, `jabatan_account`, `kota_account`, `kab_account`, `foto_front_account`, `foto_back_account`, `ttd_account`, `lat_account`, `long_account`, `username`, `password`, `status_account`) VALUES
(1, '2019-04-28 16:33:04', 'IAV Tamvan', 'IAV Tamvan', 'IAV Tamvan', 'IAV Tamvan', 'IAV Tamvan', 'IAV Tamvan', 'IAV Tamvan', 'IAV Tamvan', 'IAV Tamvan', 'IAV Tamvan', 'IAV Tamvan', 'IAV Tamvan', 'IAV Tamvan', 'IAV Tamvan', 'iavt', '123', 'Umum'),
(4, '2019-04-28 17:51:36', 'iav@iav.com', 'Ade Fajr Ariav', '083838191709', NULL, NULL, NULL, NULL, NULL, NULL, 'https://asset-a.grid.id/crop/0x0:0x0/700x465/photo/2018/08/07/2985630265.jpg', 'https://cdn.brilio.net/news/2018/05/30/143480/thumbnail-sophia-latjuba-pamer-foto-mesra-bareng-cowok-ganteng-kekasih-baru-180530l.jpg', 'https://cdn2.boombastis.com/wp-content/uploads/2018/02/Tanda-tangan-dengan-garis-bawah.jpg', '-7.1574558', '110.4204367', 'iav', '123', 'Umum'),
(5, '2019-04-28 18:26:20', 'Khoirul Huda', 'huda@gmail.com', '083838194709', NULL, NULL, NULL, NULL, NULL, NULL, 'https://asset-a.grid.id/crop/0x0:0x0/700x465/photo/2018/08/07/2985630265.jpg', 'https://cdn.brilio.net/news/2018/05/30/143480/thumbnail-sophia-latjuba-pamer-foto-mesra-bareng-cowok-ganteng-kekasih-baru-180530l.jpg', 'https://cdn2.boombastis.com/wp-content/uploads/2018/02/Tanda-tangan-dengan-garis-bawah.jpg', '-9999', '873783', 'huda', '123', 'Umum');

-- --------------------------------------------------------

--
-- Table structure for table `wisba_keluhan`
--

CREATE TABLE `wisba_keluhan` (
  `id_keluhan` int(4) NOT NULL,
  `id_account` int(4) DEFAULT NULL,
  `registered` datetime DEFAULT CURRENT_TIMESTAMP,
  `gambar_keluhan` text,
  `face_pelaporan_keluhan` text,
  `nama_keluhan` varchar(200) DEFAULT NULL,
  `deskripsi_keluhan` text,
  `jenis_keluhan` varchar(100) DEFAULT NULL,
  `lat_keluhan` varchar(100) DEFAULT NULL,
  `long_keluhan` varchar(100) DEFAULT NULL,
  `like_keluhan` varchar(100) DEFAULT '0',
  `dislike_keluhan` varchar(100) DEFAULT '0',
  `status_keluhan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wisba_keluhan`
--

INSERT INTO `wisba_keluhan` (`id_keluhan`, `id_account`, `registered`, `gambar_keluhan`, `face_pelaporan_keluhan`, `nama_keluhan`, `deskripsi_keluhan`, `jenis_keluhan`, `lat_keluhan`, `long_keluhan`, `like_keluhan`, `dislike_keluhan`, `status_keluhan`) VALUES
(1, 4, '2019-05-05 22:45:45', 'Itag', 'Itag', 'Itag', 'Itag', 'Itag', 'Itag', 'Itag', '0', '0', 'Pending'),
(17, 4, '2019-06-08 23:29:29', 'https://nyero.id/wp-content/uploads/2018/01/Tempat-Wisata-di-Magelang-Terbaru-758x468.png', 'https://assets-a1.kompasiana.com/items/album/2018/11/21/foto-pria-ganteng-indonesia-21-5bf5756faeebe169634adeb4.jpg?t=o&v=800', 'Esty mengeluh karena macet, apa tanggapan pemerintah ?', 'Seperti saat wisatawan menuju obyek wisata pada saat libur Lebaran dan anak sekolah pasti terkena macet. Kemudian, tempatnya banyak sampah-sampah bertebaran dan merusak pemandangan, ditambah toiletny', 'Wisata', '-7.15844', '110.42014833333333', '3', '0', 'Publikasi'),
(18, 4, '2019-06-08 23:41:00', 'https://nyero.id/wp-content/uploads/2018/01/Tempat-Wisata-di-Magelang-Terbaru-758x468.png', 'https://assets-a1.kompasiana.com/items/album/2018/11/21/foto-pria-ganteng-indonesia-21-5bf5756faeebe169634adeb4.jpg?t=o&v=800', 'Keluhan Pemerintah Harus segera di tndak lanjuti', 'Tidak hanya masyarakat, tapi wisatawan juga harus memiliki kesadaran. Tahun lalu ya, habis Libur Lebaran itu Tol Cipali banyak sampah sudah kayak apa saja. Sampah-sampah itu bisa dari pemudik dan jug', 'Wisata', '-7.15844', '110.42014833333333', '0', '0', 'Publikasi'),
(19, 4, '2019-06-09 00:15:58', 'https://nyero.id/wp-content/uploads/2018/01/Tempat-Wisata-di-Magelang-Terbaru-758x468.png', 'https://assets-a1.kompasiana.com/items/album/2018/11/21/foto-pria-ganteng-indonesia-21-5bf5756faeebe169634adeb4.jpg?t=o&v=800', 'Macet menjadi biang utamanya', 'Soal macet, Esthy memberikan solusi. Jika misalnya di suatu daerah ada tempat wisata yang terkenal, bisa dipastikan kemacetan akan terjadi. Lebih baik, datangi dulu objek wisata lainnya baru kemudian ', 'Wisata', '-7.1533475', '110.4243976', '0', '0', 'Publikasi'),
(20, 4, '2019-06-09 00:20:58', 'https://nyero.id/wp-content/uploads/2018/01/Tempat-Wisata-di-Magelang-Terbaru-758x468.png', 'https://assets-a1.kompasiana.com/items/album/2018/11/21/foto-pria-ganteng-indonesia-21-5bf5756faeebe169634adeb4.jpg?t=o&v=800', 'Toilet umum yang kurang memadahi', 'Untuk toilet, Kementerian Pariwisata serta Kementerian PU-Pera dan BTN sudah menandatangani kesepakatan kerja sama soal program toilet pariwisata. Jadi akan ada program membuat toilet pariwisata untuk', 'Wisata', '-7.1533475', '110.4243976', '0', '0', 'Publikasi'),
(21, 4, '2019-06-09 00:22:52', 'https://nyero.id/wp-content/uploads/2018/01/Tempat-Wisata-di-Magelang-Terbaru-758x468.png', 'https://assets-a1.kompasiana.com/items/album/2018/11/21/foto-pria-ganteng-indonesia-21-5bf5756faeebe169634adeb4.jpg?t=o&v=800', 'Penambahan jalan TOL lebih baik Ujar Pemerintahan', 'Untuk dapat merealisasi upaya itu, perlu ada dukungan infrastruktur yang memadai seperti penambahan jalan tol penghubung destinasi wisata Bali Utara dengan Bali selatan sehingga wisatawan dengan cepa', 'Wisata', '-7.1533475', '110.4243976', '1', '0', 'Publikasi'),
(22, 4, '2019-06-09 00:32:13', 'https://nyero.id/wp-content/uploads/2018/01/Tempat-Wisata-di-Magelang-Terbaru-758x468.png', 'https://assets-a1.kompasiana.com/items/album/2018/11/21/foto-pria-ganteng-indonesia-21-5bf5756faeebe169634adeb4.jpg?t=o&v=800', 'Wisata yang berada di Kabupaten juga dibenahi.', 'Saya meyakini setiap kabupaten memiliki keunikan tersendiri, ciri khas dan perbedaan masing-masing sehingga kami mengembangkan desa wisata dimasing-masing daerah,\"', 'Wisata', '-7.1630113', '110.4256514', '0', '0', 'Pending'),
(23, 4, '2019-06-15 20:55:46', 'http://devlop.can.web.id/uploads/client_profile_images/3/1560606945571.jpg', 'https://assets-a1.kompasiana.com/items/album/2018/11/21/foto-pria-ganteng-indonesia-21-5bf5756faeebe169634adeb4.jpg?t=o&v=800', '', '/storage/emulated/0/Pictures/1560606945571.jpg', 'Wisata', '-7.1583924', '110.4200156', '0', '0', 'Pending'),
(24, 4, '2019-06-15 21:05:48', 'http://devlop.can.web.id/uploads/client_profile_images/3/wisba_20190615_210511.jpg', 'http://devlop.can.web.id/uploads/client_profile_images/3/1560607546419.jpg', 'senyumnya patah', '/storage/emulated/0/Pictures/1560607546419.jpg', 'Wisata', '-7.1583924', '110.4200156', '0', '0', 'Pending'),
(25, 4, '2019-07-01 08:46:37', 'http://devlop.can.web.id/uploads/client_profile_images/3/wisba_20190701_084612.jpg', 'http://devlop.can.web.id/uploads/client_profile_images/3/1561945597342.jpg', '/storage/emulated/0/wisba_keluhan/wisba_20190701_084612.jpg', 'jkl', 'Wisata', '-7.1584046', '110.4200199', '7', '5', 'Publikasi');

-- --------------------------------------------------------

--
-- Table structure for table `wisba_umkm`
--

CREATE TABLE `wisba_umkm` (
  `id_umkm` int(4) NOT NULL,
  `id_account` int(4) DEFAULT NULL,
  `registered` datetime DEFAULT CURRENT_TIMESTAMP,
  `nama_umkm` varchar(100) DEFAULT NULL,
  `gambar_thumbnail_umkm` text,
  `alamat_umkm` text,
  `jarak_umkm` varchar(50) DEFAULT NULL,
  `lat_umkm` varchar(50) DEFAULT NULL,
  `long_umkm` varchar(50) DEFAULT NULL,
  `gambar_1_umkm` text,
  `gambar_2_umkm` text,
  `detail_deskripsi_umkm` text,
  `like_umkm` varchar(50) DEFAULT NULL,
  `dislike_umkm` varchar(50) DEFAULT NULL,
  `kategori_umkm` varchar(50) DEFAULT NULL,
  `status_umkm` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wisba_umkm`
--

INSERT INTO `wisba_umkm` (`id_umkm`, `id_account`, `registered`, `nama_umkm`, `gambar_thumbnail_umkm`, `alamat_umkm`, `jarak_umkm`, `lat_umkm`, `long_umkm`, `gambar_1_umkm`, `gambar_2_umkm`, `detail_deskripsi_umkm`, `like_umkm`, `dislike_umkm`, `kategori_umkm`, `status_umkm`) VALUES
(1, 5, '2019-07-01 11:05:42', 'Oleh Oleh Markonah', 'https', 'Di Dpan kantor Ukuka', 'aaaa', '-545', '-4565', 'aa', 'aa', 'Sanfgat Bersih dan berfaedah', 'aa', 'a', 'aa', 'Terverivikasi'),
(2, 5, '2019-07-01 13:37:15', 'Marjua Store', 'http://www.bengkulunews.co.id/wp-content/uploads/2018/11/PhotoGrid_1541497479016.jpg', 'Dibawah Pohon indang', NULL, '-545', '-656', NULL, NULL, 'Jusnya Sangaat Enak Dan rupawan', NULL, NULL, 'Oleh - Oleh', 'Terverivikasi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wisba_account`
--
ALTER TABLE `wisba_account`
  ADD PRIMARY KEY (`id_account`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email_account` (`email_account`),
  ADD UNIQUE KEY `no_hp_account` (`no_hp_account`);

--
-- Indexes for table `wisba_keluhan`
--
ALTER TABLE `wisba_keluhan`
  ADD PRIMARY KEY (`id_keluhan`),
  ADD KEY `FK_wisba_keluhan_wisba_account` (`id_account`);

--
-- Indexes for table `wisba_umkm`
--
ALTER TABLE `wisba_umkm`
  ADD PRIMARY KEY (`id_umkm`),
  ADD KEY `FK_wisba_tempat_wisba_account` (`id_account`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wisba_account`
--
ALTER TABLE `wisba_account`
  MODIFY `id_account` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wisba_keluhan`
--
ALTER TABLE `wisba_keluhan`
  MODIFY `id_keluhan` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wisba_umkm`
--
ALTER TABLE `wisba_umkm`
  MODIFY `id_umkm` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wisba_keluhan`
--
ALTER TABLE `wisba_keluhan`
  ADD CONSTRAINT `FK_wisba_keluhan_wisba_account` FOREIGN KEY (`id_account`) REFERENCES `wisba_account` (`id_account`);

--
-- Constraints for table `wisba_umkm`
--
ALTER TABLE `wisba_umkm`
  ADD CONSTRAINT `FK_wisba_tempat_wisba_account` FOREIGN KEY (`id_account`) REFERENCES `wisba_account` (`id_account`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
