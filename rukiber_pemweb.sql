-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2020 at 12:48 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rukiber_pemweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_booking`
--

CREATE TABLE `tbl_booking` (
  `kode_booking` int(11) NOT NULL,
  `kode_pasien` int(11) NOT NULL,
  `kode_dokter` int(11) NOT NULL,
  `hari_praktik` varchar(20) NOT NULL,
  `tanggal_praktik` date NOT NULL,
  `jam_praktik` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_booking`
--

INSERT INTO `tbl_booking` (`kode_booking`, `kode_pasien`, `kode_dokter`, `hari_praktik`, `tanggal_praktik`, `jam_praktik`) VALUES
(0, 125, 2, '', '0000-00-00', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dokter`
--

CREATE TABLE `tbl_dokter` (
  `foto` varchar(500) NOT NULL,
  `kode_dokter` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `umur` varchar(50) NOT NULL,
  `agama` varchar(30) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `spesialis` varchar(50) NOT NULL,
  `no_izin_praktik` varchar(50) NOT NULL,
  `hari_praktik` varchar(20) NOT NULL,
  `tanggal_praktik` date NOT NULL,
  `jam_praktik` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_dokter`
--

INSERT INTO `tbl_dokter` (`foto`, `kode_dokter`, `nama`, `jenis_kelamin`, `umur`, `agama`, `no_hp`, `spesialis`, `no_izin_praktik`, `hari_praktik`, `tanggal_praktik`, `jam_praktik`) VALUES
('beautiful-young-female-doctor-looking-camera-office_1301-7807-13.jpg', 2, 'Ananda Fitri Karimah', '', '25', 'Islam', '081234567789', 'Paru-paru', 'IDI-12345021', 'Selasa', '2020-05-14', '12:00:00'),
('soto-ayam-gurih.PNG', 3, 'Soto Ayam', 'Laki-Laki', '100', 'Makanan', '10248625', 'Sotoooooo', 'soto123', 'Jum\'at', '2020-05-22', '15:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gizi`
--

CREATE TABLE `tbl_gizi` (
  `foto` varchar(500) NOT NULL,
  `kode_gizi` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(30) NOT NULL,
  `umur` varchar(10) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `spesialis` varchar(50) NOT NULL,
  `no_izin_praktik` varchar(50) NOT NULL,
  `hari_praktik` varchar(20) NOT NULL,
  `tanggal_praktik` date NOT NULL,
  `jam_praktik` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_gizi`
--

INSERT INTO `tbl_gizi` (`foto`, `kode_gizi`, `nama`, `jenis_kelamin`, `umur`, `agama`, `no_hp`, `spesialis`, `no_izin_praktik`, `hari_praktik`, `tanggal_praktik`, `jam_praktik`) VALUES
('beautiful-young-female-doctor-looking-camera-office_1301-7807-1.jpg', 0, 'Angel Metanosa Afinda', 'Perempuan', '32', 'Islam', '081273562542', 'Gizi', 'Gizi-1293894724', 'Kamis', '2020-05-29', '13:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_konselor`
--

CREATE TABLE `tbl_konselor` (
  `foto` varchar(500) NOT NULL,
  `kode_konselor` int(11) NOT NULL,
  `nama_konselor` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `umur` int(50) NOT NULL,
  `agama` varchar(30) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `no_izin_praktik` varchar(50) NOT NULL,
  `hari_praktik` varchar(20) NOT NULL,
  `tanggal_praktik` date NOT NULL,
  `jam_praktik` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_konselor`
--

INSERT INTO `tbl_konselor` (`foto`, `kode_konselor`, `nama_konselor`, `jenis_kelamin`, `umur`, `agama`, `no_hp`, `no_izin_praktik`, `hari_praktik`, `tanggal_praktik`, `jam_praktik`) VALUES
('a1.jpg', 6, 'Angel Ananda Nayla', 'Perempuan', 35, 'Islam', '081234567789', 'IDI-12345021', 'Rabu', '2020-05-22', '13:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_konsul`
--

CREATE TABLE `tbl_konsul` (
  `kode_konsul` int(11) NOT NULL,
  `kode_pasien` int(11) NOT NULL,
  `kode_konselor` int(11) NOT NULL,
  `hari_praktik` varchar(25) NOT NULL,
  `tanggal_praktik` date NOT NULL,
  `jam_praktik` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_konsul`
--

INSERT INTO `tbl_konsul` (`kode_konsul`, `kode_pasien`, `kode_konselor`, `hari_praktik`, `tanggal_praktik`, `jam_praktik`) VALUES
(2, 112, 2, '', '0000-00-00', '00:00:00'),
(3, 125, 6, '', '0000-00-00', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_konsulgizi`
--

CREATE TABLE `tbl_konsulgizi` (
  `kode_konsulgizi` int(11) NOT NULL,
  `kode_pasien` int(11) NOT NULL,
  `kode_gizi` int(11) NOT NULL,
  `hari_praktik` varchar(25) NOT NULL,
  `tanggal_praktik` date NOT NULL,
  `jam_praktik` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_konsulgizi`
--

INSERT INTO `tbl_konsulgizi` (`kode_konsulgizi`, `kode_pasien`, `kode_gizi`, `hari_praktik`, `tanggal_praktik`, `jam_praktik`) VALUES
(0, 125, 0, '', '0000-00-00', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_obat`
--

CREATE TABLE `tbl_obat` (
  `foto` varchar(500) NOT NULL,
  `kode_obat` int(11) NOT NULL,
  `namaobat` varchar(255) NOT NULL,
  `kategoriobat` varchar(40) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `stockobat` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_obat`
--

INSERT INTO `tbl_obat` (`foto`, `kode_obat`, `namaobat`, `kategoriobat`, `keterangan`, `harga`, `stockobat`) VALUES
('bodrexin1.jpg', 2, 'Bodrexin', 'tablet', 'Obat Demam untuk anak-anak dibawah umur 12 tahun. Diminum 3x sehari', '10000', '150');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pesan`
--

CREATE TABLE `tbl_pesan` (
  `kode_pesan` int(11) NOT NULL,
  `kode_pasien` int(11) NOT NULL,
  `kode_obat` int(11) NOT NULL,
  `namaobat` varchar(500) NOT NULL,
  `jumlah_pesanan_obat` int(20) NOT NULL,
  `harga_total_obat` int(100) NOT NULL,
  `kode_dokter` int(100) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `hari_praktik` varchar(100) NOT NULL,
  `tanggal_praktik` date NOT NULL,
  `jam_praktik` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pesan`
--

INSERT INTO `tbl_pesan` (`kode_pesan`, `kode_pasien`, `kode_obat`, `namaobat`, `jumlah_pesanan_obat`, `harga_total_obat`, `kode_dokter`, `nama`, `hari_praktik`, `tanggal_praktik`, `jam_praktik`) VALUES
(1, 125, 2, '', 30, 0, 0, '', '', '0000-00-00', '00:00:00'),
(2, 126, 2, '', 15, 0, 0, '', '', '0000-00-00', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `foto` varchar(500) NOT NULL,
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama_user` varchar(100) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `role` enum('admin','pasien') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`foto`, `id_user`, `username`, `password`, `nama_user`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `no_hp`, `email`, `role`) VALUES
('', 111, 'angelmetanosa', '202cb962ac59075b964b07152d234b70', 'Angel Metanosa Afinda', '', '0000-00-00', '', '', '', '', 'admin'),
('', 125, 'anandafitri', '202cb962ac59075b964b07152d234b70', 'Ananda Fitri Karimah', 'Malang', '2020-05-06', 'Perempuan', 'Depok', '0821361631315', 'anandafitri@gmail.com', 'pasien'),
('', 126, 'naylaetania', '202cb962ac59075b964b07152d234b70', 'Nayla Etania Afinda', '', '0000-00-00', '', 'BTN Alam Raya, Perawang', '081277733316', 'naylaetaniaafinda@gmail.com', 'pasien'),
('', 127, 'oktagrivelino', '827ccb0eea8a706c4c34a16891f84e7b', 'Okta Gusmianto Rivelino', '', '0000-00-00', '', 'Sukabirus', '081717524555', 'ogrivelino@gmail.com', 'pasien');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  ADD PRIMARY KEY (`kode_booking`),
  ADD KEY `kode_dokter` (`kode_dokter`),
  ADD KEY `kode_pasien` (`kode_pasien`);

--
-- Indexes for table `tbl_dokter`
--
ALTER TABLE `tbl_dokter`
  ADD PRIMARY KEY (`kode_dokter`);

--
-- Indexes for table `tbl_gizi`
--
ALTER TABLE `tbl_gizi`
  ADD PRIMARY KEY (`kode_gizi`);

--
-- Indexes for table `tbl_konselor`
--
ALTER TABLE `tbl_konselor`
  ADD PRIMARY KEY (`kode_konselor`);

--
-- Indexes for table `tbl_konsul`
--
ALTER TABLE `tbl_konsul`
  ADD PRIMARY KEY (`kode_konsul`),
  ADD KEY `kode_pasien` (`kode_pasien`),
  ADD KEY `kode_konselor` (`kode_konselor`);

--
-- Indexes for table `tbl_obat`
--
ALTER TABLE `tbl_obat`
  ADD PRIMARY KEY (`kode_obat`);

--
-- Indexes for table `tbl_pesan`
--
ALTER TABLE `tbl_pesan`
  ADD PRIMARY KEY (`kode_pesan`),
  ADD KEY `kode_pasien` (`kode_pasien`),
  ADD KEY `kode_obat` (`kode_obat`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_dokter`
--
ALTER TABLE `tbl_dokter`
  MODIFY `kode_dokter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_konselor`
--
ALTER TABLE `tbl_konselor`
  MODIFY `kode_konselor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_konsul`
--
ALTER TABLE `tbl_konsul`
  MODIFY `kode_konsul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_obat`
--
ALTER TABLE `tbl_obat`
  MODIFY `kode_obat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_pesan`
--
ALTER TABLE `tbl_pesan`
  MODIFY `kode_pesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  ADD CONSTRAINT `tbl_booking_ibfk_1` FOREIGN KEY (`kode_dokter`) REFERENCES `tbl_dokter` (`kode_dokter`),
  ADD CONSTRAINT `tbl_booking_ibfk_2` FOREIGN KEY (`kode_pasien`) REFERENCES `tbl_users` (`id_user`);

--
-- Constraints for table `tbl_pesan`
--
ALTER TABLE `tbl_pesan`
  ADD CONSTRAINT `tbl_pesan_ibfk_1` FOREIGN KEY (`kode_pasien`) REFERENCES `tbl_users` (`id_user`),
  ADD CONSTRAINT `tbl_pesan_ibfk_2` FOREIGN KEY (`kode_obat`) REFERENCES `tbl_obat` (`kode_obat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
