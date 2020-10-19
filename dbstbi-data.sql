-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 19 Okt 2020 pada 11.53
-- Versi Server: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbstbi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbberita`
--

CREATE TABLE IF NOT EXISTS `tbberita` (
  `Id` int(11) NOT NULL,
  `Judul` varchar(100) NOT NULL,
  `Berita` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbberita`
--

INSERT INTO `tbberita` (`Id`, `Judul`, `Berita`) VALUES
(1, 'Putusan MAHKAMAH AGUNG Nomor 814 K/Pdt.Sus-HKI/2020', 'TJUNG ANDREY ADI SAPUTRA VS SEAGATE TECHNOLOGY LLC, DK'),
(2, 'Putusan MAHKAMAH AGUNG Nomor 740 K/Pdt.Sus-HKI/2020', 'PT. SINAR LAUT MANDIRI, VS KING POINT ENTERPRISE CO., LTD'),
(3, 'Putusan MAHKAMAH AGUNG Nomor 653 K/Pdt.Sus-HKI/2020', 'HORCHANI DATTES VS 1. FELICIANA NIO dan/atau Ahli Warisnya MARCELLA NOVENA, DK'),
(4, 'Putusan MAHKAMAH AGUNG Nomor 34 PK/Pdt.Sus-HKI/2020', 'PERKUMPULAN INSA VS YAYASAN INSA MANUNGGAL'),
(5, 'Putusan MAHKAMAH AGUNG Nomor 813 K/Pdt.Sus-HKI/2020', 'KUSUMA TRITO VS NATALIA SUSENO, DKK'),
(6, 'Putusan MAHKAMAH AGUNG Nomor 640 K/Pdt.Sus-HKI/2020', 'SAMGONG GEAR IND., CO., LTD VS KUSNO KOSIM'),
(7, 'Putusan MAHKAMAH AGUNG Nomor 638 K/Pdt.Sus-HKI/2020', 'SAMGONG GEAR IND.,Co., Ltd VS T A N R I'),
(8, 'Putusan MAHKAMAH AGUNG Nomor 280 K/Pdt.Sus-HKI/2020', 'AGUS MAKMUR VS DIESEL, S.p.A\n'),
(9, 'Putusan MAHKAMAH AGUNG Nomor 619 K/Pdt.Sus-HKI/2020', 'JEMMY SETIOYUWONO VS ORIGINAL BUFF, S.A'),
(10, 'Putusan MAHKAMAH AGUNG Nomor 29 PK/Pdt.Sus-HKI/2020', 'HARDIMAN VS CHELSEA FOOTBALL CLUB LIMITED'),
(21, 'Putusan MAHKAMAH AGUNG Nomor 375 K/Pdt.Sus-HKI/2020', 'BUDIMAN TJOH VS RONNY LUKITO'),
(11, 'Putusan MAHKAMAH AGUNG Nomor 292 K/Pdt.Sus-HKI/2020', 'PT DELTA DJAKARTA Tbk VS 1. PT SARI INCOFOOD CORPORATION, DK'),
(12, 'Putusan MAHKAMAH AGUNG Nomor 639 K/Pdt.Sus-HKI/2020', 'PT QUANTUM LABORATORIS INTERNASIONAL VS KOMISI BANDING MEREK DIREKTORAT JENDERAL KEKAYAAN INTELEKTUAL'),
(20, 'Putusan MAHKAMAH AGUNG Nomor 320 K/Pdt.Sus-HKI/2020', '1. PERKUMPULAN BIKERS BROTHERHOOD MC INDONESIA (BBMC INDONESIA), DK VS 1. PEGI DIAR, DK'),
(13, 'Putusan MAHKAMAH AGUNG Nomor 8 PK/Pdt.Sus-HKI/2020', 'PT. GARUDA TASCO INTERNATIONAL VS SYARIKAT JUN CHONG SDN., BHD, DKK'),
(19, 'Putusan MAHKAMAH AGUNG Nomor 281 K/Pdt.Sus-HKI/2020', 'WILLIAM PRAMONO VS DIESEL, S.p.A'),
(14, 'Putusan MAHKAMAH AGUNG Nomor 32 PK/Pdt.Sus-HKI/2020', 'SUDIRMAN, selaku Direktur/Pesero Pengurus CV CRYSTAL X VS PT NATURAL NUSANTARA,'),
(15, 'Putusan MAHKAMAH AGUNG Nomor 600 K/Pdt.Sus-HKI/2020', 'NILOS GmbH & Co.KG VS PT ASIA SANTOSO'),
(18, 'Putusan MAHKAMAH AGUNG Nomor 281 K/Pdt.Sus-HKI/2020', 'WILLIAM PRAMONO VS DIESEL, S.p.A'),
(16, 'Putusan MAHKAMAH AGUNG Nomor 5 PK/Pdt.Sus-HKI/2020', '1. KEMENTERIAN HUKUM dan HAM RI, Cq. DIREKTORAT JENDERAL KEKAYAAN INTELEKTUAL, Cq. DIREKTORAT MEREK, dk VS PT. SUPRA TERATAI METAL'),
(17, 'Putusan MAHKAMAH AGUNG Nomor 618 K/Pdt.Sus-HKI/2020', 'PT. MITRA GEMILANG KOSMETINDO (dalam Likuidasi) VS Sdr. TAN CIN JAM');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbcache`
--

CREATE TABLE IF NOT EXISTS `tbcache` (
  `Id` int(11) NOT NULL,
  `Query` varchar(100) NOT NULL,
  `DocId` int(11) NOT NULL,
  `Value` float NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbcache`
