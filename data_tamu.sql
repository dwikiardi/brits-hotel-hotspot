-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2024 at 05:30 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `brits-hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_tamu`
--

CREATE TABLE `data_tamu` (
  `id` int(255) NOT NULL,
  `nama_user` varchar(255) NOT NULL,
  `countryCode` varchar(255) NOT NULL,
  `nomer_telp` varchar(255) NOT NULL,
  `waktu` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_tamu`
--

INSERT INTO `data_tamu` (`id`, `nama_user`, `countryCode`, `nomer_telp`, `waktu`) VALUES
(114, 'Dwiki', '', '08133525361', '2024-07-30 08:08:33.930718'),
(115, 'admin', '', '1231312313213', '2024-07-30 08:10:57.099476'),
(116, 'Haslo', '', '258097845461312', '2024-07-30 08:12:15.447663'),
(117, 'Jodan', '', '5689741471', '2024-07-30 08:16:26.681514'),
(118, 'PA contact', '', '1234567890', '2024-07-30 08:17:41.462365'),
(119, 'Agus', '', '1234567890', '2024-07-30 08:18:41.164228'),
(120, 'Kahn', '', '9876543210', '2024-07-30 08:20:08.701584'),
(121, 'admin', '', '12313123123132', '2024-07-30 09:33:39.443446'),
(122, 'admin', '', '1231312313123123', '2024-07-30 09:33:58.014205'),
(123, 'admin', '', '13123213213213123', '2024-07-30 09:35:50.653342'),
(124, 'addasdsa', '', '312313213123213', '2024-07-30 09:36:05.569868'),
(125, 'dsasadasds', '', '3123123123123', '2024-07-30 09:36:48.554611');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_tamu`
--
ALTER TABLE `data_tamu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_tamu`
--
ALTER TABLE `data_tamu`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
