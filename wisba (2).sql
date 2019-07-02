-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2019 at 03:59 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

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
(4, '0000-00-00 00:00:00', 'Wisba', 'wisba@gmail.com1', '123456678900', '0987654334', 'ungaran1', 'Islam', 'PBB', 'ungaran', 'Ungaran', 'https://asset-a.grid.id/crop/0x0:0x0/700x465/photo/2018/08/07/2985630265.jpg', 'https://cdn.brilio.net/news/2018/05/30/143480/thumbnail-sophia-latjuba-pamer-foto-mesra-bareng-cowok-ganteng-kekasih-baru-180530l.jpg', 'https://cdn2.boombastis.com/wp-content/uploads/2018/02/Tanda-tangan-dengan-garis-bawah.jpg', '-7.1574558', '110.4204367', 'wisba', 'wisba', 'Umum'),
(5, '2019-04-28 18:26:20', 'Admin', 'admin@gmail.com ', '083838194701', '1234567891', 'Grobogan', 'Islam', 'Admin Lapangan.', 'Purwodadi Lur 1', 'Grobogan 1', 'https://asset-a.grid.id/crop/0x0:0x0/700x465/photo/2018/08/07/2985630265.jpg', 'https://cdn.brilio.net/news/2018/05/30/143480/thumbnail-sophia-latjuba-pamer-foto-mesra-bareng-cowok-ganteng-kekasih-baru-180530l.jpg', 'https://cdn2.boombastis.com/wp-content/uploads/2018/02/Tanda-tangan-dengan-garis-bawah.jpg', '-9999', '873783', 'admin', 'admin', 'Admin'),
(6, '2019-07-02 17:23:16', 'UMKM 1', 'umkm@gmail.com', '098637523672', '1762826833', 'Grobogan', 'Islam', 'Pengelola', 'Purwodadi', 'Grobogan', 'https://asset-a.grid.id/crop/0x0:0x0/700x465/photo/2018/08/07/2985630265.jpg', 'https://cdn.brilio.net/news/2018/05/30/143480/thumbnail-sophia-latjuba-pamer-foto-mesra-bareng-cowok-ganteng-kekasih-baru-180530l.jpg', 'https://cdn2.boombastis.com/wp-content/uploads/2018/02/Tanda-tangan-dengan-garis-bawah.jpg', '-7.1574558', '110.4204367', 'umkm1', '123', 'Umkm'),
(7, '2019-07-02 17:32:02', 'Batang', 'batangi@gmail.com', '098272736727', '1324534253', 'Ungaran Timur', 'Islam', 'Masayarakat Umum', 'Ungaran', 'Ungaran', 'a.grid.id/crop/0x0:0x0/700x465/photo/2018/08/07/2985630265.jpg', 'https://cdn.brilio.net/news/2018/05/30/143480/thumbnail-sophia-latjuba-pamer-foto-mesra-bareng-cowok-ganteng-kekasih-baru-180530l.jpg', 'https://cdn2.boombastis.com/wp-content/uploads/2018/02/Tanda-tangan-dengan-garis-bawah.jpg', '-7.1574558', '873783', 'batang', 'batang', 'Umum'),
(8, '2019-07-02 17:37:13', 'UMKM 2', 'umkm2@gmail.com', '092827826356', '2222331224', 'Grobogan', 'Islam', 'Pengelola', 'Purwodadi', 'Grobogan', 'https://asset-a.grid.id/crop/0x0:0x0/700x465/photo/2018/08/07/2985630265.jpg', 'https://cdn.brilio.net/news/2018/05/30/143480/thumbnail-sophia-latjuba-pamer-foto-mesra-bareng-cowok-ganteng-kekasih-baru-180530l.jpg', 'https://cdn2.boombastis.com/wp-content/uploads/2018/02/Tanda-tangan-dengan-garis-bawah.jpg', '7.1574558', '110.4204367', 'umkm2', '123', 'Umkm');

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
  `deskripsi_keluhan` varchar(200) DEFAULT NULL,
  `jenis_keluhan` varchar(100) DEFAULT NULL,
  `lat_keluhan` varchar(100) DEFAULT NULL,
  `long_keluhan` varchar(100) DEFAULT NULL,
  `like_keluhan` varchar(100) DEFAULT NULL,
  `dislike_keluhan` varchar(100) DEFAULT NULL,
  `status_keluhan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wisba_keluhan`
--