--

INSERT INTO `tbcache` (`Id`, `Query`, `DocId`, `Value`) VALUES
(4, 'vs', 0, 0),
(3, 'putusan', 0, 0),
(5, 'mahkamah agung', 0, 0),
(6, 'technology', 1, 0.372105);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbindex`
--

CREATE TABLE IF NOT EXISTS `tbindex` (
  `Id` int(11) NOT NULL,
  `Term` varchar(30) NOT NULL,
  `DocId` int(11) NOT NULL,
  `Count` int(11) NOT NULL,
  `Bobot` float NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=193 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbindex`
--

INSERT INTO `tbindex` (`Id`, `Term`, `DocId`, `Count`, `Bobot`) VALUES
(1, 'tjung', 1, 1, 3.04452),
(2, 'andrey', 1, 1, 3.04452),
(3, 'adi', 1, 1, 3.04452),
(4, 'saputra', 1, 1, 3.04452),
(5, 'vs', 1, 1, 0),
(6, 'seagate', 1, 1, 3.04452),
(7, 'technology', 1, 1, 3.04452),
(8, 'llc', 1, 1, 3.04452),
(9, 'dk', 1, 1, 1.43508),
(10, 'pt', 2, 1, 0.965081),
(11, 'sinar', 2, 1, 3.04452),
(12, 'laut', 2, 1, 3.04452),
(13, 'mandiri', 2, 1, 3.04452),
(14, 'vs', 2, 1, 0),
(15, 'king', 2, 1, 3.04452),
(16, 'point', 2, 1, 3.04452),
(17, 'enterprise', 2, 1, 3.04452),
(18, 'co', 2, 1, 1.65823),
(19, 'ltd', 2, 1, 1.94591),
(20, 'horchani', 3, 1, 3.04452),
(21, 'dattes', 3, 1, 3.04452),
(22, 'vs', 3, 1, 0),
(23, '1', 3, 1, 1.65823),
(24, 'feliciana', 3, 1, 3.04452),
(25, 'nio', 3, 1, 3.04452),
(26, 'ahli', 3, 1, 3.04452),
(27, 'warisnya', 3, 1, 3.04452),
(28, 'marcella', 3, 1, 3.04452),
(29, 'novena', 3, 1, 3.04452),
(30, 'dk', 3, 1, 1.43508),
(31, 'perkumpulan', 4, 1, 2.35138),
(32, 'insa', 4, 2, 6.08905),
(33, 'vs', 4, 1, 0),
(34, 'yayasan', 4, 1, 3.04452),
(35, 'manunggal', 4, 1, 3.04452),
(36, 'kusuma', 5, 1, 3.04452),
(37, 'trito', 5, 1, 3.04452),
(38, 'vs', 5, 1, 0),
(39, 'natalia', 5, 1, 3.04452),
(40, 'suseno', 5, 1, 3.04452),
(41, 'dkk', 5, 1, 2.35138),
(42, 'samgong', 6, 1, 2.35138),
(43, 'gear', 6, 1, 2.35138),
(44, 'ind', 6, 1, 2.35138),
(45, 'co', 6, 1, 1.65823),
(46, 'ltd', 6, 1, 1.94591),
(47, 'vs', 6, 1, 0),
(48, 'kusno', 6, 1, 3.04452),
(49, 'kosim', 6, 1, 3.04452),
(50, 'samgong', 7, 1, 2.35138),
(51, 'gear', 7, 1, 2.35138),
(52, 'ind', 7, 1, 2.35138),
(53, 'co', 7, 1, 1.65823),
(54, 'ltd', 7, 1, 1.94591),
(55, 'vs', 7, 1, 0),
(56, 't', 7, 1, 3.04452),
(57, 'a', 7, 1, 1.43508),
(58, 'n', 7, 1, 3.04452),
(59, 'r', 7, 1, 2.35138),
(60, 'i', 7, 1, 3.04452),
(61, 'agus', 8, 1, 3.04452),
(62, 'makmur', 8, 1, 3.04452),
(63, 'vs', 8, 1, 0),
(64, 'diesel', 8, 1, 1.94591),
(65, 's', 8, 1, 1.65823),
(66, 'p', 8, 1, 1.94591),
(67, 'a', 8, 1, 1.43508),
(68, 'jemmy', 9, 1, 3.04452),
(69, 'setioyuwono', 9, 1, 3.04452),
(70, 'vs', 9, 1, 0),
(71, 'original', 9, 1, 3.04452),
(72, 'buff', 9, 1, 3.04452),
(73, 's', 9, 1, 1.65823),
(74, 'a', 9, 1, 1.43508),
(75, 'hardiman', 10, 1, 3.04452),
(76, 'vs', 10, 1, 0),
(77, 'chelsea', 10, 1, 3.04452),
(78, 'football', 10, 1, 3.04452),
(79, 'club', 10, 1, 3.04452),
(80, 'limited', 10, 1, 3.04452),
(81, 'pt', 11, 2, 1.93016),
(82, 'delta', 11, 1, 3.04452),
(83, 'djakarta', 11, 1, 3.04452),
(84, 'tbk', 11, 1, 3.04452),
(85, 'vs', 11, 1, 0),
(86, '1', 11, 1, 1.65823),
(87, 'sari', 11, 1, 3.04452),
(88, 'incofood', 11, 1, 3.04452),
(89, 'corporation', 11, 1, 3.04452),
(90, 'dk', 11, 1, 1.43508),
(91, 'pt', 12, 1, 0.965081),
(92, 'quantum', 12, 1, 3.04452),
(93, 'laboratoris', 12, 1, 3.04452),
(94, 'internasional', 12, 1, 3.04452),
(95, 'vs', 12, 1, 0),
(96, 'komisi', 12, 1, 3.04452),
(97, 'banding', 12, 1, 3.04452),
(98, 'merek', 12, 1, 2.35138),
(99, 'direktorat', 12, 1, 2.35138),
(100, 'jenderal', 12, 1, 2.35138),
(101, 'kayaan', 12, 1, 2.35138),
(102, 'intelektual', 12, 1, 2.35138),
(103, 'pt', 13, 1, 0.965081),
(104, 'garuda', 13, 1, 3.04452),
(105, 'tasco', 13, 1, 3.04452),
(106, 'international', 13, 1, 3.04452),
(107, 'vs', 13, 1, 0),
(108, 'syarikat', 13, 1, 3.04452),
(109, 'jun', 13, 1, 3.04452),
(110, 'chong', 13, 1, 3.04452),
(111, 'sdn', 13, 1, 3.04452),
(112, 'bhd', 13, 1, 3.04452),
(113, 'dkk', 13, 1, 2.35138),
(114, 'sudirman', 14, 1, 3.04452),
(115, 'selaku', 14, 1, 3.04452),
(116, 'direktur', 14, 1, 3.04452),
(117, 'pesero', 14, 1, 3.04452),
(118, 'pengurus', 14, 1, 3.04452),
(119, 'cv', 14, 1, 3.04452),
(120, 'crystal', 14, 1, 3.04452),
(121, 'x', 14, 1, 3.04452),
(122, 'vs', 14, 1, 0),
(123, 'pt', 14, 1, 0.965081),
(124, 'natural', 14, 1, 3.04452),
(125, 'nusantara', 14, 1, 3.04452),
(126, 'nilos', 15, 1, 3.04452),
(127, 'gmbh', 15, 1, 3.04452),
(128, '&', 15, 1, 3.04452),
(129, 'co', 15, 1, 1.65823),
(130, 'kg', 15, 1, 3.04452),
(131, 'vs', 15, 1, 0),
(132, 'pt', 15, 1, 0.965081),
(133, 'asia', 15, 1, 3.04452),
(134, 'santoso', 15, 1, 3.04452),
(135, '1', 16, 1, 1.65823),
(136, 'menterian', 16, 1, 3.04452),
(137, 'hukum', 16, 1, 3.04452),
(138, 'ham', 16, 1, 3.04452),
(139, 'ri', 16, 1, 3.04452),
(140, 'cq', 16, 2, 6.08905),
(141, 'direktorat', 16, 2, 4.70275),
(142, 'jenderal', 16, 1, 2.35138),
(143, 'kayaan', 16, 1, 2.35138),
(144, 'intelektual', 16, 1, 2.35138),
(145, 'merek', 16, 1, 2.35138),
(146, 'dk', 16, 1, 1.43508),
(147, 'vs', 16, 1, 0),
(148, 'pt', 16, 1, 0.965081),
(149, 'supra', 16, 1, 3.04452),
(150, 'teratai', 16, 1, 3.04452),
(151, 'metal', 16, 1, 3.04452),
(152, 'pt', 17, 1, 0.965081),
(153, 'mitra', 17, 1, 3.04452),
(154, 'gemilang', 17, 1, 3.04452),
(155, 'kosmetindo', 17, 1, 3.04452),
(156, 'dalam', 17, 1, 3.04452),
(157, 'likuidasi', 17, 1, 3.04452),
(158, 'vs', 17, 1, 0),
(159, 'sdr', 17, 1, 3.04452),
(160, 'tan', 17, 1, 3.04452),
(161, 'cin', 17, 1, 3.04452),
(162, 'jam', 17, 1, 3.04452),
(163, 'william', 18, 1, 2.35138),
(164, 'pramono', 18, 1, 2.35138),
(165, 'vs', 18, 1, 0),
(166, 'diesel', 18, 1, 1.94591),
(167, 's', 18, 1, 1.65823),
(168, 'p', 18, 1, 1.94591),
(169, 'a', 18, 1, 1.43508),
(170, 'william', 19, 1, 2.35138),
(171, 'pramono', 19, 1, 2.35138),
(172, 'vs', 19, 1, 0),
(173, 'diesel', 19, 1, 1.94591),
(174, 's', 19, 1, 1.65823),
(175, 'p', 19, 1, 1.94591),
(176, 'a', 19, 1, 1.43508),
(177, '1', 20, 2, 3.31646),
(178, 'perkumpulan', 20, 1, 2.35138),
(179, 'birs', 20, 1, 3.04452),
(180, 'brotherhood', 20, 1, 3.04452),
(181, 'mc', 20, 1, 3.04452),
(182, 'indonesia', 20, 2, 6.08905),
(183, 'bbmc', 20, 1, 3.04452),
(184, 'dk', 20, 2, 2.87017),
(185, 'vs', 20, 1, 0),
(186, 'pegi', 20, 1, 3.04452),
(187, 'r', 20, 1, 2.35138),
(188, 'budiman', 21, 1, 3.04452),
(189, 'tjoh', 21, 1, 3.04452),
(190, 'vs', 21, 1, 0),
(191, 'ronny', 21, 1, 3.04452),
(192, 'lukito', 21, 1, 3.04452);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbstem`
--

CREATE TABLE IF NOT EXISTS `tbstem` (
  `Id` int(11) NOT NULL,
  `Term` varchar(30) NOT NULL,
  `Stem` varchar(30) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbvektor`
