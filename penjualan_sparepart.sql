-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2018 at 12:37 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan_sparepart`
--

-- --------------------------------------------------------

--
-- Table structure for table `master_barang`
--

CREATE TABLE `master_barang` (
  `kode_brg` int(10) NOT NULL,
  `nama_brg` varchar(100) NOT NULL,
  `stok` int(10) NOT NULL,
  `harga_jual` int(10) NOT NULL,
  `harga_beli` int(20) NOT NULL,
  `satuan` int(20) NOT NULL,
  `kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_barang`
--

INSERT INTO `master_barang` (`kode_brg`, `nama_brg`, `stok`, `harga_jual`, `harga_beli`, `satuan`, `kategori`) VALUES
(1, 'Lampu Depan / Refektor Depan Vario 125 / 150 eSP', 5, 640000, 600000, 1, 'Lampu Motor'),
(2, 'Mika / Kaca Speedometer Vario', 3, 87000, 70000, 1, 'Kaca Motor'),
(3, 'Spion Kiri Vario 125', 10, 38000, 20000, 1, 'Kaca Motor'),
(4, 'Sliding Shave Vario 125 Ori', 8, 135000, 100000, 1, 'Motor');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `no_faktur` int(20) NOT NULL,
  `tanggal_faktur` date NOT NULL,
  `nama_ksm` varchar(100) NOT NULL,
  `kode_brg` int(10) NOT NULL,
  `nama_brg` varchar(100) NOT NULL,
  `stok` int(10) NOT NULL,
  `jumlah` int(20) NOT NULL,
  `harga_satuan` int(20) NOT NULL,
  `harga_total` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`no_faktur`, `tanggal_faktur`, `nama_ksm`, `kode_brg`, `nama_brg`, `stok`, `jumlah`, `harga_satuan`, `harga_total`) VALUES
(111, '2018-10-17', 'Adi Satya', 1, 'Lampu Depan / Refektor Depan Vario 125 / 150 eSP', 5, 1, 640000, 640000),
(112, '2018-10-10', 'Melati Puji', 2, 'Mika / Kaca Speedometer Vario', 3, 1, 87000, 87000),
(113, '2018-10-17', 'Prasetyo', 4, 'Sliding Shave Vario 125 Ori', 8, 1, 135000, 135000),
(114, '2018-10-24', 'Dino arya', 4, 'Spion Kiri Vario 125', 10, 2, 38000, 76000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `master_barang`
--
ALTER TABLE `master_barang`
  ADD PRIMARY KEY (`kode_brg`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
