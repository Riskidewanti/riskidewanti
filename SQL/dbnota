-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2026 at 01:33 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbnota`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `ID_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `harga_satuan` int(11) NOT NULL,
  `stok` int(11) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`ID_barang`, `nama_barang`, `harga_satuan`, `stok`, `stock`) VALUES
('ABK007', 'Chicken egg sambal matah', 19000, 5, NULL),
('CBK001', 'Ice coffee milk regular', 11000, 10, NULL),
('CBK002', 'Ice coffee milk large', 13000, 8, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `NO_detail` varchar(10) NOT NULL,
  `ID_Transaksi` varchar(10) NOT NULL,
  `ID_barang` varchar(10) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`NO_detail`, `ID_Transaksi`, `ID_barang`, `qty`) VALUES
('DT001', 'BK003', 'CBK001', 2);

-- --------------------------------------------------------

--
-- Table structure for table `layanan`
--

CREATE TABLE `layanan` (
  `ID_layanan` varchar(10) NOT NULL,
  `nama_layanan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `layanan`
--

INSERT INTO `layanan` (`ID_layanan`, `nama_layanan`) VALUES
('DCBK01', 'Dine In');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `ID_Transaksi` varchar(10) NOT NULL,
  `ID_Layanan` varchar(10) NOT NULL,
  `ID_Waitress` varchar(10) NOT NULL,
  `Tanggal_pembelian` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`ID_Transaksi`, `ID_Layanan`, `ID_Waitress`, `Tanggal_pembelian`) VALUES
('BK003', 'DCBK01', 'WT001', '2025-11-09'),
('BK005', 'DCBK01', 'WT001', '2025-11-09');

-- --------------------------------------------------------

--
-- Table structure for table `waitress`
--

CREATE TABLE `waitress` (
  `ID_Waitress` varchar(10) NOT NULL,
  `nama_waitress` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `waitress`
--

INSERT INTO `waitress` (`ID_Waitress`, `nama_waitress`) VALUES
('WT001', 'Nisa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`ID_barang`);

--
-- Indexes for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`NO_detail`),
  ADD KEY `ID_Transaksi` (`ID_Transaksi`),
  ADD KEY `ID_barang` (`ID_barang`);

--
-- Indexes for table `layanan`
--
ALTER TABLE `layanan`
  ADD PRIMARY KEY (`ID_layanan`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`ID_Transaksi`),
  ADD KEY `ID_Layanan` (`ID_Layanan`),
  ADD KEY `ID_Waitress` (`ID_Waitress`);

--
-- Indexes for table `waitress`
--
ALTER TABLE `waitress`
  ADD PRIMARY KEY (`ID_Waitress`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD CONSTRAINT `detail_transaksi_ibfk_1` FOREIGN KEY (`ID_Transaksi`) REFERENCES `transaksi` (`ID_Transaksi`),
  ADD CONSTRAINT `detail_transaksi_ibfk_2` FOREIGN KEY (`ID_barang`) REFERENCES `barang` (`ID_barang`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`ID_Layanan`) REFERENCES `layanan` (`ID_layanan`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`ID_Waitress`) REFERENCES `waitress` (`ID_Waitress`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
