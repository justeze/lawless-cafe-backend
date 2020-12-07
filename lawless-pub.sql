-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2020 at 05:35 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lawless-pub`
--

-- --------------------------------------------------------

--
-- Table structure for table `histori`
--

CREATE TABLE `histori` (
  `total_harga` int(255) NOT NULL,
  `tgl_pemesanan` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `kasir` text NOT NULL,
  `tagihan` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `histori`
--

INSERT INTO `histori` (`total_harga`, `tgl_pemesanan`, `kasir`, `tagihan`, `id`) VALUES
(67100, '2020-11-10 08:10:36', 'anya', '1604995834522', 36),
(769560, '2020-11-10 08:10:44', 'anya', '1604995843464', 37),
(49500, '2020-11-15 18:45:30', 'anya', '1605465926899', 38),
(373120, '2020-11-15 19:08:41', 'anya', '1605467200520', 39),
(153120, '2020-11-15 19:10:16', 'anya', '1605467413485', 40),
(16500, '2020-11-15 19:11:00', 'kambing', '1605467458977', 41),
(1135860, '2020-11-15 19:11:31', 'kambing', '1605467489503', 42),
(96470, '2020-11-30 13:58:38', 'hahaha', '1606744708006', 43);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `kategori` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `kategori`) VALUES
(1, 'Foods'),
(2, 'Baverages');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `level`) VALUES
(1, 'admin'),
(2, 'cashier');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_produk` int(11) NOT NULL,
  `tagihan` varchar(255) NOT NULL,
  `kuantitas` int(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`id_produk`, `tagihan`, `kuantitas`, `id`) VALUES
(9, '1604995834522', 2, 54),
(10, '1604995834522', 1, 55),
(38, '1604995843464', 3, 56),
(10, '1605465926899', 3, 57),
(39, '1605467200520', 1, 58),
(40, '1605467413485', 1, 59),
(10, '1605467458977', 1, 60),
(39, '1605467489503', 3, 61),
(10, '1605467489503', 1, 62),
(10, '1606744708006', 3, 63),
(38, '1606744708006', 1, 64);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `nama_produk` text NOT NULL,
  `harga_produk` int(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `added_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `gambar_produk` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `nama_produk`, `harga_produk`, `id_kategori`, `added_at`, `gambar_produk`) VALUES
(9, 'DOGLESS dog', 61000, 2, '2020-12-07 04:18:53', 'https://craftlog.com/m/i/6196559=s1280=h960.webp'),
(10, 'dogless', 20900, 2, '2020-11-26 06:29:36', 'https://craftlog.com/m/i/6196559=s1280=h960.webp'),
(38, 'red velvet', 25000, 2, '2020-11-24 17:20:57', 'https://craftlog.com/m/i/6196559=s1280=h960.webp'),
(39, 'chicken katsu', 25000, 1, '2020-11-24 17:20:59', 'https://craftlog.com/m/i/6196559=s1280=h960.webp'),
(40, 'black forest', 13920, 1, '2020-11-24 17:21:00', 'https://craftlog.com/m/i/6196559=s1280=h960.webp');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `level_id`) VALUES
(16, 'kambing', 'lawless', '$2b$10$9P0A.dvEC49qcfzxTGAiA.tRhohMC1qBXLuqy5hwICPueXQ1tQVWO', 1),
(17, 'anya', 'bukananya', '$2b$10$a33ZAlexTcWDPbgoZew5UOBNKCpgt2Nc/PldWtNZ75hyk491F5byC', 2),
(20, 'paiz', 'maspaiz', '$2b$10$JMmObFyKs/VfHGhZRhtZM.KRwzJTJvykwoxquPd.1dPVHDYslJaWC', 2),
(26, 'bukansiapa', 'siapaya', '$2b$10$CiX1BpTwyPTdKltAOCDum.Som8RrMh1RrOnCaphg/oQ4/FqCdiAGm', 2),
(29, 'hahaha', 'bukansiapasiapa', '$2b$10$PiMqsW7jLWsyIzu3/A1wKOlbFgaQ0lMEzEK/U4GzZtmuQr3QiT0ai', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `histori`
--
ALTER TABLE `histori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `histori`
--
ALTER TABLE `histori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
