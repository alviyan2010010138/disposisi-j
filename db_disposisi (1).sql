-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2024 at 01:35 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_disposisi`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_surat_masuk`
--

CREATE TABLE `tb_surat_masuk` (
  `id` int(11) NOT NULL,
  `no_surat` varchar(11) CHARACTER SET latin1 NOT NULL,
  `tgl_surat` date NOT NULL,
  `surat_from` varchar(100) CHARACTER SET latin1 NOT NULL,
  `surat_to` varchar(100) CHARACTER SET latin1 NOT NULL,
  `tgl_terima` timestamp NOT NULL DEFAULT current_timestamp(),
  `perihal` text CHARACTER SET latin1 NOT NULL,
  `keterangan` text CHARACTER SET latin1 NOT NULL,
  `image` varchar(255) CHARACTER SET latin1 NOT NULL,
  `is_active` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_surat_masuk`
--

INSERT INTO `tb_surat_masuk` (`id`, `no_surat`, `tgl_surat`, `surat_from`, `surat_to`, `tgl_terima`, `perihal`, `keterangan`, `image`, `is_active`) VALUES
(1, '01', '2024-01-15', '', '', '2024-01-15 03:12:41', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `username` varchar(64) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `role` enum('admin','sekretaris') DEFAULT 'admin',
  `last_login` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_active` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `PASSWORD`, `email`, `full_name`, `phone`, `role`, `last_login`, `is_active`) VALUES
(1, 'admin', '$2y$10$w.8z5Ag4gCaeaacuGPz7Vu75r1QbotHFbY2.tx.uqZQlvj9.Yi.oG', 'admin@gmail.com', 'admin', '0823457893', 'admin', '2024-01-14 13:35:42', 1),
(3, 'Alviyan', '$2y$10$A2ckSZtq63yZ6PL4eATpbOMni40jXpYO.kEi3gJs.cSJYwynRcoc.', 'alviyan@gmail.com', 'Alviyan ', '082352418990', 'admin', '2024-01-13 13:45:20', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_surat_masuk`
--
ALTER TABLE `tb_surat_masuk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