INSERT INTO `wisba_keluhan` (`id_keluhan`, `id_account`, `registered`, `gambar_keluhan`, `face_pelaporan_keluhan`, `nama_keluhan`, `deskripsi_keluhan`, `jenis_keluhan`, `lat_keluhan`, `long_keluhan`, `like_keluhan`, `dislike_keluhan`, `status_keluhan`) VALUES
(4, 4, '2019-06-08 21:29:43', 'https://cdn2.tstatic.net/jateng/foto/bank/images/pantai-muararejo-satu-di-antara-wisata-pesisir-di-kandeman-batang_20180810_222614.jpg', 'https://assets-a1.kompasiana.com/items/album/2018/11/21/foto-pria-ganteng-indonesia-21-5bf5756faeebe169634adeb4.jpg?t=o&v=800', 'Pengembangan Objek Wisata Pantai Kandeman Batang Hadapi Kendala', 'engembangan sektor wisata di Kecamatan Kandeman Kabupaten Batang, terutama di pesisir utara hadapi kendala. Pengembangan itu terkendala beberapa wilayah yang dimiliki oleh perorangan.', 'Wisata', '-7.15844', '110.42014833333333', '3', '5', 'Publikasi'),
(6, 4, '2019-06-08 21:45:22', 'https://cdn1-production-images-kly.akamaized.net/oP2BThSeSeTLo03LKfSUbAUAagg=/640x360/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/2161310/original/042892200_1525582612-pagilaran3.jpg', 'https://assets-a1.kompasiana.com/items/album/2018/11/21/foto-pria-ganteng-indonesia-21-5bf5756faeebe169634adeb4.jpg?t=o&v=800', 'Aksesibilitas dan Amenitas Jadi PR Besar Pariwisata Kabupaten Batang', 'Kabupaten Batang Jawa Tengah kini sedang berbenah menjadi salah satu destinasi yang banyak dikunjungi wisatawan di Pulau Jawa. Dalam pertemuan Forum Wartawan Pariwisata (Forwapar) di Pendopo Alun-alun', 'Wisata', '-7.15844', '110.42014833333333', '2', '2', 'Publikasi'),
(7, 4, '2019-06-08 21:48:44', 'http://www.rmoljateng.com/images/berita/2019/03/835207_02144313032019_IMG-20190305-WA0030-650x320.jpg', 'https://assets-a1.kompasiana.com/items/album/2018/11/21/foto-pria-ganteng-indonesia-21-5bf5756faeebe169634adeb4.jpg?t=o&v=800', 'Keluhan Dari Penyandang Disabilitas Dari Batang', ' Pada Ganjar, Peko meminta bantuan kepada Ganjar berupa mesin kompresor dan mesin amplas untuk mendukung produksinya membuat mobil-mobilan dari kayu itu, digunakan untuk para Penyandang Disabelitas .', 'Umum', '-7.15844', '110.42014833333333', '0', '0', 'Publikasi'),
(8, 4, '2019-06-08 21:48:58', 'http://files.kajanglako.com/images/uploads/kj-gambar-20190125_L11sxm.jpg', 'https://assets-a1.kompasiana.com/items/album/2018/11/21/foto-pria-ganteng-indonesia-21-5bf5756faeebe169634adeb4.jpg?t=o&v=800', 'Wisata Negeri Atas Awan Batang Asai Minim Fasilitas', 'Sayangnya, minimnya fasilitas di destinasi wisata Bukit Tempurung masih menjadi keluhan warga yang berkunjung. Seperti akses jalan dan tempat persinggahan.Mensiasati minimnya fasilitas yang tersedia, ', 'Wisata', '-7.15844', '110.42014833333333', '0', '0', 'Pending'),
(9, 4, '2019-06-08 21:52:18', 'https://storage.lapor.go.id/app/uploads/public/5cf/a4a/93c/5cfa4a93c7cab692696480.jpg', 'https://assets-a1.kompasiana.com/items/album/2018/11/21/foto-pria-ganteng-indonesia-21-5bf5756faeebe169634adeb4.jpg?t=o&v=800', 'Tarif Parkir Pantai Sigandu', 'Saya benar atau salah ini. kok saya di gas sama tukang parkirnya. di kertas parkir gambarnya 3 rb tapi di coret spidol jadi 5 ribu. terus saya inisiatif uang 2 rb saya coret pakai spidol jadi 4 ribu t', 'Wisata', '-7.15844', '110.42014833333333', '0', '0', 'Pending'),
(10, 4, '2019-06-08 21:54:33', 'https://asset.kompas.com/crop/15x54:770x557/750x500/data/photo/2019/02/24/1104711726.jpeg', 'https://assets-a1.kompasiana.com/items/album/2018/11/21/foto-pria-ganteng-indonesia-21-5bf5756faeebe169634adeb4.jpg?t=o&v=800', 'Akses Destinasi Pariwisata', 'Sore Yth.Bapak Bupati Batang\r\n\r\nAlhamdulillah pembahasan masterplan Visit Batang Years 2022 sudah dipersiapkan dengan sangat apik, dan kami yakin akan menjadi terobosan yang sangat positif bagi Kabupa', 'Wisata', '-7.15844', '110.42014833333333', '0', '0', 'Pending'),
(11, 4, '2019-06-08 22:00:17', 'https://storage.lapor.go.id/app/uploads/public/5d1/ae9/efd/5d1ae9efd6ac0395113248.jpg', 'https://assets-a1.kompasiana.com/items/album/2018/11/21/foto-pria-ganteng-indonesia-21-5bf5756faeebe169634adeb4.jpg?t=o&v=800', 'Selokan tersumbat', 'selokan utama di jl. muharto 44 kota malang-jawa timur (depan gang 10b {digoogle map depan gg 8}, 3 rumah sebelah timur masjid darussalam) tersumbat, sehingga airnya sering meluap keluar dan merusak a', 'Wisata', '-7.15844', '110.42014833333333', '1', '0', 'Publikasi');

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
(2, NULL, '2019-07-01 20:28:05', 'Toko Roti Strowbery ', 'http://www.bdcpangandaran.com/gambar/artikel/artikel-3-tips-sukses-membangun-bisnis-ukm-3-l.jpg', 'Batang', '1 km', '-7.15844', '110.420141', 'https://miro.medium.com/max/700/1*-pT1yhxssQzmTRqKMsjrzg.png', 'https://miro.medium.com/max/700/1*-pT1yhxssQzmTRqKMsjrzg.png', 'Toko Roti Strowbery  enak, bagi teman-teman yang habis dari batang wajib membeli strowberry ini sebagai oleh. .', '20', '15', 'Umum', 'Terverifikasi'),
(3, NULL, '2019-07-01 20:28:26', 'Penggilingan Daging Kasidi ', 'https://faktualnews.co/images/2019/03/IMG_20190323_100213.jpg', 'Batang', '2 km', '-7.003349', '109.809679', 'https://miro.medium.com/max/700/1*-pT1yhxssQzmTRqKMsjrzg.png', 'https://miro.medium.com/max/700/1*-pT1yhxssQzmTRqKMsjrzg.png', 'Penggilingan Daging Kasidi, penggilingan daging ini sangat cepat dalam proses pengerjaan jadi bagi teman\" yang mau menunggu bisa langsung ditempat penggilingan langsung jadi.', '11', '11', 'Umum', 'Belum Terverifikasi'),
(4, NULL, '2019-07-02 17:55:28', 'Kacang Asin 77', 'https://www.haloinvestasi.com/wp-content/uploads/2019/02/shutterstock_1273786594-Copy-300x217.jpg', 'Batang', '2 km', '-7.15844', '110.420141', 'https://miro.medium.com/max/700/1*-pT1yhxssQzmTRqKMsjrzg.png', 'https://miro.medium.com/max/700/1*-pT1yhxssQzmTRqKMsjrzg.png', 'Kacang Asin 77 Mantap. Merupakan kecap paling top dikota batang sebagai pendamping ibuk-ibuk ketika masak buat keluarga.', '1', '1', 'Umum', 'Terverifikasi'),
(5, NULL, '2019-07-02 17:55:44', 'BATAM SARI', 'https://image.cermati.com/f_auto,q_70/dvcte7w7sp3mk2jd1w9y', 'Batang', '3 km', '-7.15844', '110.420148', 'https://miro.medium.com/max/700/1*-pT1yhxssQzmTRqKMsjrzg.png', 'https://miro.medium.com/max/700/1*-pT1yhxssQzmTRqKMsjrzg.png', 'BATAM SARI Oke Enak. warung ini menyediakan beraneka ragam roti-roti yang beraneka rasa dan enak tentunya.', '1', '1', 'Umum', 'Belum Terverifikasi'),
(6, NULL, '2019-07-02 18:00:41', 'Permata Bakery', 'https://i0.wp.com/gandengtangan.co.id/blog/wp-content/uploads/2018/10/pasar.jpg?fit=750%2C500&ssl=1', 'Batang', '2  km', '-7.15844', '110.420143', 'https://miro.medium.com/max/700/1*-pT1yhxssQzmTRqKMsjrzg.png', 'https://miro.medium.com/max/700/1*-pT1yhxssQzmTRqKMsjrzg.png', 'Permata Bakery yang Terbaik tempat dagang roti terbaik di wilayah batang kota. dan teman-teman harus mencobanya. .', '2', '1', 'Umum', 'Terverifikasi');

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
  MODIFY `id_account` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wisba_keluhan`
--
ALTER TABLE `wisba_keluhan`
  MODIFY `id_keluhan` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
