-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2025 at 03:59 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_suaraqita`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id_admin` int(11) NOT NULL,
  `name__admin` varchar(255) NOT NULL,
  `username__admin` varchar(128) NOT NULL,
  `password__admin` varchar(255) NOT NULL,
  `id_role` int(11) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id_admin`, `name__admin`, `username__admin`, `password__admin`, `id_role`, `is_active`) VALUES
(1, 'Administrator', 'admin', 'admin123', 1, 1),
(2, 'Taufikk', 'taufik123', '12345', 3, 1),
(7, 'dimas', 'dimas123', '112233', 3, 1),
(8, 'RRI SUMENEP', 'rri', '12345678', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `judul_berita` varchar(225) NOT NULL,
  `isi_berita` text NOT NULL,
  `foto_berita` varchar(225) NOT NULL,
  `tgl_berita` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `judul_berita`, `isi_berita`, `foto_berita`, `tgl_berita`) VALUES
(9, 'Siaran RRI Pro 1 – HALLO RRI ', 'RRI Pro 1 menghadirkan HALLO RRI, sebuah program interaktif yang menjadi jembatan komunikasi antara masyarakat dan pemerintah. Melalui siaran ini, pendengar dapat menyampaikan aspirasi, keluhan, serta mendapatkan informasi terkini yang relevan dengan kehidupan sehari-hari.\r\n\r\nDengan format dialog interaktif, liputan langsung, serta analisis mendalam, HALLO RRI berperan sebagai kanal informasi yang akurat, terpercaya, dan solutif. Program ini juga menghadirkan narasumber kompeten, mulai dari pejabat pemerintah, pakar, hingga perwakilan masyarakat untuk membahas isu-isu hangat secara terbuka dan transparan.', '8ca98fc6fe2cbee556ea9dedb3ded291.jpg', '2025-02-03'),
(11, 'Siaran RRI Pro 1 – HALLO RRI', 'RRI Pro 1 menghadirkan HALLO RRI, sebuah program interaktif yang menjadi jembatan komunikasi antara masyarakat dan pemerintah. Melalui siaran ini, pendengar dapat menyampaikan aspirasi, keluhan, serta mendapatkan informasi terkini yang relevan dengan kehidupan sehari-hari.\r\n\r\nDengan format dialog interaktif, liputan langsung, serta analisis mendalam, HALLO RRI berperan sebagai kanal informasi yang akurat, terpercaya, dan solutif. Program ini juga menghadirkan narasumber kompeten, mulai dari pejabat pemerintah, pakar, hingga perwakilan masyarakat untuk membahas isu-isu hangat secara terbuka dan transparan.', 'ffcd3b9ce768d512c31ee144439afe4a.jpg', '2025-02-03'),
(13, 'Siaran RRI Pro 1 – HALLO RRI', 'RRI Pro 1 menghadirkan HALLO RRI, sebuah program interaktif yang menjadi jembatan komunikasi antara masyarakat dan pemerintah. Melalui siaran ini, pendengar dapat menyampaikan aspirasi, keluhan, serta mendapatkan informasi terkini yang relevan dengan kehidupan sehari-hari.\r\n\r\nDengan format dialog interaktif, liputan langsung, serta analisis mendalam, HALLO RRI berperan sebagai kanal informasi yang akurat, terpercaya, dan solutif. Program ini juga menghadirkan narasumber kompeten, mulai dari pejabat pemerintah, pakar, hingga perwakilan masyarakat untuk membahas isu-isu hangat secara terbuka dan transparan.', 'd1136899098bcc666f837e98949af208.jpg', '2025-02-03');

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(11) NOT NULL,
  `foto_galeri` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `foto_galeri`) VALUES
(15, 'b825dfaae9a7d3464bd7b7b9cab145b7.jpg'),
(16, 'd44a5cf4c61d8e16321f2f11ea106059.jpg'),
(17, 'db2d2644ebba044699fc13440461628f.jpg'),
(19, 'd4055078e30451f7366efada4f4a96da.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Sosial'),
(3, 'Infrastruktur'),
(5, 'Kesehatan');

-- --------------------------------------------------------

--
-- Table structure for table `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id_pengaduan` int(11) NOT NULL,
  `tgl_pengaduan` date NOT NULL,
  `id_user` int(11) NOT NULL,
  `isi_laporan` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` enum('0','proses','selesai','tolak') NOT NULL,
  `rating` enum('0','tidak puas','puas','sangat puas') NOT NULL,
  `id_kategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengaduan`
--

