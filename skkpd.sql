-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2025 at 03:55 AM
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
-- Database: `skkpd`
--

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `Id_Jurusan` char(2) NOT NULL,
  `Jurusan` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`Id_Jurusan`, `Jurusan`) VALUES
('J1', 'RPL'),
('J2', 'TKJ'),
('J3', 'AN'),
('J4', 'DKV');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `Id_Kategori` char(5) NOT NULL,
  `Kategori` enum('Wajib','Optional','','') NOT NULL,
  `Sub_Kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan`
--

CREATE TABLE `kegiatan` (
  `Id_Kegiatan` int(5) NOT NULL,
  `Jenis_Kegiatan` varchar(50) NOT NULL,
  `Id_Kategori` char(5) NOT NULL,
  `Angka_Kredit` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `Nama_Lengkap` varchar(50) NOT NULL,
  `Username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `Id_Pengguna` int(11) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `NIS` int(5) NOT NULL,
  `Password` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sertifikat`
--

CREATE TABLE `sertifikat` (
  `Id_Sertifikat` int(11) NOT NULL,
  `Tanggal_Upload` date NOT NULL,
  `Catatan` varchar(100) NOT NULL,
  `Sertifikat` varchar(50) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `Tanggal_Status_Berubah` date NOT NULL,
  `NIS` int(5) NOT NULL,
  `Id_Kegiatan` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `NIS` int(5) NOT NULL,
  `No_Absen` int(2) NOT NULL,
  `Nama_Siswa` varchar(50) NOT NULL,
  `No_Telp` varchar(15) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Id_Jurusan` char(2) NOT NULL,
  `Kelas` int(3) NOT NULL,
  `Angkatan` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`NIS`, `No_Absen`, `Nama_Siswa`, `No_Telp`, `Email`, `Id_Jurusan`, `Kelas`, `Angkatan`) VALUES
(6292, 1, 'Albert Made Marvell Adnyana', '089644952917', 'writeforaby@gmail.com', 'J1', 1, 2024),
(6293, 2, 'Alif Rizki Raditya', '081239801107', 'alifrizky286@gmail.com', 'J1', 1, 2024),
(6294, 3, 'Ariza Falah Subyantoro', '082145584677', 'ariza.subyantoro@gmail.com', 'J1', 1, 2024),
(6295, 4, 'Aurelio Fransiskus Sinarta', '089516724229', 'aureliofs01@gmail.com', 'J1', 1, 2024),
(6296, 5, 'Bezaleel Elderoy Sulastiyo', '08977303987', 'bezaleelelderoys@gmail.com', 'J1', 1, 2024),
(6297, 6, 'Chien Shevanya Lie', '082144049709', 'chienshevanyalie@gmail.com', 'J1', 1, 2024),
(6298, 7, 'Faiz Zaidan Hadi', '085738170030', 'faizzaidanhadi007@gmail.com', 'J1', 1, 2024),
(6299, 8, 'Helmi Malik Nur Robi', '08990420398', 'codename.mee@gmail.com', 'J2', 1, 2024),
(6300, 9, 'Henri Saputra', '082146357077', 'hs5565566@gmail.com', 'J2', 1, 2024),
(6301, 10, 'I Gede Made Paramartha Nugraha', '081239330607', 'paramartha1307@gmail.com', 'J2', 2, 2023),
(6302, 11, 'I Gede Sheva Putrayana', '08980588086', 'seavweb@gmail.com', 'J2', 2, 2023),
(6303, 12, 'I Gusti Agung Putu Aswinanta Wikrama', '085739285687', 'nntxwww@gmail.com', 'J2', 2, 2023),
(6304, 13, 'I Gusti Ngurah Pranajaya Udiartha', '081934996141', 'gejeee14@gmail.com', 'J2', 2, 2023),
(6306, 14, 'I Made Seva Santepi Putra Winata', '081338369652', 'sevawinata@gmail.com', 'J2', 2, 2023),
(6307, 15, 'I Putu Adita Pratama', '085903627353', 'aditapratama654@gmail.com', 'J2', 2, 2023),
(6308, 16, 'I Putu Gede Deva Suka Dian Pratama', '087757862060', 'putudeva49@gmail.com', 'J3', 2, 2023),
(6309, 17, 'Ida Bagus Dwiya Kusala Mahari Prabhaswara', '082145280323', 'maharikusala@gmail.com', 'J3', 2, 2023),
(6310, 18, 'Komang Krisna Puspanta', '087754766536', 'ikomangkrisna40@gmail.com', 'J3', 2, 2023),
(6311, 19, 'Krisna Septiadji Suhaya', '081337858322', 'krisnaseptiaji@gmail.com', 'J3', 3, 2022),
(6312, 20, 'Lulu Ilyana Lintang Az-zahra', '081363716909', 'luluilyanaaz.9107@gmail.com', 'J3', 3, 2022),
(6313, 21, 'M.Hidayatullah', '081237278762', 'hidayat04191@gmail.com', 'J3', 3, 2022),
(6314, 22, 'Muhammad Jaffan Hanindito', '085772209371', 'haninditoj@gmail.com', 'J4', 3, 2022),
(6315, 23, 'Ni Kadek Sherly Cempaka Dewi', '081529942897', 'sherlycempaka@icloud.com', 'J4', 3, 2022),
(6317, 24, 'Sadewa Bharaka Mahaputra', '082247814145', 'i.abdda@gmail.com', 'J4', 3, 2022),
(6318, 25, 'Satria Bela Pratama', '085157099482', 'codewithsatria@gmail.com', 'J4', 3, 2022),
(6319, 26, 'Vania Bella Amadea', '089524649718', 'amadeabella007@gmail.com', 'J4', 3, 2022),
(6626, 27, 'Ida Ayu Lalita Putri Gama', '087755725057', 'lalitaputri2429@gmail.com', 'J4', 3, 2022);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`Id_Jurusan`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`Id_Kategori`);

--
-- Indexes for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`Id_Kegiatan`),
  ADD KEY `Id_Kategori` (`Id_Kategori`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`Id_Pengguna`),
  ADD KEY `NIS` (`NIS`),
  ADD KEY `Username` (`Username`);

--
-- Indexes for table `sertifikat`
--
ALTER TABLE `sertifikat`
  ADD PRIMARY KEY (`Id_Sertifikat`),
  ADD KEY `NIS` (`NIS`,`Id_Kegiatan`),
  ADD KEY `Id_Kegiatan` (`Id_Kegiatan`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`NIS`),
  ADD KEY `No_Absen` (`No_Absen`,`Kelas`,`Angkatan`),
  ADD KEY `Id_Jurusan` (`Id_Jurusan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `Id_Kegiatan` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `Id_Pengguna` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sertifikat`
--
ALTER TABLE `sertifikat`
  MODIFY `Id_Sertifikat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `NIS` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6627;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD CONSTRAINT `kegiatan_ibfk_1` FOREIGN KEY (`Id_Kategori`) REFERENCES `kategori` (`Id_Kategori`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD CONSTRAINT `pengguna_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `pegawai` (`Username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pengguna_ibfk_2` FOREIGN KEY (`NIS`) REFERENCES `siswa` (`NIS`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sertifikat`
--
ALTER TABLE `sertifikat`
  ADD CONSTRAINT `sertifikat_ibfk_1` FOREIGN KEY (`Id_Kegiatan`) REFERENCES `kegiatan` (`Id_Kegiatan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sertifikat_ibfk_2` FOREIGN KEY (`NIS`) REFERENCES `siswa` (`NIS`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`Id_Jurusan`) REFERENCES `jurusan` (`Id_Jurusan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