--

CREATE TABLE IF NOT EXISTS `tbvektor` (
  `DocId` int(11) NOT NULL,
  `Panjang` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbvektor`
--

INSERT INTO `tbvektor` (`DocId`, `Panjang`) VALUES
(1, 8.18188),
(2, 7.94244),
(3, 8.88606),
(4, 7.81945),
(5, 6.52728),
(6, 6.45457),
(7, 7.64977),
(8, 5.56062),
(9, 6.47191),
(10, 6.80775),
(11, 8.00933),
(12, 8.65574),
(13, 8.97848),
(14, 9.67587),
(15, 7.70037),
(16, 12.3261),
(17, 9.18441),
(18, 4.84152),
(19, 4.84152),
(20, 10.6638),
(21, 6.08904);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbberita`
--
ALTER TABLE `tbberita`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbcache`
--
ALTER TABLE `tbcache`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbindex`
--
ALTER TABLE `tbindex`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbstem`
--
ALTER TABLE `tbstem`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbvektor`
--
ALTER TABLE `tbvektor`
  ADD PRIMARY KEY (`DocId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbberita`
--
ALTER TABLE `tbberita`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `tbcache`
--
ALTER TABLE `tbcache`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbindex`
--
ALTER TABLE `tbindex`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=193;
--
-- AUTO_INCREMENT for table `tbstem`
--
ALTER TABLE `tbstem`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