INSERT INTO `pengaduan` (`id_pengaduan`, `tgl_pengaduan`, `id_user`, `isi_laporan`, `foto`, `status`, `rating`, `id_kategori`) VALUES
(24, '2023-01-18', 6, 'Jalan Jelek', 'cda52ff71d8408bf7029a8fca8cd2c85.jpg', 'selesai', 'sangat puas', 3),
(25, '2023-01-18', 6, 'Duit hilang', '21fff8231279ae05e31c1e0b6064dab5.jpeg', 'tolak', '0', 1),
(26, '2023-01-25', 6, 'tes', 'e3f8996604e127714928039c2058d838.png', 'proses', '0', 1),
(27, '2023-02-02', 17, 'macet dijalan kota', 'd30efa1ae695d266ec10bc750da8ca03.jpg', '0', '0', 1),
(28, '2023-02-06', 18, 'fjf', '1bde1aecc863ec69fe45f76324ac76e9.jpg', 'proses', '0', 1),
(29, '2023-02-06', 18, 'sayw', 'e4d7784e5d5622da18f7ea3eefbfd255.jpg', 'tolak', '0', 3),
(30, '2023-02-09', 19, 'tolong jalan depan rumah saya rusak', '4bf64eb008c81e97cbd00da1fb2eb938.jpg', 'selesai', 'sangat puas', 3),
(32, '2025-02-03', 20, 'jskjsjnsjsolsks', 'ad5b66e0ef5ee6b0c36f817e5e8146e4.jpg', 'selesai', 'sangat puas', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tanggapan`
--

CREATE TABLE `tanggapan` (
  `id_tanggapan` int(11) NOT NULL,
  `id_pengaduan` int(11) NOT NULL,
  `tgl_tanggapan` date NOT NULL,
  `tanggapan` text NOT NULL,
  `id_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tanggapan`
--

INSERT INTO `tanggapan` (`id_tanggapan`, `id_pengaduan`, `tgl_tanggapan`, `tanggapan`, `id_admin`) VALUES
(11, 24, '2023-01-18', 'Okee shaap', 2),
(12, 25, '2023-01-23', 'Tidak sesuai', 2),
(13, 26, '2023-01-25', 'oke', 2),
(14, 28, '2023-02-06', 'okee', 2),
(15, 30, '2023-02-09', 'baik kami proses', 2),
(16, 29, '2023-02-09', 'tidak valid', 2),
(17, 32, '2025-02-03', 'segera di tindak', 8);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `name__user` varchar(255) NOT NULL,
  `email__user` varchar(128) NOT NULL,
  `username__user` varchar(128) NOT NULL,
  `nik__user` int(16) NOT NULL,
  `no_telepon` varchar(13) NOT NULL,
  `password__user` varchar(255) NOT NULL,
  `id_role` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `name__user`, `email__user`, `username__user`, `nik__user`, `no_telepon`, `password__user`, `id_role`, `is_active`, `date_created`) VALUES
(6, 'Taufik Nurhidayat', 'taufik@gmail.com', 'taufik2037', 1811122, '082186687337', '$2y$10$iwZDlNksLC.SRoQFKDFzm.Pk7E8Ey0RXs4iuFb8AUNUnXj5u4UYmi', 2, 1, '2022-12-08'),
(17, 'tono', 'tono@gmail.com', 'tono123', 2147483647, '0821887788', '$2y$10$3J/zlc5f2HsJJWEDJjucluQ24CId4D/P8HxbSPnvHTBk1A1fzYHR.', 2, 1, '2023-01-10'),
(18, 'taufik', 'taufik.mesuji@gmail.com', 'taufik11', 5353535, '086666', '$2y$10$O4..bQgsfGd5QBUhHnyrQukLShVbwE1zbvz1wKyaQxT.QkbiauoT2', 2, 1, '2023-02-06'),
(19, 'taufik nur', 'taufik123@gmail.com', 'taufik37', 2147483647, '082186687337', '$2y$10$1dA/a20Rz8TrDQsEKBXnTeYWdT003zcDixYyNYxy/gGYD93iwAx3.', 2, 1, '2023-02-09'),
(20, 'Mustamik', 'ajaamik7@gmail.com', 'mustamik', 223444, '083115585838', '$2y$10$kZmLh6h.U02J2CC1lfalZ.T0F.tyNGPmsdLg99NU8VfoyoXgaWm9u', 2, 1, '2025-02-03');

-- --------------------------------------------------------

--
-- Table structure for table `users_role`
--

CREATE TABLE `users_role` (
  `id_role` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_role`
--

INSERT INTO `users_role` (`id_role`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member'),
(3, 'Petugas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id_admin`),
  ADD KEY `id_role` (`id_role`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`),
  ADD KEY `id_user` (`id_user`) USING BTREE,
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD PRIMARY KEY (`id_tanggapan`),
  ADD KEY `id_pengaduan` (`id_pengaduan`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_role` (`id_role`);

--
-- Indexes for table `users_role`
--
ALTER TABLE `users_role`
  ADD PRIMARY KEY (`id_role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id_pengaduan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tanggapan`
--
ALTER TABLE `tanggapan`
  MODIFY `id_tanggapan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users_role`
--
ALTER TABLE `users_role`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `users_role` (`id_role`);

--
-- Constraints for table `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD CONSTRAINT `pengaduan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `pengaduan_ibfk_2` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`);

--
-- Constraints for table `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD CONSTRAINT `tanggapan_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `admins` (`id_admin`),
  ADD CONSTRAINT `tanggapan_ibfk_2` FOREIGN KEY (`id_pengaduan`) REFERENCES `pengaduan` (`id_pengaduan`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `users_role` (`id_role`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
