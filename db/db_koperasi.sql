-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2020 at 07:06 AM
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
-- Database: `db_koperasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_anggota`
--

CREATE TABLE `t_anggota` (
  `kode_anggota` char(5) NOT NULL,
  `kode_tabungan` int(11) NOT NULL,
  `nama_anggota` varchar(50) NOT NULL,
  `alamat_anggota` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `telp` varchar(12) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `status` varchar(10) NOT NULL,
  `u_entry` varchar(50) NOT NULL,
  `tgl_entri` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_anggota`
--

INSERT INTO `t_anggota` (`kode_anggota`, `kode_tabungan`, `nama_anggota`, `alamat_anggota`, `jenis_kelamin`, `pekerjaan`, `tgl_masuk`, `telp`, `tempat_lahir`, `tgl_lahir`, `status`, `u_entry`, `tgl_entri`) VALUES
('A0007', 49, 'Anggota 7', 'Alamat Ya Indonesia', 'Perempuan', 'Buruh ', '2020-12-09', '081241130522', 'Jakarta', '2019-12-31', 'keluar', 'Kang Admin', '2020-12-09'),
('A0006', 48, 'Anggota 6', 'Alamat Ya Indonesia', 'Perempuan', 'Wiraswasta', '2020-12-09', '087741130522', 'Jakarta', '2020-12-01', 'aktif', 'Kang Admin', '2020-12-09'),
('A0005', 47, 'Anggota 5', 'Alamat Ya Indonesia', '', 'Karyawan', '2020-12-09', '081241130522', 'Jakarta', '2020-06-09', 'keluar', 'Kang Admin', '2020-12-09'),
('A0004', 46, 'Anggota 4', 'Alamat Ya Indonesia', 'Laki-laki', 'Wiraswasta', '2020-12-09', '087741130500', 'Bandung', '2020-01-06', 'aktif', 'Kang Admin', '2020-12-09'),
('A0003', 45, 'Anggota 3', 'Alamat Ya Indonesia', 'Perempuan', 'Wiraswasta', '2020-12-09', '080041130522', 'Tangerang', '2020-02-10', 'aktif', 'Kang Admin', '2020-12-09'),
('A0002', 44, 'Anggota 2', 'Alamat Ya Indonesia', 'Laki-laki', 'Wiraswasta', '2020-12-09', '087741130522', 'Bandung', '2020-11-29', 'aktif', 'Kang Admin', '2020-12-09'),
('A0001', 43, 'Anggota 1', 'Alamat Ya Indonesia', 'Laki-laki', 'Wiraswasta', '2020-12-09', '082133455678', 'Jakarta', '2020-12-08', 'aktif', 'Kang Admin', '2020-12-09'),
('A0008', 50, 'Anggota 8', 'Alamat Ya Indonesia', 'Perempuan', 'Karyawan', '2020-12-09', '081241130522', 'Bandung', '2020-12-01', 'aktif', 'Kang Admin', '2020-12-09'),
('A0009', 51, 'Anggota 9', 'Alamat Ya Indonesia', 'Laki-laki', 'Karyawan', '2020-12-09', '080041130522', 'Tangerang', '2020-02-11', 'aktif', 'Kang Admin', '2020-12-09'),
('A0010', 52, 'Anggota 10', 'Alamat Ya Indonesia', 'Perempuan', 'Wiraswasta', '2020-12-09', '080041130522', 'Jakarta', '2020-12-08', 'aktif', 'Kang Admin', '2020-12-09'),
('A0011', 53, 'Anggota 20', 'Alamat Ya Indonesia', 'Perempuan', 'Karyawan', '2020-12-09', '080041130522', 'Jakarta', '2020-11-30', 'aktif', 'Kang Admin', '2020-12-09'),
('A0012', 54, 'Peminjam', 'Alamat Ya Indonesia', 'Perempuan', 'Karyawan', '2020-12-09', '087741130500', 'Jakarta', '2019-12-29', 'aktif', 'Kang Admin', '2020-12-09'),
('A0013', 55, 'iTernama Project', 'Alamat Ya Indonesia', 'Laki-laki', 'Wiraswasta', '2020-12-09', '087741130522', 'Jakarta', '2020-01-06', 'keluar', 'Kang Admin', '2020-12-09'),
('A0014', 56, 'iTernama Project', 'Alamat Ya Indonesia', 'Laki-laki', 'Wiraswasta', '2020-12-09', '082133455678', 'Jakarta', '2020-02-04', 'aktif', 'Kang Admin', '2020-12-09');

-- --------------------------------------------------------

--
-- Table structure for table `t_angsur`
--

CREATE TABLE `t_angsur` (
  `kode_angsur` int(11) NOT NULL,
  `kode_pinjam` int(11) NOT NULL,
  `angsuran_ke` int(11) NOT NULL,
  `besar_angsuran` int(11) NOT NULL,
  `denda` int(11) NOT NULL,
  `sisa_pinjam` int(11) NOT NULL,
  `kode_anggota` char(5) NOT NULL,
  `u_entry` varchar(50) NOT NULL,
  `tgl_entri` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_angsur`
--

INSERT INTO `t_angsur` (`kode_angsur`, `kode_pinjam`, `angsuran_ke`, `besar_angsuran`, `denda`, `sisa_pinjam`, `kode_anggota`, `u_entry`, `tgl_entri`) VALUES
(120, 50, 1, 27000, 0, 73000, 'A0003', 'OKtavianto', '2017-02-17'),
(119, 49, 1, 270000, 0, 730000, 'A0002', 'OKtavianto', '2017-02-17'),
(118, 48, 1, 540000, 0, 1460000, 'A0001', 'OKtavianto', '2017-02-17'),
(121, 49, 2, 270000, 0, 460000, 'A0002', 'OKtavianto', '2017-02-18'),
(122, 49, 3, 270000, 0, 190000, 'A0002', 'OKtavianto', '2017-02-18'),
(123, 49, 4, 270000, 0, -80000, 'A0002', 'OKtavianto', '2017-02-18'),
(124, 51, 1, 135000, 0, 365000, 'A0002', 'OKtavianto', '2017-02-19'),
(125, 50, 2, 27000, 0, 46000, 'A0003', 'operator', '2017-02-20'),
(126, 51, 2, 135000, 0, 230000, 'A0002', 'operator', '2017-02-20'),
(127, 48, 2, 540000, 0, 920000, 'A0001', 'OKtavianto', '2017-02-20'),
(128, 48, 3, 540000, 0, 380000, 'A0001', 'oktavianto', '2017-02-20'),
(129, 48, 4, 540000, 0, -160000, 'A0001', 'OKtavianto', '2017-02-20'),
(130, 51, 3, 135000, 0, 95000, 'A0002', 'OKtavianto', '2017-02-20'),
(131, 51, 4, 135000, 0, -40000, 'A0002', 'OKtavianto', '2017-02-20'),
(132, 50, 3, 27000, 0, 19000, 'A0003', 'OKtavianto', '2017-02-20'),
(133, 50, 4, 27000, 0, -8000, 'A0003', 'OKtavianto', '2017-02-20'),
(135, 52, 1, 33000, 0, 167000, 'A0004', 'OKtavianto', '2017-02-21'),
(144, 54, 1, 270000, 0, 730000, 'A0005', 'OKtavianto', '2017-02-22'),
(139, 52, 2, 33000, 0, 134000, 'A0004', 'operator', '2017-02-21'),
(145, 57, 1, 27000, 0, 73000, 'A0007', 'operator', '2017-02-22'),
(146, 61, 1, 1490000, 0, 5510000, 'A0002', 'Kang Admin', '2020-12-09'),
(147, 60, 1, 183333, 0, 816667, 'A0001', 'Kang Admin', '2020-12-09'),
(148, 60, 2, 183333, 0, 633334, 'A0001', 'Kang Admin', '2020-12-09'),
(149, 60, 3, 183333, 0, 450001, 'A0001', 'Kang Admin', '2020-12-09'),
(150, 63, 1, 200000, 0, 800000, 'A0008', 'Kang Admin', '2020-12-09'),
(151, 62, 1, 1490000, 0, 5510000, 'A0009', 'Kang Admin', '2020-12-09'),
(152, 65, 1, 1490000, 0, 5510000, 'A0002', 'Kang Admin', '2020-12-09'),
(153, 66, 1, 1490000, 0, 5510000, 'A0011', 'Kang Admin', '2020-12-09'),
(154, 60, 4, 183333, 0, 266668, 'A0001', 'Kang Admin', '2020-12-09'),
(155, 67, 1, 1490000, 0, 5510000, 'A0012', 'Kang Admin', '2020-12-09'),
(156, 60, 5, 183333, 0, 83335, 'A0001', 'Kang Admin', '2020-12-09'),
(157, 68, 1, 10000000, 0, 20000000, 'A0014', 'Kang Admin', '2020-12-09'),
(158, 68, 2, 10000000, 0, 10000000, 'A0014', 'Kang Admin', '2020-12-09');

-- --------------------------------------------------------

--
-- Table structure for table `t_jenis_pinjam`
--

CREATE TABLE `t_jenis_pinjam` (
  `kode_jenis_pinjam` char(5) NOT NULL,
  `nama_pinjaman` varchar(50) NOT NULL,
  `lama_angsuran` int(11) NOT NULL,
  `maks_pinjam` double NOT NULL,
  `bunga` float NOT NULL,
  `u_entry` varchar(50) NOT NULL,
  `tgl_entri` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_jenis_pinjam`
--

INSERT INTO `t_jenis_pinjam` (`kode_jenis_pinjam`, `nama_pinjaman`, `lama_angsuran`, `maks_pinjam`, `bunga`, `u_entry`, `tgl_entri`) VALUES
('P0001', 'Pinjaman Biasa', 5, 5000000, 5, '', '2020-12-09'),
('P0002', 'Pinjaman Menengah', 7, 7000000, 7, '', '2020-12-09'),
('P0003', 'Pinjaman Full', 10, 1000000, 10, '', '2020-12-09'),
('P0004', 'Pinjaman Full Exe', 30, 30000000, 30, 'Kang Admin', '2020-12-09');

-- --------------------------------------------------------

--
-- Table structure for table `t_jenis_simpan`
--

CREATE TABLE `t_jenis_simpan` (
  `kode_jenis_simpan` char(5) NOT NULL,
  `nama_simpanan` varchar(50) NOT NULL,
  `besar_simpanan` float NOT NULL,
  `u_entry` varchar(50) NOT NULL,
  `tgl_entri` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_jenis_simpan`
--

INSERT INTO `t_jenis_simpan` (`kode_jenis_simpan`, `nama_simpanan`, `besar_simpanan`, `u_entry`, `tgl_entri`) VALUES
('S0001', 'pokok', 10000, 'Kang Admin', '2017-03-09'),
('S0002', 'wajib', 15000, 'Kang Admin', '2017-04-08'),
('S0003', 'sukarela', 0, 'Kang Admin', '2017-02-15');

-- --------------------------------------------------------

--
-- Table structure for table `t_pengajuan`
--

CREATE TABLE `t_pengajuan` (
  `kode_pengajuan` int(4) NOT NULL,
  `tgl_pengajuan` date NOT NULL,
  `kode_anggota` varchar(10) NOT NULL,
  `kode_jenis_pinjam` varchar(10) NOT NULL,
  `besar_pinjam` int(11) NOT NULL,
  `tgl_acc` date NOT NULL,
  `status` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_pengajuan`
--

INSERT INTO `t_pengajuan` (`kode_pengajuan`, `tgl_pengajuan`, `kode_anggota`, `kode_jenis_pinjam`, `besar_pinjam`, `tgl_acc`, `status`) VALUES
(1, '2020-12-09', 'A0001', 'P0001', 5000000, '0000-00-00', 'menunggu'),
(2, '2020-12-09', 'A0002', 'P0002', 7000000, '2020-12-09', 'diterima'),
(3, '2020-12-09', 'A0010', 'P0001', 5000000, '0000-00-00', 'menunggu'),
(4, '2020-12-09', 'A0002', 'P0002', 7000000, '2020-12-09', 'diterima'),
(5, '2020-12-09', 'A0004', 'P0001', 5000000, '0000-00-00', 'ditolak'),
(6, '2020-12-09', 'A0006', 'P0002', 7000000, '2020-12-09', 'diterima'),
(7, '2020-12-09', 'A0008', 'P0003', 1000000, '2020-12-09', 'diterima'),
(8, '2020-12-09', 'A0009', 'P0002', 7000000, '2020-12-09', 'diterima'),
(9, '2020-12-09', 'A0011', 'P0002', 7000000, '2020-12-09', 'diterima'),
(10, '2020-12-09', 'A0012', 'P0002', 7000000, '2020-12-09', 'diterima'),
(11, '2020-12-09', 'A0014', 'P0004', 30000000, '2020-12-09', 'diterima');

-- --------------------------------------------------------

--
-- Table structure for table `t_pengambilan`
--

CREATE TABLE `t_pengambilan` (
  `kode_ambil` int(5) NOT NULL,
  `kode_anggota` varchar(10) NOT NULL,
  `kode_tabungan` int(5) NOT NULL,
  `besar_ambil` int(20) NOT NULL,
  `tgl_ambil` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_pengambilan`
--

INSERT INTO `t_pengambilan` (`kode_ambil`, `kode_anggota`, `kode_tabungan`, `besar_ambil`, `tgl_ambil`) VALUES
(25, 'A0001', 12, 0, '2020-12-09'),
(26, 'A0001', 12, 0, '2020-12-09'),
(27, 'A0001', 12, 0, '2020-12-09'),
(28, 'A0007', 0, 0, '2020-12-09'),
(29, 'A0005', 0, 0, '2020-12-09');

-- --------------------------------------------------------

--
-- Table structure for table `t_petugas`
--

CREATE TABLE `t_petugas` (
  `kode_petugas` char(5) NOT NULL,
  `nama_petugas` varchar(50) NOT NULL,
  `alamat_petugas` varchar(100) NOT NULL,
  `no_telp` varchar(12) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `u_entry` varchar(50) NOT NULL,
  `tgl_entri` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_petugas`
--

INSERT INTO `t_petugas` (`kode_petugas`, `nama_petugas`, `alamat_petugas`, `no_telp`, `jenis_kelamin`, `u_entry`, `tgl_entri`) VALUES
('P0001', 'operator', 'Alamat Indonesia', '080041130522', 'Laki-laki', 'Kang Admin', '2017-02-16'),
('P0002', 'Operator 2', 'Alamat Indonesia', '082133455678', 'Perempuan', 'Kang Admin', '2020-12-09'),
('P0003', 'Operator 4', 'Alamat Indonesia', '081241130522', 'Laki-laki', 'Kang Admin', '2020-12-09');

-- --------------------------------------------------------

--
-- Table structure for table `t_pinjam`
--

CREATE TABLE `t_pinjam` (
  `kode_pinjam` int(11) NOT NULL,
  `kode_anggota` char(5) NOT NULL,
  `kode_jenis_pinjam` char(5) NOT NULL,
  `besar_pinjam` double NOT NULL,
  `besar_angsuran` double NOT NULL,
  `lama_angsuran` int(11) NOT NULL,
  `sisa_angsuran` int(11) NOT NULL,
  `sisa_pinjaman` double NOT NULL,
  `u_entry` varchar(50) NOT NULL,
  `tgl_entri` date NOT NULL,
  `tgl_tempo` date NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_pinjam`
--

INSERT INTO `t_pinjam` (`kode_pinjam`, `kode_anggota`, `kode_jenis_pinjam`, `besar_pinjam`, `besar_angsuran`, `lama_angsuran`, `sisa_angsuran`, `sisa_pinjaman`, `u_entry`, `tgl_entri`, `tgl_tempo`, `status`) VALUES
(67, 'A0012', 'P0002', 7000000, 1490000, 7, 1, 5510000, '', '2020-12-09', '2021-02-07', 'belum lunas'),
(66, 'A0011', 'P0002', 7000000, 1490000, 7, 1, 5510000, '', '2020-12-09', '2021-02-07', 'belum lunas'),
(65, 'A0002', 'P0002', 7000000, 1490000, 7, 1, 5510000, '', '2020-12-09', '2021-02-07', 'belum lunas'),
(64, 'A0006', 'P0002', 7000000, 1490000, 7, 0, 7000000, '', '2020-12-09', '2021-01-08', 'belum lunas'),
(63, 'A0008', 'P0003', 1000000, 200000, 10, 1, 800000, '', '2020-12-09', '2021-02-07', 'belum lunas'),
(62, 'A0009', 'P0002', 7000000, 1490000, 7, 1, 5510000, '', '2020-12-09', '2021-02-07', 'belum lunas'),
(61, 'A0002', 'P0002', 7000000, 1490000, 7, 1, 5510000, '', '2020-12-09', '2021-02-07', 'belum lunas'),
(60, 'A0001', 'P0003', 1000000, 183333, 12, 5, 83335, 'Kang Admin', '2020-12-09', '2021-06-07', 'belum lunas'),
(68, 'A0014', 'P0004', 30000000, 10000000, 30, 2, 10000000, '', '2020-12-09', '2021-03-09', 'belum lunas');

-- --------------------------------------------------------

--
-- Table structure for table `t_simpan`
--

CREATE TABLE `t_simpan` (
  `kode_simpan` int(11) NOT NULL,
  `jenis_simpan` varchar(10) NOT NULL,
  `besar_simpanan` double NOT NULL,
  `kode_anggota` char(5) NOT NULL,
  `u_entry` varchar(50) NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_entri` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_simpan`
--

INSERT INTO `t_simpan` (`kode_simpan`, `jenis_simpan`, `besar_simpanan`, `kode_anggota`, `u_entry`, `tgl_mulai`, `tgl_entri`) VALUES
(189, 'sukarela', 14000, 'A0014', 'Kang Admin', '2020-12-09', '2020-12-09'),
(188, 'sukarela', 20000, 'A0001', 'Kang Admin', '2020-12-09', '2020-12-09'),
(187, 'pokok', 10000, 'A0014', 'Kang Admin', '2020-12-09', '2020-12-09'),
(185, 'pokok', 10000, 'A0012', 'Kang Admin', '2020-12-09', '2020-12-09'),
(184, 'sukarela', 15000, 'A0001', 'Kang Admin', '2020-12-09', '2020-12-09'),
(183, 'sukarela', 20000, 'A0011', 'Kang Admin', '2020-12-09', '2020-12-09'),
(182, 'wajib', 15000, 'A0011', 'Kang Admin', '2020-12-16', '2020-12-09'),
(181, 'pokok', 10000, 'A0011', 'Kang Admin', '2020-12-09', '2020-12-09'),
(180, 'sukarela', 23000, 'A0006', 'Kang Admin', '2020-12-09', '2020-12-09'),
(179, 'wajib', 15000, 'A0006', 'Kang Admin', '2020-12-16', '2020-12-09'),
(178, 'sukarela', 34000, 'A0004', 'Kang Admin', '2020-12-09', '2020-12-09'),
(177, 'wajib', 15000, 'A0004', 'Kang Admin', '2020-12-16', '2020-12-09'),
(176, 'sukarela', 13000, 'A0003', 'Kang Admin', '2020-12-09', '2020-12-09'),
(175, 'wajib', 15000, 'A0003', 'Kang Admin', '2020-12-16', '2020-12-09'),
(174, 'sukarela', 12000, 'A0002', 'Kang Admin', '2020-12-09', '2020-12-09'),
(173, 'wajib', 15000, 'A0002', 'Kang Admin', '2020-12-16', '2020-12-09'),
(172, 'sukarela', 20000, 'A0009', 'Kang Admin', '2020-12-09', '2020-12-09'),
(171, 'wajib', 15000, 'A0009', 'Kang Admin', '2020-12-16', '2020-12-09'),
(170, 'sukarela', 12000, 'A0001', 'Kang Admin', '2020-12-09', '2020-12-09'),
(169, 'wajib', 70000, 'A0001', 'Kang Admin', '2020-12-16', '2020-12-09'),
(190, 'wajib', 15000, 'A0014', 'Kang Admin', '2020-12-16', '2020-12-09');

-- --------------------------------------------------------

--
-- Table structure for table `t_tabungan`
--

CREATE TABLE `t_tabungan` (
  `kode_tabungan` int(11) NOT NULL,
  `kode_anggota` varchar(6) COLLATE latin1_general_ci NOT NULL,
  `tgl_mulai` date NOT NULL,
  `besar_tabungan` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `t_tabungan`
--

INSERT INTO `t_tabungan` (`kode_tabungan`, `kode_anggota`, `tgl_mulai`, `besar_tabungan`) VALUES
(56, 'A0014', '2020-12-09', 39000),
(54, 'A0012', '2020-12-09', 10000),
(53, 'A0011', '2020-12-09', 45000),
(12, 'A0001', '2020-12-01', 45000);

-- --------------------------------------------------------

--
-- Table structure for table `t_user`
--

CREATE TABLE `t_user` (
  `kode_user` char(5) NOT NULL,
  `kode_petugas` varchar(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `tgl_entri` date NOT NULL,
  `foto` varchar(100) NOT NULL,
  `level` char(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_user`
--

INSERT INTO `t_user` (`kode_user`, `kode_petugas`, `username`, `password`, `nama`, `tgl_entri`, `foto`, `level`) VALUES
('U0001', '', 'operator', 'operator', 'Operator Koperasi', '2020-12-09', 'I-love-you-hearts.PNG', 'operator'),
('U0002', '', 'admin', 'admin', 'Kang Admin', '2020-12-09', 'dd.jpg', 'admin'),
('U0003', '', 'operator2', 'operator2', 'Kang Operator 2', '2020-12-09', 'tidak ada', 'operator'),
('U0004', '', 'operator3', 'operator3', 'Kang Operator 3', '2020-12-09', 'tidak ada', 'operator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_anggota`
--
ALTER TABLE `t_anggota`
  ADD PRIMARY KEY (`kode_anggota`);

--
-- Indexes for table `t_angsur`
--
ALTER TABLE `t_angsur`
  ADD PRIMARY KEY (`kode_angsur`);

--
-- Indexes for table `t_jenis_pinjam`
--
ALTER TABLE `t_jenis_pinjam`
  ADD PRIMARY KEY (`kode_jenis_pinjam`);

--
-- Indexes for table `t_jenis_simpan`
--
ALTER TABLE `t_jenis_simpan`
  ADD PRIMARY KEY (`kode_jenis_simpan`);

--
-- Indexes for table `t_pengajuan`
--
ALTER TABLE `t_pengajuan`
  ADD PRIMARY KEY (`kode_pengajuan`);

--
-- Indexes for table `t_pengambilan`
--
ALTER TABLE `t_pengambilan`
  ADD PRIMARY KEY (`kode_ambil`);

--
-- Indexes for table `t_petugas`
--
ALTER TABLE `t_petugas`
  ADD PRIMARY KEY (`kode_petugas`);

--
-- Indexes for table `t_pinjam`
--
ALTER TABLE `t_pinjam`
  ADD PRIMARY KEY (`kode_pinjam`);

--
-- Indexes for table `t_simpan`
--
ALTER TABLE `t_simpan`
  ADD PRIMARY KEY (`kode_simpan`);

--
-- Indexes for table `t_tabungan`
--
ALTER TABLE `t_tabungan`
  ADD PRIMARY KEY (`kode_tabungan`);

--
-- Indexes for table `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`kode_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_angsur`
--
ALTER TABLE `t_angsur`
  MODIFY `kode_angsur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;
--
-- AUTO_INCREMENT for table `t_pengajuan`
--
ALTER TABLE `t_pengajuan`
  MODIFY `kode_pengajuan` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `t_pengambilan`
--
ALTER TABLE `t_pengambilan`
  MODIFY `kode_ambil` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `t_pinjam`
--
ALTER TABLE `t_pinjam`
  MODIFY `kode_pinjam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `t_simpan`
--
ALTER TABLE `t_simpan`
  MODIFY `kode_simpan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;
--
-- AUTO_INCREMENT for table `t_tabungan`
--
ALTER TABLE `t_tabungan`
  MODIFY `kode_tabungan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
