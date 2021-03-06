-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Jul 2021 pada 15.16
-- Versi server: 10.4.10-MariaDB
-- Versi PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `c4.5_project2`
--

-- --------------------------------------------------------

--
--  Struktur dari tabel `data_uji`
--

CREATE TABLE `data_uji` (
   `id` int(11) NOT NULL,
  `lat` varchar(9) DEFAULT NULL,
  `long` varchar(10) DEFAULT NULL,
  `latsta` varchar(7) DEFAULT NULL,
  `longsta` varchar(8) DEFAULT NULL,
  `magnitudo` varchar(9) DEFAULT NULL,
  `kategori_magnitudo` varchar(18) DEFAULT NULL,
  `kedalaman` varchar(10) DEFAULT NULL,
  `kategori_kedalaman` varchar(18) DEFAULT NULL,
  `PGA` varchar(9) DEFAULT NULL,
  `kategori_PGA` varchar(12) DEFAULT NULL,
  `jarakhipo` varchar(10) DEFAULT NULL,
  `kategori_jarakhipo` varchar(18) DEFAULT NULL,
  `MMI` varchar(3) DEFAULT NULL,
  `efek_gempa` varchar(46) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `data_uji`
--

INSERT INTO `data_uji` (`id`, `lat`, `long`, `latsta`, `longsta`, `magnitudo`, `kategori_magnitudo`, `kedalaman`, `kategori_kedalaman`, `PGA`, `kategori_PGA`, `jarakhipo`, `kategori_jarakhipo`, `MMI`, `efek_gempa`) VALUES
(1, '-2.06', '139.74', '-2.51', '140.7', '5.3', 'Kuat', '10', 'Sangat Dangkal', '3.73861', 'Kecil', '118.11', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(2, '-4.1', '102.72', '-3.6506', '102.593', '5', 'Kuat', '101', 'Menengah', '1.56587', 'Kecil', '113.526', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(3, '-5.1', '126.5', '1.443', '125.179', '5.1', 'Kuat', '10', 'Sangat Dangkal', '15.2459', 'Medium', '151.657', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(4, '-5.67', '133.67', '-5.6639', '132.7361', '5.1', 'Kuat', '10', 'Sangat Dangkal', '0.60196', 'Kecil', '104.146', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(5, '1.39', '99.33', '1.39876', '99.43094', '3.4', 'Sedang', '10', 'Sangat Dangkal', '30.8741', 'Medium', '15.049', 'Sangat Dangkal', '5', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(6, '-6.6', '104.78', '-5.52361', '104.49596', '5.7', 'Kuat', '10', 'Sangat Dangkal', '4.17734', 'Kecil', '123.973', 'Intermediet', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(7, '-3.7', '138.67', '-4.5299', '136.8929', '6.1', 'Kuat', '111', 'Menengah', '4.23766', 'Kecil', '244.372', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(8, '1.26', '119.98', '-0.9053', '119.8368', '5.2', 'Kuat', '10', 'Sangat Dangkal', '0.28038', 'Kecil', '241.081', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(9, '-4.31', '102.41', '-3.8583', '102.3366', '5.4', 'Kuat', '31', 'Dangkal', '2.97906', 'Kecil', '59.509', 'Dangkal', '2', 'Tidak Ada atau Jarang Kerusakan'),
(10, '-9.39', '110.53', '-7.561', '110.8541', '5.1', 'Kuat', '10', 'Sangat Dangkal', '0.16823', 'Kecil', '206.424', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(11, '-0.56', '137.57', '-1.1907', '136.1038', '5', 'Kuat', '10', 'Sangat Dangkal', '8.91334', 'Kecil', '177.449', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(12, '-9.29', '118.42', '-9.6411', '119.3911', '5.6', 'Kuat', '10', 'Sangat Dangkal', '1.28976', 'Kecil', '115.056', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(13, '1.36', '97.09', '0.5792', '97.815', '5.2', 'Kuat', '26', 'Dangkal', '1.52546', 'Kecil', '121.094', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(14, '4.56', '126.83', '4.0079', '126.67', '5.8', 'Kuat', '17', 'Dangkal', '5.843322', 'Kecil', '66.031', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(15, '-8.74', '118.37', '-10.2189', '120.5777', '4.9', 'Sedang', '119', 'Menengah', '0.204618', 'Kecil', '318.058', 'Dalam', '1', 'Tidak Ada atau Jarang Kerusakan'),
(16, '-6.13', '103.65', '-7.784', '108.449', '5', 'Kuat', '10', 'Sangat Dangkal', '0.014952', 'Kecil', '563.528', 'Dalam', '1', 'Tidak Ada atau Jarang Kerusakan'),
(17, '-1.41', '134.96', '-0.8903', '134.0512', '5.3', 'Kuat', '10', 'Sangat Dangkal', '1.481952', 'Kecil', '116.636', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(18, '-7.1', '106.08', '-7.0053', '106.5563', '5', 'Kuat', '10', 'Sangat Dangkal', '1.956476', 'Kecil', '54.824', 'Dangkal', '2', 'Tidak Ada atau Jarang Kerusakan'),
(19, '-2.76', '100.18', '-2.44736', '101.2396', '5', 'Kuat', '22', 'Dangkal', '1.662407', 'Kecil', '124.586', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(20, '-8.06', '117.81', '-8.50188', '118.31213', '5', 'Kuat', '10', 'Sangat Dangkal', '2.76632', 'Kecil', '74.915', 'Dangkal', '1', 'Tidak Ada atau Jarang Kerusakan'),
(21, '-2.76', '127.55', '-3.23897', '127.09982', '5.2', 'Kuat', '12', 'Dangkal', '8.075899', 'Kecil', '73.943', 'Dangkal', '2', 'Tidak Ada atau Jarang Kerusakan'),
(22, '-8.64', '116.15', '-8.7382', '116.8821', '4.5', 'Sedang', '109', 'Menengah', '2.516178', 'Kecil', '136.395', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(23, '-9.68', '115.2', '-8.7498', '115.1769', '5', 'Kuat', '10', 'Sangat Dangkal', '4.330423', 'Kecil', '103.767', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(24, '5.77', '125.22', '1.5013', '124.9178', '6', 'Kuat', '77', 'Menengah', '4.142665', 'Kecil', '481.212', 'Dalam', '3', 'Tidak Ada atau Jarang Kerusakan'),
(25, '-9.97', '119', '-9.6411', '119.3911', '5.4', 'Kuat', '10', 'Sangat Dangkal', '6.287719', 'Kecil', '57.597', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(26, '-9.88', '118.97', '-8.50188', '118.31213', '5', 'Kuat', '10', 'Sangat Dangkal', '0.716115', 'Kecil', '169.802', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(27, '-5.88', '103.43', '-5.0175', '104.0589', '5.2', 'Kuat', '10', 'Sangat Dangkal', '14.170544', 'Medium', '118.907', 'Intermediet', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(28, '0.24', '122.09', '0.4771', '121.9406', '5.1', 'Kuat', '186', 'Menengah', '3.714626', 'Kecil', '188.583', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(29, '-5.19', '101.04', '-8.7382', '116.8821', '4.8', 'Sedang', '27', 'Dangkal', '2.024301', 'Kecil', '111.187', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(30, '-8.26', '116.55', '-8.562', '116.167', '6.4', 'Kuat', '10', 'Sangat Dangkal', '25.040397', 'Medium', '55.055', 'Dangkal', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(31, '-8.29', '116.62', '-8.7382', '116.8821', '5.4', 'Kuat', '10', 'Sangat Dangkal', '56.688594', 'Besar', '58.494', 'Dangkal', '5', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(32, '-8.28', '116.71', '-8.7382', '116.8821', '7', 'Kuat', '10', 'Sangat Dangkal', '313.989354', 'Sangat Besar', '55.242', 'Dangkal', '8', 'Kerusakan Menengah, Hancurnya Dinding'),
(33, '3.08', '126.58', '1.54', '124.92', '5.1', 'Kuat', '10', 'Sangat Dangkal', '0.2195', 'Kecil', '250.87', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(34, '-2.02', '139.11', '-1.99', '138.71', '5.1', 'Kuat', '10', 'Sangat Dangkal', '1.2044', 'Kecil', '43.72', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(35, '-6.47', '103.69', '-5.37', '105.25', '4.9', 'Sedang', '27', 'Dangkal', '0.4978', 'Kecil', '211.2', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(36, '-11.46', '118.2', '-8.74', '116.88', '5.2', 'Kuat', '10', 'Sangat Dangkal', '0.4087', 'Kecil', '334.3', 'Dalam', '1', 'Tidak Ada atau Jarang Kerusakan'),
(37, '2.49', '127.31', '1.44', '124.84', '5', 'Kuat', '38', 'Dangkal', '0.0284', 'Kecil', '297.51', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(38, '-6.68', '130.46', '-4.31', '129.54', '5.5', 'Kuat', '129', 'Menengah', '0.5596', 'Kecil', '307.1', 'Dalam', '2', 'Tidak Ada atau Jarang Kerusakan'),
(39, '4.32', '126.18', '1.44', '124.84', '5.3', 'Kuat', '120', 'Menengah', '0.1058', 'Kecil', '371.68', 'Dalam', '1', 'Tidak Ada atau Jarang Kerusakan'),
(40, '-0.85', '127.55', '-0.64', '127.5', '5.2', 'Kuat', '10', 'Sangat Dangkal', '19.8646', 'Medium', '23.23', 'Sangat Dangkal', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(41, '-0.85', '127.54', '-0.64', '127.5', '5.4', 'Kuat', '10', 'Sangat Dangkal', '49.4626', 'Medium', '25.13', 'Sangat Dangkal', '5', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(42, '2.37', '126.75', '1.44', '124.84', '6.6', 'Kuat', '47', 'Dangkal', '1.0702', 'Kecil', '233.57', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(43, '2.34', '126.74', '1.44', '124.84', '6.6', 'Kuat', '51', 'Dangkal', '1.0702', 'Kecil', '232', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(44, '-7.85', '106.48', '-7.31', '107.13', '5.4', 'Kuat', '10', 'Sangat Dangkal', '3.4957', 'Kecil', '92.89', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(45, '-7.83', '106.44', '-7.01', '106.56', '5', 'Kuat', '50', 'Dangkal', '4.5472', 'Kecil', '91.85', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(46, '3.8', '95.8', '4.27', '96.4', '4.8', 'Sedang', '60', 'Dangkal', '14.061', 'Medium', '84.75', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(47, '-9.63', '119.91', '-9.67', '120.3', '5', 'Kuat', '79', 'Menengah', '15.7202', 'Medium', '42.23', 'Sangat Dangkal', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(48, '-3.51', '101.16', '-2.45', '101.24', '5.6', 'Kuat', '50', 'Dangkal', '11.5042', 'Medium', '126.95', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(49, '3.61', '128.68', '-3.32', '128.4', '5.1', 'Kuat', '37', 'Dangkal', '0.1627', 'Kecil', '770.19', 'Sangat Dalam', '1', 'Tidak Ada atau Jarang Kerusakan'),
(50, '1.77', '99.09', '1.4', '99.43', '5', 'Kuat', '10', 'Sangat Dangkal', '1.567', 'Kecil', '55.3', 'Dangkal', '2', 'Tidak Ada atau Jarang Kerusakan'),
(51, '7.08', '93.98', '5.88', '95.34', '5.6', 'Kuat', '70', 'Menengah', '4.02', 'Kecil', '211.2', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(52, '5.63', '121.72', '0.99', '122.36', '5.2', 'Kuat', '10', 'Sangat Dangkal', '0.0304', 'Kecil', '520.06', 'Dalam', '1', 'Tidak Ada atau Jarang Kerusakan'),
(53, '-10.29', '119.1', '-9.67', '120.3', '5.3', 'Kuat', '11', 'Dangkal', '4.8559', 'Kecil', '147.82', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(54, '-10.41', '118.99', '-9.67', '120.3', '6.4', 'Kuat', '15', 'Dangkal', '10.4311', 'Medium', '160.68', 'Intermediet', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(55, '-10.32', '118.92', '-9.67', '120.3', '5.7', 'Kuat', '40', 'Dangkal', '6.7248', 'Kecil', '170.35', 'Intermediet', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(56, '-5.51', '133.83', '-3.66', '133.7', '5.9', 'Kuat', '13', 'Dangkal', '2.1207', 'Kecil', '203.84', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(57, '0.35', '125.46', '1.44', '124.84', '5.2', 'Kuat', '65', 'Dangkal', '0.639', 'Kecil', '138.79', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(58, '-2.86', '100', '-2.77', '100.01', '5.2', 'Kuat', '15', 'Dangkal', '8.5819', 'Kecil', '9.55', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(59, '-2.92', '99.98', '-2.45', '101.24', '6.1', 'Kuat', '26', 'Dangkal', '17.4322', 'Medium', '148.24', 'Intermediet', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(60, '-3.02', '99.91', '-2.45', '101.24', '5.9', 'Kuat', '20', 'Dangkal', '16.269', 'Medium', '159.5', 'Intermediet', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(61, '-3.01', '99.91', '-2.77', '100.01', '5.9', 'Kuat', '38', 'Dangkal', '17.3156', 'Medium', '45.49', 'Sangat Dangkal', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(62, '-2.86', '100.1', '-2.77', '100.01', '5', 'Kuat', '18', 'Dangkal', '4.1189', 'Kecil', '13.73', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(63, '-0.38', '98.15', '-1.33', '99.09', '5.6', 'Kuat', '37', 'Dangkal', '0.5978', 'Kecil', '151.18', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(64, '1.58', '126.43', '0.77', '127.37', '5.7', 'Kuat', '39', 'Dangkal', '2.2422', 'Kecil', '141.05', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(65, '4.82', '126.37', '0.48', '121.94', '5.1', 'Kuat', '69', 'Menengah', '0.0157', 'Kecil', '688.41', 'Dalam', '1', 'Tidak Ada atau Jarang Kerusakan'),
(66, '3.25', '98.4', '3.5395', '98.674', '2.8', 'Lemah', '10', 'Sangat Dangkal', '0.273964', 'Kecil', '45.361', 'Sangat Dangkal', '1', 'Tidak Ada atau Jarang Kerusakan'),
(67, '-1.44', '99.77', '-0.91176', '100.46172', '4.2', 'Sedang', '12', 'Dangkal', '1.61859', 'Kecil', '97.352', 'Dangkal', '2', 'Tidak Ada atau Jarang Kerusakan'),
(68, '-0.65', '131.47', '-0.4102', '130.8211', '4.7', 'Sedang', '10', 'Sangat Dangkal', '0.917585', 'Kecil', '77.437', 'Dangkal', '2', 'Tidak Ada atau Jarang Kerusakan'),
(69, '-2.42', '140.28', '-2.59', '140.17', '5.1', 'Kuat', '10', 'Sangat Dangkal', '51.5784', 'Besar', '22.03', 'Sangat Dangkal', '5', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(70, '-0.86', '127.29', '-0.64', '127.5', '5.3', 'Kuat', '10', 'Sangat Dangkal', '11.4954', 'Medium', '34.68', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(71, '-9.67', '112.74', '-8.27', '113.44', '5.6', 'Kuat', '42', 'Dangkal', '3.4957', 'Kecil', '176.86', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(72, '-6.55', '101.66', '-4.36', '102.96', '5.1', 'Kuat', '10', 'Sangat Dangkal', '1.4553', 'Kecil', '281.72', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(73, '-7.81', '127.55', '-8.14', '124.59', '5', 'Kuat', '154', 'Menengah', '0.0186', 'Kecil', '327.32', 'Dalam', '1', 'Tidak Ada atau Jarang Kerusakan'),
(74, '1.19', '128.22', '-0.64', '127.5', '5', 'Kuat', '10', 'Sangat Dangkal', '0.4116', 'Kecil', '217.66', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(75, '0.54', '122.22', '0.48', '121.94', '5.1', 'Kuat', '98', 'Menengah', '15.7878', 'Medium', '30.95', 'Sangat Dangkal', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(76, '-3.91', '129.59', '-4.31', '129.54', '5.1', 'Kuat', '112', 'Menengah', '1.8885', 'Kecil', '44.31', 'Sangat Dangkal', '2', 'Tidak Ada atau Jarang Kerusakan'),
(77, '-1.4', '101.53', '-2.45', '101.24', '5.3', 'Kuat', '10', 'Sangat Dangkal', '2.1482', 'Kecil', '120.23', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(78, '4.73', '125.53', '0.77', '127.37', '5.3', 'Kuat', '180', 'Menengah', '0.0745', 'Kecil', '499.91', 'Dalam', '1', 'Tidak Ada atau Jarang Kerusakan'),
(79, '-2.49', '121.45', '-2.56', '120.32', '5', 'Kuat', '10', 'Sangat Dangkal', '0.8261', 'Kecil', '124.55', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(80, '1.11', '98.75', '0.8', '99.58', '5.5', 'Kuat', '76', 'Menengah', '8.4398', 'Kecil', '123.14', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(81, '6.18', '125.45', '1.44', '124.84', '5.6', 'Kuat', '92', 'Menengah', '0.3704', 'Kecil', '537.4', 'Dalam', '1', 'Tidak Ada atau Jarang Kerusakan'),
(82, '-0.98', '126.88', '-0.64', '127.5', '5.4', 'Kuat', '49', 'Dangkal', '6.7806', 'Kecil', '91.62', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(83, '-8.45', '116.5', '-8.77', '116.28', '5.4', 'Kuat', '10', 'Sangat Dangkal', '9.5893', 'Kecil', '42.78', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(84, '-8.45', '116.5', '-8.77', '116.28', '5.4', 'Kuat', '10', 'Sangat Dangkal', '6.6091', 'Kecil', '42.78', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(85, '-8.3', '116.6', '-8.74', '116.88', '5.8', 'Kuat', '10', 'Sangat Dangkal', '27.6948', 'Medium', '56.41', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(86, '-8.46', '116.5', '-8.77', '116.28', '5.1', 'Kuat', '10', 'Sangat Dangkal', '6.6091', 'Kecil', '40.94', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(87, '-8.47', '116.55', '-8.77', '116.28', '5.4', 'Kuat', '19', 'Dangkal', '9.5893', 'Kecil', '47.18', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(88, '-1.78', '120.55', '-1.42', '120.65', '5.7', 'Kuat', '39', 'Dangkal', '40.0408', 'Medium', '55.12', 'Dangkal', '5', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(89, '-6.09', '130.96', '-4.52', '129.9', '5.3', 'Kuat', '134', 'Menengah', '0.4616', 'Kecil', '243.28', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(90, '7.8', '94.46', '5.88', '95.34', '5.4', 'Kuat', '10', 'Sangat Dangkal', '0.4253', 'Kecil', '233.81', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(91, '-5.96', '131.52', '-4.52', '129.9', '5', 'Kuat', '72', 'Menengah', '0.392', 'Kecil', '239.2', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(92, '-7.24', '114.6', '-8.08', '115.21', '5', 'Kuat', '10', 'Sangat Dangkal', '3.1399', 'Kecil', '114.96', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(93, '-6.91', '125', '-8.64', '122.24', '6.3', 'Kuat', '545', 'Dalam', '0.3646', 'Kecil', '376.34', 'Dalam', '2', 'Tidak Ada atau Jarang Kerusakan'),
(94, '1.01', '123.19', '0.57', '123.98', '5.1', 'Kuat', '47', 'Dangkal', '2.8175', 'Kecil', '99.54', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(95, '-1.9', '122.54', '-1.42', '120.65', '6.9', 'Kuat', '10', 'Sangat Dangkal', '67.8474', 'Besar', '205.95', 'Intermediet', '6', 'Kerusakan Kecil, Retak pada Dinding'),
(96, '-1.89', '122.57', '-1.42', '120.65', '6.8', 'Kuat', '17', 'Dangkal', '67.8483', 'Besar', '210.82', 'Intermediet', '6', 'Kerusakan Kecil, Retak pada Dinding'),
(97, '-1.99', '122.67', '-1.04', '122.77', '4.9', 'Sedang', '10', 'Sangat Dangkal', '1.5249', 'Kecil', '106.04', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(98, '5.36', '126.9', '-3.24', '127.1', '5.3', 'Kuat', '51', 'Dangkal', '0.1019', 'Kecil', '956.79', 'Sangat Dalam', '1', 'Tidak Ada atau Jarang Kerusakan'),
(99, '-9.18', '117.52', '-8.49', '117.41', '5', 'Kuat', '78', 'Menengah', '1.9424', 'Kecil', '77.1', 'Dangkal', '2', 'Tidak Ada atau Jarang Kerusakan'),
(100, '-1.91', '122.48', '-1.42', '120.65', '5.5', 'Kuat', '10', 'Sangat Dangkal', '19.3129', 'Medium', '209.4', 'Intermediet', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(101, '-4.39', '102.03', '-3.87', '102.31', '5', 'Kuat', '43', 'Dangkal', '8.5191', 'Kecil', '65.48', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(102, '-6.28', '131.62', '-3.66', '133.7', '5.1', 'Kuat', '82', 'Menengah', '0.6341', 'Kecil', '370.7', 'Dalam', '1', 'Tidak Ada atau Jarang Kerusakan'),
(103, '2.01', '123.66', '0.57', '123.98', '5.7', 'Kuat', '347', 'Menengah', '0.7987', 'Kecil', '203.95', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(104, '-6.02', '128.81', '-3.35', '128.93', '5', 'Kuat', '310', 'Menengah', '0.8742', 'Kecil', '296.87', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(105, '-5.44', '102.02', '-4.36', '102.96', '5.1', 'Kuat', '20', 'Dangkal', '4.557', 'Kecil', '157.77', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(106, '-1.9', '122.36', '-1.04', '122.77', '4.6', 'Sedang', '10', 'Sangat Dangkal', '0.6468', 'Kecil', '105.85', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(107, '-8.87', '112.48', '-8.08', '111.91', '4.9', 'Sedang', '10', 'Sangat Dangkal', '1.4886', 'Kecil', '108.3', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(108, '-3.39', '139.96', '-2.57', '140.68', '5', 'Kuat', '100', 'Menengah', '0.2822', 'Kecil', '120.52', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(109, '-9.63', '108.51', '-7.78', '108.45', '5.6', 'Kuat', '33', 'Dangkal', '1.6719', 'Kecil', '206.37', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(110, '0.98', '122.17', '0.63', '122.85', '5', 'Kuat', '64', 'Dangkal', '22.7262', 'Medium', '84.29', 'Dangkal', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(111, '-7.28', '117.52', '-8.74', '116.88', '5.3', 'Kuat', '578', 'Dalam', '0.2881', 'Kecil', '215.4', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(112, '0.52', '98.39', '0.8', '99.58', '5.3', 'Kuat', '48', 'Dangkal', '18.6024', 'Medium', '143.01', 'Intermediet', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(113, '0.19', '97.46', '0.8', '99.58', '5.9', 'Kuat', '10', 'Sangat Dangkal', '3.3046', 'Kecil', '242.8', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(114, '0.53', '97.72', '1.4', '99.43', '5.2', 'Kuat', '29', 'Dangkal', '1.8708', 'Kecil', '212.36', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(115, '-6.99', '129.52', '-3.32', '128.4', '5.8', 'Kuat', '161', 'Menengah', '0.1833', 'Kecil', '442.63', 'Dalam', '1', 'Tidak Ada atau Jarang Kerusakan'),
(116, '3.34', '98.5', '3.50118', '98.56457', '2.8', 'Lemah', '17', 'Dangkal', '0.093088', 'Kecil', '21.713', 'Sangat Dangkal', '1', 'Tidak Ada atau Jarang Kerusakan'),
(117, '-9.12', '116.62', '-8.7382', '116.8821', '4.5', 'Sedang', '10', 'Sangat Dangkal', '10.16603', 'Medium', '52.368', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(118, '-5.14', '96.22', '4.61711', '96.8189', '4.5', 'Sedang', '10', 'Sangat Dangkal', '1.770285', 'Kecil', '88.815', 'Dangkal', '2', 'Tidak Ada atau Jarang Kerusakan'),
(119, '5.75', '93.99', '5.496', '95.296', '4.5', 'Sedang', '10', 'Sangat Dangkal', '2.174168', 'Kecil', '148.02', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(120, '0.27', '97.61', '0.8', '99.58', '5.5', 'Kuat', '22', 'Dangkal', '2.0188', 'Kecil', '226.36', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(121, '-6.99', '129.52', '-3.83', '103.52', '5.8', 'Kuat', '161', 'Menengah', '4.9833', 'Kecil', '2899.46', 'Sangat Dalam', '5', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(122, '-6.99', '129.52', '-3.32', '128.4', '5.3', 'Kuat', '161', 'Menengah', '0.1833', 'Kecil', '443.75', 'Dalam', '1', 'Tidak Ada atau Jarang Kerusakan'),
(123, '-8.51', '108.86', '-7.72', '109.02', '5.7', 'Kuat', '10', 'Sangat Dangkal', '6.4582', 'Kecil', '88.23', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(124, '-8.68', '108.82', '-7.78', '108.45', '5.5', 'Kuat', '64', 'Dangkal', '8.8778', 'Kecil', '123.84', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(125, '-11.75', '115.64', '-8.74', '115.18', '5.1', 'Kuat', '10', 'Sangat Dangkal', '0.0941', 'Kecil', '337.54', 'Dalam', '1', 'Tidak Ada atau Jarang Kerusakan'),
(126, '-2.7', '139.67', '-2.57', '140.68', '5.3', 'Kuat', '42', 'Dangkal', '0.7007', 'Kecil', '119.63', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(127, '0.78', '98.47', '1.1648', '97.7038', '47', 'Sangat Kuat', '47', 'Dangkal', '2.37624', 'Kecil', '106.144', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(128, '1.56', '128.27', '-0.6379', '127.5008', '2.5', 'Lemah', '10', 'Sangat Dangkal', '3.687663', 'Kecil', '10.074', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(129, '-1.09', '119.84', '-0.9159', '119.9052', '3.7', 'Sedang', '16', 'Dangkal', '40.55284', 'Medium', '32.138', 'Sangat Dangkal', '5', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(130, '-6.62', '131.91', '-7.98', '131.3', '5.5', 'Kuat', '71', 'Menengah', '1.8169', 'Kecil', '178.97', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(131, '-5.84', '130.77', '-7.98', '131.3', '5.7', 'Kuat', '125', 'Menengah', '4.409', 'Kecil', '273.42', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(132, '-10.5', '120.02', '-10.22', '120.58', '5', 'Kuat', '10', 'Sangat Dangkal', '3.1213', 'Kecil', '67.83', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(133, '-2.22', '138.6', '-1.99', '138.71', '6.3', 'Kuat', '10', 'Sangat Dangkal', '69.0253', 'Besar', '26.11', 'Sangat Dangkal', '6', 'Kerusakan Kecil, Retak pada Dinding'),
(134, '-8.54', '108.64', '-7.78', '108.45', '5.2', 'Kuat', '62', 'Dangkal', '8.967', 'Kecil', '85.67', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(135, '-2.67', '138.76', '-1.99', '138.71', '6.1', 'Kuat', '10', 'Sangat Dangkal', '5.294', 'Kecil', '72.97', 'Dangkal', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(136, '-6.51', '129.27', '-4.52', '129.9', '7.7', 'Kuat', '231', 'Menengah', '3.2889', 'Kecil', '229.9', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(137, '-2.63', '138.59', '-1.99', '138.71', '5.6', 'Kuat', '10', 'Sangat Dangkal', '3.7211', 'Kecil', '71.47', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(138, '-8.19', '108.3', '-7.326', '108.223', '4.2', 'Sedang', '31', 'Dangkal', '2.43372', 'Kecil', '101.152', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(139, '-3.18', '135.65', '-3.3656', '135.4972', '4.8', 'Sedang', '9', 'Sangat Dangkal', '11.29561', 'Medium', '28.162', 'Sangat Dangkal', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(140, '5.33', '96.56', '5.4038', '95.4645', '2.6', 'Lemah', '43', 'Dangkal', '0.022266', 'Kecil', '129.239', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
