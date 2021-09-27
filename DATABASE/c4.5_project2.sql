-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Jun 2021 pada 07.32
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
-- Struktur dari tabel `data_training`
--

CREATE TABLE `data_training` (
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
-- Dumping data untuk tabel `data_training`
--

INSERT INTO `data_training` (`id`, `lat`, `long`, `latsta`, `longsta`, `magnitudo`, `kategori_magnitudo`, `kedalaman`, `kategori_kedalaman`, `PGA`, `kategori_PGA`, `jarakhipo`, `kategori_jarakhipo`, `MMI`, `efek_gempa`) VALUES
(1, '2.82 LU', '127.4 BT', '1.823', '127.78', '5', 'Kuat', '10', 'Sangat Dangkal', '0.8768', 'Kecil', '118.854', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(2, '2.82 LU', '127.4 BT', '1.443', '125.179', '5', 'Kuat', '10', 'Sangat Dangkal', '3.41213', 'Kecil', '290.241', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(3, '1.39 LU', '99.33 Bt', '1.39876', '99.43094', '3.4', 'Sedang', '10', 'Sangat Dangkal', '30.8741', 'Medium', '15.049', 'Sangat Dangkal', '5', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(4, '8.88 LS', '108.72 BT', '-7.784', '108.449', '5.1', 'Kuat', '10', 'Sangat Dangkal', '0.65543', 'Kecil', '125.718', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(5, '8.19 LS', '108.3 BT', '-7.326', '108.223', '4.2', 'Sedang', '31', 'Dangkal', '2.43372', 'Kecil', '101.152', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(6, '1.64 LU', '99.19 BT', '1.1648', '97.7038', '3.2', 'Sedang', '10', 'Sangat Dangkal', '0.42394', 'Kecil', '173.484', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(7, '2.83 LS', '101.53 BT', '-2.4473', '101.2396', '4.9', 'Sedang', '87', 'Menengah', '12.497', 'Medium', '102.039', 'Intermediet', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(8, '1.38 LU', ' 98.04 BT', '1.1648', '97.7038', '5.4', 'Kuat', '41', 'Dangkal', '29.8482', 'Medium', '60.368', 'Dangkal', '5', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(9, '1.38 LU', ' 98.04 BT', '2.0256', '98.9594', '5.4', 'Kuat', '41', 'Dangkal', '15.8872', 'Medium', '131.268', 'Intermediet', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(10, '1.44 LU', '98.05 BT', '4.26685', '96.40398', '4.6', 'Sedang', '25', 'Dangkal', '0.09074', 'Kecil', '363.958', 'Dalam', '1', 'Tidak Ada atau Jarang Kerusakan'),
(11, ' 6.98 LS', '113.58 BT', '-7.7349', '111.7669', '3.3', 'Sedang', '14', 'Dangkal', '0.012004', 'Kecil', '218.451', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(12, '9.58 LS', '120.16 BT', '-9.669', '120.2976', '5.7', 'Kuat', '77', 'Menengah', '40.91085', 'Medium', '79.119', 'Dangkal', '5', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(13, '9.58 LS', '120.16 BT', '-9.6694', '120.2998', '5.7', 'Kuat', '77', 'Menengah', '70.76833', 'Besar', '79.172', 'Dangkal', '6', 'Kerusakan Kecil, Retak pada Dinding'),
(14, '3.18 LS', ' 135.65 BT', '-3.3656', '135.4972', '4.8', 'Sedang', '9', 'Sangat Dangkal', '11.29561', 'Medium', '28.162', 'Sangat Dangkal', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(15, '1.69 LS', '100.31 BT', '-0.9117', '100.4617', '5.5', 'Kuat', '17', 'Dangkal', '83.07635', 'Besar', '89.638', 'Dangkal', '6', 'Kerusakan Kecil, Retak pada Dinding'),
(16, '4.44 LU', '122.70 BT', '0.63', '122.85', '7.3', 'Kuat', '618', 'Dalam', '5.491446', 'Kecil', '749.035', 'Sangat Dalam', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(17, ' 3.48 LS', '128.42 BT', '-3.3183', '128.3947', '3', 'Sedang', '10', 'Sangat Dangkal', '5.440966', 'Kecil', '20.731', 'Sangat Dangkal', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(18, '5.36 LU', ' 94.66 BT', '5.496', '95.296', '5.4', 'Kuat', '89', 'Menengah', '11.09694', 'Medium', '114.598', 'Intermediet', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(19, ' 5.33 LU', '96.56 BT', '5.4038', '95.4645', '2.6', 'Lemah', '43', 'Dangkal', '0.022266', 'Kecil', '129.239', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(20, '9.34 LS', '115.61 BT', '-8.7498', '115.1769', '4.3', 'Sedang', '104', 'Menengah', '1.680226', 'Kecil', '131.981', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(21, ' 3.33 LU', '98.46 BT', '3.5395', '98.674', '5.6', 'Kuat', '10', 'Sangat Dangkal', '73.22529', 'Besar', '34.713', 'Sangat Dangkal', '6', 'Kerusakan Kecil, Retak pada Dinding'),
(22, '3.25 LU', '98.4 BT', '3.5395', '98.674', '2.8', 'Lemah', '10', 'Sangat Dangkal', '0.273964', 'Kecil', '45.361', 'Sangat Dangkal', '1', 'Tidak Ada atau Jarang Kerusakan'),
(23, ' 7.14 LS', ' 105.31 BT', '-6.6135', '105.6928', '5.2', 'Kuat', '10', 'Sangat Dangkal', '16.55667', 'Medium', '72.944', 'Dangkal', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(24, ' 8.27 LS', '119.79 BT', '-8.4866', '119.8867', '4.9', 'Sedang', '160', 'Menengah', '5.68823', 'Kecil', '162.152', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(25, ' 2.82 LU', '128.12 BT', '1.5013', '124.9178', '5.6', 'Kuat', '10', 'Sangat Dangkal', '7.81973', 'Kecil', '384.534', 'Dalam', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(26, '8.5 LS', '105.87 BT', '-7.309', '107.13', '5.1', 'Kuat', '10', 'Sangat Dangkal', '0.202463', 'Kecil', '192.712', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(27, '1.44 LS', '99.77 BT', '-0.9117', '100.4617', '4.2', 'Sedang', '12', 'Dangkal', '1.61859', 'Kecil', '97.352', 'Dangkal', '2', 'Tidak Ada atau Jarang Kerusakan'),
(28, ' 5.77 LS', '133.68 BT', '-4.5299', '136.8929', '5.3', 'Kuat', '76', 'Menengah', '0.647079', 'Kecil', '389.757', 'Dalam', '2', 'Tidak Ada atau Jarang Kerusakan'),
(29, ' 7.97 LS', ' 107.01 BT', '-7.309', '107.13', '4.9', 'Sedang', '14', 'Dangkal', '3.406165', 'Kecil', '75.873', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(30, '9.45 LS', ' 116.39 BT', '-8.635', '116.1705', '4.1', 'Sedang', '36', 'Dangkal', '2.121391', 'Kecil', '100.367', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(31, '3.26 LU', '98.43 BT', '3.50118', '98.56457', '3.9', 'Sedang', '10', 'Sangat Dangkal', '2.247411', 'Kecil', '32.246', 'Sangat Dangkal', '2', 'Tidak Ada atau Jarang Kerusakan'),
(32, '7.11 LS', '125.44 BT', '-8.27', '123', '5.4', 'Kuat', '509', 'Dalam', '0.253893', 'Kecil', '590.774', 'Dalam', '1', 'Tidak Ada atau Jarang Kerusakan'),
(33, '0.65 LS', '131.47 BT', '-0.4102', '130.8211', '4.7', 'Sedang', '10', 'Sangat Dangkal', '0.917585', 'Kecil', '77.437', 'Dangkal', '2', 'Tidak Ada atau Jarang Kerusakan'),
(34, ' 5.87 LS', '102.39 BT', '-5.3526', '102.2767', '5.3', 'Kuat', '23', 'Dangkal', '7.929863', 'Kecil', '63.131', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(35, ' 0.79 LS', '131.19 BT', '-0.4102', '130.8211', '3.5', 'Sedang', '13', 'Dangkal', '0.133454', 'Kecil', '60.191', 'Dangkal', '1', 'Tidak Ada atau Jarang Kerusakan'),
(36, ' 0.79 LS', '131.19 BT', '-0.4102', '130.8211', '3.3', 'Sedang', '12', 'Dangkal', '0.070837', 'Kecil', '71.567', 'Dangkal', '1', 'Tidak Ada atau Jarang Kerusakan'),
(37, ' 8.52 LS', '113.11 BT', '-8.2732', '113.444', '4.9', 'Sedang', '126', 'Menengah', '2.158102', 'Kecil', '134.168', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(38, '7.64 LS ', '106.9 BT', '-7.309', '107.13', '5.2', 'Kuat', '25', 'Dangkal', '17.69199', 'Medium', '51.251', 'Dangkal', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(39, '4.64 LS ', ' 139.24 BT', '-2.57', '140.51', '4.7', 'Sedang', '132', 'Menengah', '0.080265', 'Kecil', '300.151', 'Dalam', '1', 'Tidak Ada atau Jarang Kerusakan'),
(40, '  2.39 LS', '140.78 BT', '-2.51', '140.7', '5.2', 'Kuat', '10', 'Sangat Dangkal', '9.001041', 'Kecil', '18.875', 'Sangat Dangkal', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(41, ' 3.34 LU', '98.5 BT', '3.50118', '98.56457', '4.5', 'Sedang', '10', 'Sangat Dangkal', '7.406908', 'Kecil', '21.713', 'Sangat Dangkal', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(42, '2.5 LS', '99.51 BT', '-2.766', '100.01', '4.1', 'Sedang', '135', 'Menengah', '0.285233', 'Kecil', '66.28', 'Dangkal', '1', 'Tidak Ada atau Jarang Kerusakan'),
(43, ' 9.73 LS', ' 115.62 BT', '-8.7498', '115.1769', '5.2', 'Kuat', '10', 'Sangat Dangkal', '23.89518', 'Medium', '119.821', 'Intermediet', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(44, '1.89 LS', '139.29 BT', '-2.57', '140.51', '5.6', 'Kuat', '14', 'Dangkal', '1.876128', 'Kecil', '155.666', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(45, '8.44 LS ', ' 117.68 BT', '-8.4879', '117.4135', '5.2', 'Kuat', '207', 'Menengah', '2.099006', 'Kecil', '209.171', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(46, ' 3.34 LU', '98.5 BT', '3.50118', '98.56457', '2.8', 'Lemah', '17', 'Dangkal', '0.093088', 'Kecil', '21.713', 'Sangat Dangkal', '1', 'Tidak Ada atau Jarang Kerusakan'),
(47, '7.64 LS ', '106.9 BT', '-7.309', '107.13', '5.1', 'Kuat', '19', 'Dangkal', '17.58478', 'Medium', '51.251', 'Dangkal', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(48, '4.38 LS', ' 138.27 BT', '-2.57', '140.68', '3.8', 'Sedang', '106', 'Menengah', '0.073775', 'Kecil', '350.945', 'Dalam', '1', 'Tidak Ada atau Jarang Kerusakan'),
(49, ' 9.12 LS', ' 116.62 BT', '-8.7382', '116.8821', '4.5', 'Sedang', '10', 'Sangat Dangkal', '10.16603', 'Medium', '52.368', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(50, '7.2 LS', ' 113.09 BT', '-7.2834', '112.7943', '3.7', 'Sedang', '10', 'Sangat Dangkal', '0.326917', 'Kecil', '35.539', 'Sangat Dangkal', '1', 'Tidak Ada atau Jarang Kerusakan'),
(51, '4.67 LS', '121.94 BT', '-4.1718', '121.6513', '3.3', 'Sedang', '10', 'Sangat Dangkal', '0.498221', 'Kecil', '64.692', 'Dangkal', '2', 'Tidak Ada atau Jarang Kerusakan'),
(52, '5.14 LS', '96.22 BT', '4.61711', '96.8189', '4.5', 'Sedang', '10', 'Sangat Dangkal', '1.770285', 'Kecil', '88.815', 'Dangkal', '2', 'Tidak Ada atau Jarang Kerusakan'),
(53, '1.31 LU', ' 122.45 BT', '0.9885', '122.3654', '4.9', 'Sedang', '7', 'Sangat Dangkal', '4.240019', 'Kecil', '37.559', 'Sangat Dangkal', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(54, '1.44 LU', '126.62 BT', '0.7719', '127.3667', '4.6', 'Sedang', '15', 'Dangkal', '0.656323', 'Kecil', '112.224', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(55, '6.46 LS', '130.12 BT', '-4.5222', '129.9044', '5.4', 'Kuat', '155', 'Menengah', '0.630677', 'Kecil', '266.2', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(56, '0.74 LS', '131.15 BT', '-0.4102', '130.8211', '3.9', 'Sedang', '12', 'Dangkal', '0.143349', 'Kecil', '53.075', 'Dangkal', '1', 'Tidak Ada atau Jarang Kerusakan'),
(57, '1.44 LU', '126.62 BT', '0.7719', '127.3667', '4', 'Sedang', '23', 'Dangkal', '0.685493', 'Kecil', '112.224', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(58, '2.83 LS', '101.53 BT', '-2.4473', '101.2396', '4.1', 'Sedang', '41', 'Dangkal', '11.50312', 'Medium', '102.039', 'Intermediet', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(59, ' 0.81 LS', '121.42 BT', '-1.0411', '122.771', '3.9', 'Sedang', '10', 'Sangat Dangkal', '0.286818', 'Kecil', '152.467', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(60, '5.75 LU', '93.99 BT', '5.496', '95.296', '4.5', 'Sedang', '10', 'Sangat Dangkal', '2.174168', 'Kecil', '148.02', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(61, ' 0.81 LS', '121.42 BT', '-1.0411', '122.771', '4.7', 'Sedang', '12', 'Dangkal', '2.043656', 'Kecil', '152.467', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(62, '1.89 LS', '139.29 BT', '-2.57', '140.51', '4.8', 'Sedang', '12', 'Dangkal', '0.381482', 'Kecil', '155.666', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(63, '0.96 LS', '119.88 BT', '-0.9053', '119.8368', '2.9', 'Lemah', '6', 'Sangat Dangkal', '2.4397', 'Kecil', '9.791', 'Sangat Dangkal', '2', 'Tidak Ada atau Jarang Kerusakan'),
(64, '7.25 LS', ' 106.05 BT', '-6.3615', '106.2511', '3.8', 'Sedang', '30', 'Dangkal', '0.424904', 'Kecil', '105.475', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(65, '11.61 LS', '114.55 BT', '-8.738', '115.179', '5.4', 'Kuat', '10', 'Sangat Dangkal', '1.791136', 'Kecil', '326.501', 'Dalam', '2', 'Tidak Ada atau Jarang Kerusakan'),
(66, ' 3.34 LU', '98.5 BT', '3.50118', '98.56457', '4.8', 'Sedang', '5', 'Sangat Dangkal', '0.360963', 'Kecil', '21.713', 'Sangat Dangkal', '1', 'Tidak Ada atau Jarang Kerusakan'),
(67, '5.22 LU', '96.16 BT', '5.4038', '95.4645', '3.8', 'Sedang', '10', 'Sangat Dangkal', '1.791136', 'Kecil', '80.475', 'Dangkal', '2', 'Tidak Ada atau Jarang Kerusakan'),
(68, ' 3.48 LS', '128.42 BT', '-3.3183', '128.3947', '5', 'Kuat', '144', 'Menengah', '0.01872', 'Kecil', '20.731', 'Sangat Dangkal', '1', 'Tidak Ada atau Jarang Kerusakan'),
(69, ' 6.23 LS', '104.32 BT', '-5.5236', '104.4959', '5.3', 'Kuat', '11', 'Dangkal', '2.404168', 'Kecil', '81.551', 'Dangkal', '2', 'Tidak Ada atau Jarang Kerusakan'),
(70, ' 9.73 LS', ' 115.62 BT', '-8.7498', '115.1769', '6.4', 'Kuat', '117', 'Menengah', '62.17794', 'Besar', '119.821', 'Intermediet', '5', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(71, '6.46 LS', '130.12 BT', '-4.5222', '129.9044', '5.2', 'Kuat', '171', 'Menengah', '0.196121', 'Kecil', '266.2', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(72, '2.94 LS', '136.92 BT', '-1.8755', '136.2399', '5.5', 'Kuat', '90', 'Menengah', '4.539547', 'Kecil', '166.61', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(73, '5.05 LS', '133.36 BT', '-2.919', '132.265', '4.5', 'Sedang', '36', 'Dangkal', '0.030944', 'Kecil', '268.367', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(74, '8.05 LS', '107.91 BT', '-7.784', '108.449', '4.4', 'Sedang', '20', 'Dangkal', '2.005149', 'Kecil', '69.651', 'Dangkal', '2', 'Tidak Ada atau Jarang Kerusakan'),
(75, ' 0.54 LU', '98.38 BT', '-0.0547', '98.28', '5', 'Kuat', '50', 'Dangkal', '1.224955', 'Kecil', '83.551', 'Dangkal', '2', 'Tidak Ada atau Jarang Kerusakan'),
(76, '2.76 LU', '126.1 BT', '3.686', '125.5286', '5.4', 'Kuat', '115', 'Menengah', '11.92994', 'Medium', '166.772', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(77, '4.34 LS', '102.41 BT', '-3.865', '102.312', '4.9', 'Sedang', '34', 'Dangkal', '11.02789', 'Medium', '63.673', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(78, '0.31 LU', '120.59 BT', '0.3374', '119.898', '5.6', 'Kuat', '71', 'Menengah', '22.06087', 'Medium', '104.644', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(79, '4.07 LS', '134.13 BT', '-3.3656', '135.4972', '4.7', 'Sedang', '125', 'Menengah', '0.08323', 'Kecil', '211.588', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(80, '2.83 LS', '101.53 BT', '-2.4473', '101.2396', '5.4', 'Kuat', '59', 'Dangkal', '14.5337', 'Medium', '97.515', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(81, '2.82 LU', '127.4 BT', '1.823', '127.78', '3.9', 'Sedang', '8', 'Sangat Dangkal', '9.28441', 'Kecil', '19.963', 'Sangat Dangkal', '2', 'Tidak Ada atau Jarang Kerusakan'),
(82, '3.49 LS', '102.51 BT', '-3.7611', '102.2714', '3.2', 'Sedang', '10', 'Sangat Dangkal', '0.38513', 'Kecil', '41.315', 'Sangat Dangkal', '1', 'Tidak Ada atau Jarang Kerusakan'),
(83, '1.89 LS', '139.29 BT', '-2.57', '140.51', '3.7', 'Sedang', '14', 'Dangkal', '14.5021', 'Medium', '48.448', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(84, ' 9.73 LS', ' 115.62 BT', '-8.7498', '115.1769', '4.4', 'Sedang', '76', 'Menengah', '4.5616', 'Kecil', '100.951', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(85, ' 9.73 LS', ' 115.62 BT', '-8.7498', '115.1769', '4.7', 'Sedang', '72', 'Menengah', '4.8687', 'Kecil', '107.706', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(86, '8.1 LS', '112.59 BT', '-8.1521', '112.4506', '3.7', 'Sedang', '5', 'Sangat Dangkal', '15.8727', 'Medium', '17.259', 'Sangat Dangkal', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(87, '3.65 LS', '128.17 BT', '-3.6871', '128.1942', '3.2', 'Sedang', '7', 'Sangat Dangkal', '7.06286', 'Kecil', '8.558', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(88, '5.66 LU', ' 127.23 BT', '4.0079', '126.67', '5.8', 'Kuat', '71', 'Menengah', '0.57782', 'Kecil', '206.238', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(89, '5.66 LU', ' 127.23 BT', '4.0079', '126.67', '5.3', 'Kuat', '66', 'Menengah', '0.2632', 'Kecil', '226.325', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(90, '1.44 LS', '99.77 BT', '-0.9117', '100.4617', '3.7', 'Sedang', '34', 'Dangkal', '4.34419', 'Kecil', '81.723', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(91, '0.81 LS', '131.04 BT', '-0.8628', '131.2591', '4.1', 'Sedang', '2', 'Sangat Dangkal', '2.44051', 'Kecil', '25.106', 'Sangat Dangkal', '2', 'Tidak Ada atau Jarang Kerusakan'),
(92, '5.66 LU', ' 127.23 BT', '4.0079', '126.67', '5.2', 'Kuat', '11', 'Dangkal', '0.08613', 'Kecil', '195.695', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(93, '6.46 LS', '130.12 BT', '-4.5222', '129.9044', '5.2', 'Kuat', '138', 'Menengah', '0.5052', 'Kecil', '298.385', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(94, '5.66 LU', ' 127.23 BT', '4.0079', '126.67', '5', 'Kuat', '109', 'Menengah', '0.11844', 'Kecil', '231.573', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(95, '2.76 LU', '126.1 BT', '3.686', '125.5286', '5.4', 'Kuat', '182', 'Menengah', '1.85111', 'Kecil', '335.577', 'Dalam', '2', 'Tidak Ada atau Jarang Kerusakan'),
(96, '2.76 LU', '126.1 BT', '3.686', '125.5286', '5', 'Kuat', '86', 'Menengah', '1.86195', 'Kecil', '293.192', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(97, '5.53 LU', ' 127.2 BT', '1.443', '125.179', '5.2', 'Kuat', '97', 'Menengah', '2.03407', 'Kecil', '515.304', 'Dalam', '2', 'Tidak Ada atau Jarang Kerusakan'),
(98, '8.82 LS', ' 118.93 BT', '-8.5427', '118.6929', '4.7', 'Sedang', '100', 'Menengah', '6.21648', 'Kecil', '107.887', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(99, '1.56 LU', '128.27 BT', '-0.6379', '127.5008', '4.5', 'Sedang', '59', 'Dangkal', '0.012559', 'Kecil', '265.124', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(100, ' 1.47 LS', '134.16 BT', '-1.5107', '134.1773', '3.6', 'Sedang', '16', 'Dangkal', '10.3749', 'Medium', '16.736', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(101, '1.09 LS', '119.84 BT', '-0.9159', '119.9052', '4.7', 'Sedang', '19', 'Dangkal', '240.799', 'Sangat Besar', '28.051', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(102, '2.12 LS', '99.55 BT', '-0.9967', '100.3709', '5.3', 'Kuat', '20', 'Dangkal', '5.91785', 'Kecil', '155.723', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(103, '8.82 LS', ' 118.93 BT', '-8.5427', '118.6929', '4.5', 'Sedang', '113', 'Menengah', '3.12908', 'Kecil', '115.705', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(104, '1.09 LS', '119.84 BT', '-0.9159', '119.9052', '3.2', 'Sedang', '8', 'Sangat Dangkal', '33.1551', 'Medium', '25.082', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(105, '8.1 LS', '107.86 BT', '-7.215', '107.902', '5.4', 'Kuat', '13', 'Dangkal', '40.0489', 'Medium', '99.201', 'Dangkal', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(106, '5.53 LU', ' 127.2 BT', '1.443', '125.179', '5.3', 'Kuat', '17', 'Dangkal', '5.47351', 'Kecil', '172.479', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(107, '2.82 LU', '127.4 BT', '1.823', '127.78', '5', 'Kuat', '58', 'Dangkal', '0.54424', 'Kecil', '80.603', 'Dangkal', '1', 'Tidak Ada atau Jarang Kerusakan'),
(108, '8.83 LS', '112.49 BT', '-8.1521', '112.4506', '4.7', 'Sedang', '29', 'Dangkal', '3.5753', 'Kecil', '80.76', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(109, '2.76 LU', '126.1 BT', '3.686', '125.5286', '7.1', 'Kuat', '10', 'Sangat Dangkal', '50.1241', 'Besar', '204.651', 'Intermediet', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(110, '5.45 LU', '125.14 BT', '1.5013', '124.9178', '7.3', 'Kuat', '43', 'Dangkal', '27.2434', 'Medium', '440.504', 'Dalam', '3', 'Tidak Ada atau Jarang Kerusakan'),
(111, '0.77 LU', '99.56 BT', '0.7955', '99.57963', '5.1', 'Kuat', '10', 'Sangat Dangkal', '52.314', 'Besar', '10.619', 'Sangat Dangkal', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(112, '9.73 LS', '114.93 BT', '-8.6774', '115.2097', '4.7', 'Sedang', '29', 'Dangkal', '3.86102', 'Kecil', '124.323', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(113, '0.78 LU', '98.47 BT', '1.1648', '97.7038', '47', 'Sangat Kuat', '47', 'Dangkal', '2.37624', 'Kecil', '106.144', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(114, '2.12 LS', '99.55 BT', '-0.9967', '100.3709', '3.8', 'Sedang', '33', 'Dangkal', '1.398535', 'Kecil', '68.8', 'Dangkal', '2', 'Tidak Ada atau Jarang Kerusakan'),
(115, '8.05 LS', '107.91 BT', '-7.784', '108.449', '5.4', 'Kuat', '12', 'Dangkal', '0.158655', 'Kecil', '263.421', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(116, '6.99 LS', '130.48 BT', '-3.2389', '127.0998', '5', 'Kuat', '77', 'Menengah', '0.030913', 'Kecil', '565.741', 'Dalam', '1', 'Tidak Ada atau Jarang Kerusakan'),
(117, '0.77 LU', '99.56 BT', '0.7955', '99.57963', '4.6', 'Sedang', '10', 'Sangat Dangkal', '30.7973', 'Medium', '13.958', 'Sangat Dangkal', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(118, '1.56 LU', '128.27 BT', '-0.6379', '127.5008', '2.5', 'Lemah', '10', 'Sangat Dangkal', '3.687663', 'Kecil', '10.074', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(119, '3.92 LU', '95.86 BT', '4.26685', '96.40398', '4.9', 'Sedang', '23', 'Dangkal', '11.0808', 'Medium', '75.215', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(120, ' 3.46 LS', '128.92 BT', '-3.3461', '128.9284', '4.1', 'Sedang', '10', 'Sangat Dangkal', '50.24005', 'Besar', '16.145', 'Sangat Dangkal', '5', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(121, '0.21 LU', '119.92 BT', '0.3374', '119.898', '3.9', 'Sedang', '5', 'Sangat Dangkal', '0.816935', 'Kecil', '15.197', 'Sangat Dangkal', '1', 'Tidak Ada atau Jarang Kerusakan'),
(122, '7.84 LS', '107.07 BT', '-6.6981', '106.9349', '5', 'Kuat', '29', 'Dangkal', '3.54728', 'Kecil', '130.888', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(123, '1.09 LS', '119.84 BT', '-0.9159', '119.9052', '3.7', 'Sedang', '16', 'Dangkal', '40.55284', 'Medium', '32.138', 'Sangat Dangkal', '5', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(124, '6.46 LS', '130.12 BT', '-4.5222', '129.9044', '4.6', 'Sedang', '161', 'Menengah', '0.321698', 'Kecil', '166.194', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(125, '6.78 LS', '107.45 BT', '-6.82', '107.61', '2.8', 'Lemah', '31', 'Dangkal', '0.548223', 'Kecil', '36.002', 'Sangat Dangkal', '1', 'Tidak Ada atau Jarang Kerusakan'),
(126, '1.56 LU', '128.27 BT', '-0.6379', '127.5008', '2.7', 'Lemah', '2', 'Sangat Dangkal', '5.455069', 'Kecil', '10.295', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(127, ' 8.09 LS', '115.3 BT', '-8.0848', '115.2126', '2.4', 'Lemah', '12', 'Dangkal', '0.276471', 'Kecil', '15.442', 'Sangat Dangkal', '1', 'Tidak Ada atau Jarang Kerusakan'),
(128, ' 8.09 LS', '115.3 BT', '-8.0848', '115.2126', '2.5', 'Lemah', '17', 'Dangkal', '0.123204', 'Kecil', '24.185', 'Sangat Dangkal', '1', 'Tidak Ada atau Jarang Kerusakan'),
(129, '3.45 LS', '120.77 BT', '-3.9646', '119.7691', '4.1', 'Sedang', '20', 'Dangkal', '0.255922', 'Kecil', '126.515', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(130, '1.61 LU', '124.61 BT', '1.4434', '124.8389', '3.4', 'Sedang', '32', 'Dangkal', '14.86004', 'Medium', '44.85', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(131, ' 8.61 LS', '123.45 BT', '-8.7497', '121.6903', '2.8', 'Lemah', '10', 'Sangat Dangkal', '0.012932', 'Kecil', '196.196', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(132, '1.09 LS', '119.84 BT', '-0.9159', '119.9052', '5.7', 'Kuat', '10', 'Sangat Dangkal', '16.96545', 'Medium', '325.749', 'Dalam', '3', 'Tidak Ada atau Jarang Kerusakan'),
(133, '0.4 LU', ' 98.88 BT', '-0.0547', '98.28', '5.2', 'Kuat', '58', 'Dangkal', '0.963362', 'Kecil', '84.16', 'Dangkal', '1', 'Tidak Ada atau Jarang Kerusakan'),
(134, '9.63 LS', '119.55 BT', '-9.6411', '119.3911', '4.4', 'Sedang', '25', 'Dangkal', '3.044262', 'Kecil', '30.62', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(135, '0.48 LU', '121.16 BT', '0.4771', '121.9406', '4.9', 'Sedang', '34', 'Dangkal', '3.15153', 'Kecil', '93.079', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(136, '1.33 LS', '120.41 BT', '0.3374', '119.898', '6.6', 'Kuat', '10', 'Sangat Dangkal', '5.481949', 'Kecil', '193.869', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(137, '1.1 LS', '120.09 BT', '0.3374', '119.898', '4.4', 'Sedang', '9', 'Sangat Dangkal', '0.140186', 'Kecil', '161.22', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(138, '1.07 LS', '120.61 BT', '-1.42', '120.65', '4.9', 'Sedang', '14', 'Dangkal', '5.07211', 'Kecil', '41.534', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(139, '2.56 LU', '128.44 BT', '1.823', '127.78', '5', 'Kuat', '219', 'Menengah', '0.33082', 'Kecil', '244.991', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(140, ' 8.09 LS', '115.3 BT', '-8.0848', '115.2126', '2.8', 'Lemah', '2', 'Sangat Dangkal', '0.20463', 'Kecil', '8.837', 'Sangat Dangkal', '1', 'Tidak Ada atau Jarang Kerusakan'),
(141, ' 8.23 LS', '121.66 BT', '-8.4122', '123.0008', '4.9', 'Sedang', '17', 'Dangkal', '0.70276', 'Kecil', '151.161', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(142, '7.64 LS', '129.36 BT', '-4.5222', '129.9044', '5', 'Kuat', '116', 'Menengah', '0.2236', 'Kecil', '369.965', 'Dalam', '1', 'Tidak Ada atau Jarang Kerusakan'),
(143, ' 1.22 LS ', '120.38 BT', '-1.42', '120.65', '5.2', 'Kuat', '10', 'Sangat Dangkal', '21.0213', 'Medium', '38.614', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(144, '8.12 LS', '107.94 BT', '-7.784', '108.449', '4.5', 'Sedang', '33', 'Dangkal', '3.56236', 'Kecil', '75.314', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(145, '0.86 LS ', '120.11 BT', '-0.9159', '119.9052', '3.1', 'Sedang', '10', 'Sangat Dangkal', '162.486', 'Sangat Besar', '25.598', 'Sangat Dangkal', '6', 'Kerusakan Kecil, Retak pada Dinding'),
(146, '1.22 LS', '120.4 BT', '-1.42', '120.65', '4.3', 'Sedang', '10', 'Sangat Dangkal', '14.2158', 'Medium', '36.918', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(147, ' 8.11 LS ', '115.39 BT', '-8.0848', '115.2126', '2.7', 'Lemah', '7', 'Sangat Dangkal', '0.01998', 'Kecil', '21.085', 'Sangat Dangkal', '1', 'Tidak Ada atau Jarang Kerusakan'),
(148, '8.03 LS', '119.11 BT', '-8.5427', '118.6929', '4', 'Sedang', '27', 'Dangkal', '6.29733', 'Kecil', '78.168', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(149, ' 8.35 LS ', '118.04 BT', '-8.5018', '118.3121', '4.2', 'Sedang', '24', 'Dangkal', '3.09922', 'Kecil', '42.103', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(150, '1.13 LS', '120.49 BT', '-1.42', '120.65', '3.9', 'Sedang', '35', 'Dangkal', '0.50711', 'Kecil', '50.76', 'Dangkal', '2', 'Tidak Ada atau Jarang Kerusakan'),
(151, '8.83 LS', '119.17 BT', '-8.5427', '118.6929', '4.6', 'Sedang', '135', 'Menengah', '3.55275', 'Kecil', '148.477', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(152, '4.61 LS', '102.26 BT', '-5.3526', '102.2767', '4.8', 'Sedang', '42', 'Dangkal', '5.85285', 'Kecil', '92.531', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(153, '2.62 LS ', '121.69 BT', '-4.1718', '121.6513', '5', 'Kuat', '102', 'Menengah', '0.34037', 'Kecil', '200.231', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(154, '3.17 LS', '101.2 BT', '-3.1415', '102.2396', '4.2', 'Sedang', '17', 'Dangkal', '0.17617', 'Kecil', '116.685', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(155, ' 1.6 LU', '97.74 BT', '1.1648', '97.7038', '3.9', 'Sedang', '34', 'Dangkal', '0.58674', 'Kecil', '59.209', 'Dangkal', '1', 'Tidak Ada atau Jarang Kerusakan'),
(156, '2.1 LU', '128.54 BT', '1.823', '127.78', '4.9', 'Sedang', '5', 'Sangat Dangkal', '1.37415', 'Kecil', '89.928', 'Dangkal', '2', 'Tidak Ada atau Jarang Kerusakan'),
(157, '4.23 LS ', '102.01 BT', '-3.865', '102.312', '5.2', 'Kuat', '63', 'Dangkal', '37.0899', 'Medium', '82.062', 'Dangkal', '5', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(158, '2.1 LS', '140.36 BT', '-2.57', '140.51', '4.5', 'Sedang', '15', 'Dangkal', '5.27821', 'Kecil', '56.78', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(159, '0.94 LU', '123.19 BT', '0.63', '122.85', '4.7', 'Sedang', '29', 'Dangkal', '19.2889', 'Medium', '58.731', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(160, '1.52 LU', '126.82 BT', '1.823', '127.78', '5.1', 'Kuat', '56', 'Dangkal', '2.25759', 'Kecil', '124.989', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(161, '2.28 LU', '127.2 BT', '1.823', '127.78', '5.1', 'Kuat', '61', 'Dangkal', '1.738615', 'Kecil', '102.171', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(162, '1.26 LS', '120.4 BT', '-1.42', '120.65', '3.6', 'Sedang', '16', 'Dangkal', '1.757554', 'Kecil', '36.626', 'Sangat Dangkal', '2', 'Tidak Ada atau Jarang Kerusakan'),
(163, '8.71 LS', '118.36 BT', '-8.5427', '118.6929', '4.5', 'Sedang', '119', 'Menengah', '2.577097', 'Kecil', '125.984', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(164, '5.29 LS', '123.04 BT', '-5.4875', '122.5704', '4.2', 'Sedang', '22', 'Dangkal', '0.546688', 'Kecil', '60.677', 'Dangkal', '1', 'Tidak Ada atau Jarang Kerusakan'),
(165, '3.86 LS', ' 129.88 BT', '-4.5222', '129.9044', '4', 'Sedang', '11', 'Dangkal', '3.563262', 'Kecil', '74.375', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(166, '0.64 LS', '119.89 BT', '-1.42', '120.65', '3.3', 'Sedang', '6', 'Sangat Dangkal', '0.115136', 'Kecil', '121.032', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(167, '2.68 LU ', '98.88 BT', '1.1648', '97.7038', '5.2', 'Kuat', '153', 'Menengah', '1.195716', 'Kecil', '262.186', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(168, '1.03 LS', '131.11 BT', '-0.4102', '130.8211', '4', 'Sedang', '14', 'Dangkal', '0.076859', 'Kecil', '77.185', 'Dangkal', '1', 'Tidak Ada atau Jarang Kerusakan'),
(169, '9.19 LS', '113.03 BT', '-8.2732', '113.444', '4.3', 'Sedang', '8', 'Sangat Dangkal', '0.66676', 'Kecil', '111.946', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(170, '8.15 LS', '107.22 BT', '-7.784', '108.449', '4.9', 'Sedang', '18', 'Dangkal', '0.953326', 'Kecil', '143.473', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(171, '8.74 LS', '110.55 BT', '-7.561', '110.8541', '4.2', 'Sedang', '30', 'Dangkal', '0.146772', 'Kecil', '138.442', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(172, '0.41 LU', '122.05 BT', '-1.42', '120.65', '6', 'Kuat', '100', 'Menengah', '2.810191', 'Kecil', '274.611', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(173, '7.36 LS', '110.06 BT', '-7.668', '109.668', '3', 'Sedang', '21', 'Dangkal', '0.022662', 'Kecil', '59.187', 'Dangkal', '1', 'Tidak Ada atau Jarang Kerusakan'),
(174, '0.74 LU', ' 123.27 BT', '1.537', '124.9221', '4.8', 'Sedang', '34', 'Dangkal', '0.308879', 'Kecil', '206.426', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(175, '2.53 LS', '140.68 BT', '-2.51', '140.7', '3.4', 'Sedang', '20', 'Dangkal', '9.666902', 'Kecil', '20.245', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(176, '5.76 LS', '103.85 BT', '-5.5236', '104.4959', '4.5', 'Sedang', '15', 'Dangkal', '1.409987', 'Kecil', '77.811', 'Dangkal', '2', 'Tidak Ada atau Jarang Kerusakan'),
(177, '0.31 LU', ' 120.11 BT', '0.3374', '119.898', '5.4', 'Kuat', '37', 'Dangkal', '44.4266', 'Medium', '43.955', 'Sangat Dangkal', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(178, '6.82 LS', '112.48 BT', '-7.664', '112.6891', '4.2', 'Sedang', '5', 'Sangat Dangkal', '0.194519', 'Kecil', '96.646', 'Dangkal', '1', 'Tidak Ada atau Jarang Kerusakan'),
(179, '3.47 LS', '125.96 BT', '-3.7113', '128.0956', '5.8', 'Kuat', '32', 'Dangkal', '28.60419', 'Medium', '240.704', 'Intermediet', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(180, '3.9 LS', '129.03 BT', '-3.7113', '128.0956', '4.7', 'Sedang', '10', 'Sangat Dangkal', '16.81201', 'Medium', '106.277', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(181, '4.5 LS', '101.86 BT', '-3.865', '102.312', '5.4', 'Kuat', '12', 'Dangkal', '18.00405', 'Medium', '87.346', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(182, ' 0.66 LS ', '131.15 BT', '-0.8628', '131.2591', '4.4', 'Sedang', '29', 'Dangkal', '2.462218', 'Kecil', '38.66', 'Sangat Dangkal', '2', 'Tidak Ada atau Jarang Kerusakan'),
(183, '2.74 LS', '102.23 BT', '-3.1415', '102.2396', '5.3', 'Kuat', '176', 'Menengah', '0.880743', 'Kecil', '181.559', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(184, '4.58 LU', '95.44 BT', '5.4038', '95.4645', '4.5', 'Sedang', '51', 'Dangkal', '4.45846', 'Kecil', '104.738', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(185, '1.4 LU', '99.46 BT', '0.7955', '99.57963', '3.3', 'Sedang', '23', 'Dangkal', '0.17436', 'Kecil', '72.164', 'Dangkal', '1', 'Tidak Ada atau Jarang Kerusakan'),
(186, '3.64 LS ', '102.57 BT', '-3.6506', '102.593', '3', 'Sedang', '1', 'Sangat Dangkal', '10.0592', 'Medium', '2.984', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(187, '8.41 LS', '108.99 BT', '-7.7185', '109.0147', '5.3', 'Kuat', '22', 'Dangkal', '20.2018', 'Medium', '79.894', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(188, '6.13 LU', '125.46 BT', '3.686', '125.5286', '5.9', 'Kuat', '70', 'Menengah', '3.16933', 'Kecil', '280.273', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(189, '8.18 LS', '118.16 BT', '-8.5018', '118.3121', '3.8', 'Sedang', '15', 'Dangkal', '5.36862', 'Kecil', '42.269', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(190, '3.64 LS', '102.57 BT', '-3.6506', '102.593', '2.8', 'Lemah', '1', 'Sangat Dangkal', '7.438', 'Kecil', '2.984', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(191, '1.18 LS', '120.34 BT', '-1.42', '120.65', '3.8', 'Sedang', '21', 'Dangkal', '5.36734', 'Kecil', '48.319', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(192, '0.64 LS ', '133.86 BT', '-1.5107', '134.1773', '3.5', 'Sedang', '15', 'Dangkal', '0.56068', 'Kecil', '103.953', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(193, '8.16 LS', '103.88 BT', '-5.0175', '104.0589', '5.2', 'Kuat', '55', 'Dangkal', '1.51845', 'Kecil', '353.685', 'Dalam', '2', 'Tidak Ada atau Jarang Kerusakan'),
(194, '4.16 LS ', '123.17 BT', '-5.4875', '122.5704', '4', 'Sedang', '32', 'Dangkal', '0.07082', 'Kecil', '164.822', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(195, '9.42 LS', '116.7 BT', '-8.7382', '116.8821', '4.6', 'Sedang', '33', 'Dangkal', '6.12948', 'Kecil', '85', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(196, '3.75 LS', '101.56 BT', '-3.7611', '102.2714', '6.6', 'Kuat', '10', 'Sangat Dangkal', '69.1673', 'Besar', '79.606', 'Dangkal', '5', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(197, '7.85 LS', '116.03 BT', '-8.562', '116.167', '5.1', 'Kuat', '317', 'Menengah', '1.71688', 'Kecil', '327.057', 'Dalam', '2', 'Tidak Ada atau Jarang Kerusakan'),
(198, '3.75 LS', '140.47 BT', '-2.57', '140.51', '5.5', 'Kuat', '58', 'Dangkal', '2.53912', 'Kecil', '143.316', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(199, '7.33 LS', '129.28 BT', '-5.6639', '132.7361', '5', 'Kuat', '156', 'Menengah', '0.267553', 'Kecil', '453.55', 'Dalam', '1', 'Tidak Ada atau Jarang Kerusakan'),
(200, ' 5.34 LS', '123.52 BT', '-5.4875', '122.5704', '4', 'Sedang', '30', 'Dangkal', '0.14226', 'Kecil', '110.808', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(201, '5.64 LS', '122.66 BT', '-5.4875', '122.5704', '3.4', 'Sedang', '5', 'Sangat Dangkal', '0.74729', 'Kecil', '20.26', 'Sangat Dangkal', '1', 'Tidak Ada atau Jarang Kerusakan'),
(202, '1.28 LS', ' 120.43 BT', '-1.42', '120.65', '4.7', 'Sedang', '10', 'Sangat Dangkal', '22.9382', 'Medium', '30.624', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(203, ' 2.16 LS', '120.55 BT', '-2.5546', '120.324', '4.3', 'Sedang', '14', 'Dangkal', '22.514', 'Medium', '52.381', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(204, '1.28 LU', '122.65 BT', '0.9885', '122.3654', '4.7', 'Sedang', '15', 'Dangkal', '1.91357', 'Kecil', '47.644', 'Sangat Dangkal', '2', 'Tidak Ada atau Jarang Kerusakan'),
(205, '2.23 LS', ' 118.76 BT', '-0.9159', '119.9052', '4.8', 'Sedang', '20', 'Dangkal', '0.49544', 'Kecil', '193.482', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(206, '7.02 LS', '108.26 BT', '-6.7344', '108.2631', '3', 'Sedang', '11', 'Dangkal', '0.03275', 'Kecil', '33.558', 'Sangat Dangkal', '1', 'Tidak Ada atau Jarang Kerusakan'),
(207, '1.3 LS', '99.66 BT', '-0.9117', '100.4617', '6.2', 'Kuat', '10', 'Sangat Dangkal', '132.8717', 'Besar', '99.381', 'Dangkal', '6', 'Kerusakan Kecil, Retak pada Dinding'),
(208, '0.17 LS', '125.2 BT', '1.443', '125.179', '5.4', 'Kuat', '10', 'Sangat Dangkal', '11.51288', 'Medium', '179.337', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(209, ' 6.23 LS', '104.71 BT', '-5.5236', '104.4959', '5.4', 'Kuat', '65', 'Dangkal', '4.199423', 'Kecil', '104.582', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(210, '7.18 LS', '130.09 BT', '-5.6639', '132.7361', '5', 'Kuat', '94', 'Menengah', '0.1076', 'Kecil', '351.321', 'Dalam', '1', 'Tidak Ada atau Jarang Kerusakan'),
(211, '1.24 LS ', '99.73 BT', '-0.9967', '100.3709', '4.2', 'Sedang', '20', 'Dangkal', '0.878675', 'Kecil', '78.678', 'Dangkal', '1', 'Tidak Ada atau Jarang Kerusakan'),
(212, '6.78 LS', '130.30 BT', '-4.5222', '129.9044', '4.8', 'Sedang', '100', 'Menengah', '0.164661', 'Kecil', '273.377', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(213, '4.52 LS', '129.83 BT', '-4.5222', '129.9044', '2.7', 'Lemah', '10', 'Sangat Dangkal', '16.48561', 'Medium', '12.972', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(214, '4.94 LS', '133.94 BT', '-3.6616', '133.7044', '5.1', 'Kuat', '70', 'Menengah', '0.425099', 'Kecil', '160.375', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(215, '4.29 LS', '134.37 BT', '-3.6616', '133.7044', '5.2', 'Kuat', '10', 'Sangat Dangkal', '0.824096', 'Kecil', '102.097', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(216, '1.43 LU', '99.37 BT', '1.39876', '99.43094', '5', 'Kuat', '187', 'Menengah', '0.650558', 'Kecil', '187.154', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(217, '8.22 LS', '119.29 BT', '-8.5018', '118.3121', '4.6', 'Sedang', '29', 'Dangkal', '0.752548', 'Kecil', '116.626', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(218, ' 9.76 LS', '124.78 BT', '-10.168', '123.67', '4.6', 'Sedang', '13', 'Dangkal', '0.137258', 'Kecil', '131.912', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(219, ' 2.62 LS', '140.37 BT', '-2.57', '140.51', '3.8', 'Sedang', '36', 'Dangkal', '8.333727', 'Kecil', '39.602', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(220, '2.58 LS ', '140.67 BT', '-2.57', '140.68', '2.9', 'Lemah', '14', 'Dangkal', '0.979291', 'Kecil', '14.088', 'Sangat Dangkal', '1', 'Tidak Ada atau Jarang Kerusakan'),
(221, '10.4 LS ', '118.86 BT', '-9.6694', '120.2998', '5.2', 'Kuat', '65', 'Dangkal', '6.788421', 'Kecil', '190.639', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(222, '6.31 LS', '112.96 BT', '-7.2834', '112.7943', '5.2', 'Kuat', '610', 'Dalam', '0.395439', 'Kecil', '619.768', 'Dalam', '1', 'Tidak Ada atau Jarang Kerusakan'),
(223, ' 1.1 LS', '136.41 BT', '-1.1907', '136.1038', '4.2', 'Sedang', '11', 'Dangkal', '4.80832', 'Kecil', '37.115', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(224, '0.97 LS', '136.19 BT', '-1.1907', '136.1038', '3.9', 'Sedang', '41', 'Dangkal', '11.96321', 'Medium', '48.71', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(225, '8.48 LS', '108.95 BT', '-7.7185', '109.0147', '4.7', 'Sedang', '37', 'Dangkal', '6.995758', 'Kecil', '92.549', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(226, '7.96 LS', '108.34 BT', '-7.326', '108.223', '4.7', 'Sedang', '96', 'Menengah', '1.447288', 'Kecil', '119.738', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(227, '1.19 LS ', '120.34 BT', '-1.42', '120.65', '3.1', 'Sedang', '16', 'Dangkal', '3.167038', 'Kecil', '45.737', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(228, '3.44 LS', '102.05 BT', '-3.1415', '102.2396', '5.5', 'Kuat', '84', 'Menengah', '2.787108', 'Kecil', '92.718', 'Dangkal', '2', 'Tidak Ada atau Jarang Kerusakan'),
(229, '8.12 LS', '107.85 BT', '-7.326', '108.223', '5', 'Kuat', '15', 'Dangkal', '8.721547', 'Kecil', '98.523', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(230, ' 4.84 LS', '129.39 BT', '-4.5222', '129.9044', '5', 'Kuat', '217', 'Menengah', '1.21909', 'Kecil', '227.142', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(231, '3.48 LS', '140.25 BT', '-2.57', '140.51', '4.9', 'Sedang', '71', 'Menengah', '1.701746', 'Kecil', '126.795', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(232, '6.4 LS', '106.15 BT', '-6.3615', '106.2511', '5', 'Kuat', '162', 'Menengah', '0.979816', 'Kecil', '162.444', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(233, '0.76 LU', '124.36 BT', '1.2948', '124.92', '5', 'Kuat', '197', 'Menengah', '0.69828', 'Kecil', '214.934', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(234, '8.33 LS', '115.48 BT', '-8.3638', '115.6095', '4.2', 'Sedang', '5', 'Sangat Dangkal', '11.74204', 'Medium', '15.678', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(235, '3.26 LS', '139.87 BT', '-2.57', '140.51', '5.5', 'Kuat', '89', 'Menengah', '6.134303', 'Kecil', '141.414', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(236, '1.05 LU', '127.47 BT', '1.823', '127.78', '3.7', 'Sedang', '5', 'Sangat Dangkal', '0.048226', 'Kecil', '92.581', 'Dangkal', '1', 'Tidak Ada atau Jarang Kerusakan'),
(237, '0.98 LU', '127.53 BT', '1.823', '127.78', '4.2', 'Sedang', '2', 'Sangat Dangkal', '0.132307', 'Kecil', '97.601', 'Dangkal', '1', 'Tidak Ada atau Jarang Kerusakan'),
(238, '0.98 LU', '127.55 BT', '0.66456', '127.4456', '4.4', 'Sedang', '4', 'Sangat Dangkal', '1.959357', 'Kecil', '37.095', 'Sangat Dangkal', '2', 'Tidak Ada atau Jarang Kerusakan'),
(239, '1.07 LU', '127.43 BT', '-0.6379', '127.5008', '3.8', 'Sedang', '5', 'Sangat Dangkal', '0.010636', 'Kecil', '189.806', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(240, '1.02 LU ', '127.51 BT', '0.66456', '127.4456', '2.6', 'Lemah', '9', 'Sangat Dangkal', '0.045423', 'Kecil', '41.092', 'Sangat Dangkal', '1', 'Tidak Ada atau Jarang Kerusakan'),
(241, '1.1 LU', '127.36 BT', '-0.6379', '127.5008', '3.1', 'Sedang', '2', 'Sangat Dangkal', '0.0063', 'Kecil', '193.549', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(242, '1.8 LU', '128.78 BT', '1.823', '127.78', '5.2', 'Kuat', '10', 'Sangat Dangkal', '2.944607', 'Kecil', '111.479', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(243, '3.59 LS', '123.36 BT', '-3.9702', '122.5896', '3.9', 'Sedang', '10', 'Sangat Dangkal', '0.18795', 'Kecil', '95.885', 'Dangkal', '1', 'Tidak Ada atau Jarang Kerusakan'),
(244, '1.07 LU', '127.18 BT', '1.823', '127.78', '3.2', 'Sedang', '5', 'Sangat Dangkal', '0.08048', 'Kecil', '106.989', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(245, '2.68 LS', '140.35 BT', '-2.57', '140.51', '4.5', 'Sedang', '10', 'Sangat Dangkal', '5.27296', 'Kecil', '23.759', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(246, '8.71 LS', '118.48 BT', '-8.5427', '118.693', '3.6', 'Sedang', '13', 'Dangkal', '25.8791', 'Medium', '32.754', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(247, '1.05 LU', '127.46 BT', '0.66456', '127.4456', '3', 'Sedang', '1', 'Sangat Dangkal', '0.23299', 'Kecil', '42.825', 'Sangat Dangkal', '1', 'Tidak Ada atau Jarang Kerusakan'),
(248, '1.05 LU', '127.44 BT', '-0.6379', '127.5008', '2.7', 'Lemah', '2', 'Sangat Dangkal', '0.0063', 'Kecil', '187.489', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(249, '0.47 LS ', '119.89 BT', '-0.9053', '119.8368', '4.7', 'Sedang', '20', 'Dangkal', '1.30102', 'Kecil', '52.626', 'Dangkal', '2', 'Tidak Ada atau Jarang Kerusakan'),
(250, '8.26 LS', '123.47 BT', '-8.4122', '123.0008', '4.9', 'Sedang', '10', 'Sangat Dangkal', '12.2783', 'Medium', '55.654', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(251, '0.31 LS', '122.98 BT', '0.4771', '121.9406', '5.6', 'Kuat', '71', 'Menengah', '3.45842', 'Kecil', '161.199', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(252, '7.36 LS', '123.08 BT', '-8.5427', '118.693', '6.6', 'Kuat', '569', 'Dalam', '6.22553', 'Kecil', '760.344', 'Sangat Dalam', '3', 'Tidak Ada atau Jarang Kerusakan'),
(253, ' 4.86 LS ', '131.2 BT', '-4.5222', '129.9044', '5.4', 'Kuat', '89', 'Menengah', '12.0338', 'Medium', '173.229', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(254, '8.9 LS', '118.93 BT', '-8.5427', '118.693', '5.4', 'Kuat', '130', 'Menengah', '60.0566', 'Besar', '138.438', 'Intermediet', '5', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(255, ' 8.91 LS', '118.95 BT', '-8.5427', '118.693', '5.1', 'Kuat', '104', 'Menengah', '7.42659', 'Kecil', '115.291', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(256, '3.79 LS', '127.76 BT', '-3.3183', '128.3947', '5.7', 'Kuat', '10', 'Sangat Dangkal', '4.837', 'Kecil', '88.344', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(257, '3.69 LS', '127.85 BT', '-3.2389', '127.0998', '6.2', 'Kuat', '10', 'Sangat Dangkal', '8.97747', 'Kecil', '97.675', 'Dangkal', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(258, '3.76 LS', '127.87 BT', '-3.3183', '128.3947', '5.6', 'Kuat', '10', 'Sangat Dangkal', '4.09143', 'Kecil', '76.783', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(259, '8.24 LS', '107.29 BT', '-7.309', '107.13', '5', 'Kuat', '10', 'Sangat Dangkal', '2.54381', 'Kecil', '105.332', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(260, '1.26 LS', '120.4 BT', '-1.42', '120.65', '5.2', 'Kuat', '10', 'Sangat Dangkal', '94.3108', 'Besar', '34.431', 'Sangat Dangkal', '5', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(261, '6.72 LS', '104.5 BT', '-6.6135', '105.6928', '5.3', 'Kuat', '10', 'Sangat Dangkal', '6.47198', 'Kecil', '133.303', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(262, '8.26 LS', '115.57 BT', '-8.3638', '115.6095', '5', 'Kuat', '10', 'Sangat Dangkal', '50.1346', 'Besar', '15.875', 'Sangat Dangkal', '5', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(263, '1.89 LU', '127.06 BT', '1.5013', '124.9178', '5.3', 'Kuat', '74', 'Menengah', '31.5623', 'Medium', '252.743', 'Intermediet', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(264, '1.37 LU', '96.93 BT', '1.1648', '97.7038', '5.3', 'Kuat', '15', 'Dangkal', '3.66886', 'Kecil', '90.118', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(265, '0.31 LU', '124.52 BT', '0.5745', '123.9807', '5.5', 'Kuat', '77', 'Menengah', '9.24444', 'Kecil', '101.855', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(266, '1.14 LS', '119.91 BT', '-0.9159', '119.9052', '5.1', 'Kuat', '10', 'Sangat Dangkal', '305.823', 'Sangat Besar', '26.816', 'Sangat Dangkal', '8', 'Kerusakan Menengah, Hancurnya Dinding'),
(267, '1.15 LS', '119.93 BT', '-0.9159', '119.9052', '5.1', 'Kuat', '10', 'Sangat Dangkal', '275.619', 'Sangat Besar', '27.979', 'Sangat Dangkal', '8', 'Kerusakan Menengah, Hancurnya Dinding'),
(268, '6.86 LS', ' 129.9 BT', '-3.7113', '128.0956', '5.7', 'Kuat', '160', 'Menengah', '3.9881', 'Kecil', '433.434', 'Dalam', '3', 'Tidak Ada atau Jarang Kerusakan'),
(269, '4.19 LS', '128.7 BT', '-3.3183', '128.3947', '5.1', 'Kuat', '176', 'Menengah', '0.64169', 'Kecil', '203.679', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(270, '9.89 LS ', '123.03 BT', '-10.138', '123.666', '5.2', 'Kuat', '86', 'Menengah', '1.14239', 'Kecil', '114.619', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(271, '3.16 LS', '102.15 BT', '-3.7611', '102.2714', '5.1', 'Kuat', '10', 'Sangat Dangkal', '3.35542', 'Kecil', '68.8', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(272, '1.41 LU', '122.56 BT', '0.63', '122.85', '4.9', 'Sedang', '5', 'Sangat Dangkal', '10.6103', 'Medium', '92.506', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(273, '0.64 LS', '123.7 BT', '0.63', '122.85', '5.5', 'Kuat', '10', 'Sangat Dangkal', '7.13278', 'Kecil', '169.925', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(274, '5.24 LS', '102.84 BT', '-5.0175', '104.0589', '5.3', 'Kuat', '53', 'Dangkal', '10.9222', 'Medium', '147.392', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(275, '3.32 LU ', '97.51 BT', '3.1736', '97.2862', '5', 'Kuat', '10', 'Sangat Dangkal', '6.93781', 'Kecil', '31.324', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(276, '7.26 LS', '106.99 BT', '-7.0053', '106.5563', '5.2', 'Kuat', '113', 'Menengah', '2.18712', 'Kecil', '126.039', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(277, '7.26 LS ', '106.99 BT', '2.27277', '97.81543', '5.2', 'Kuat', '113', 'Menengah', '1.5304', 'Kecil', '191.559', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(278, '7.26 LS', '106.99 BT', '-7.784', '108.449', '5.2', 'Kuat', '113', 'Menengah', '132.201', 'Besar', '113.486', 'Intermediet', '6', 'Kerusakan Kecil, Retak pada Dinding'),
(279, '0.65 LU ', '122.38 BT', '0.4771', '121.9406', '5.1', 'Kuat', '63', 'Dangkal', '6.42127', 'Kecil', '81.952', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(280, '8.09 LS', '106.76 BT', '-7.309', '107.13', '5.7', 'Kuat', '10', 'Sangat Dangkal', '8.141181', 'Kecil', '96.447', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(281, '0.03 LU', '123.47 BT', '1.5013', '124.9178', '5.1', 'Kuat', '130', 'Menengah', '1.094982', 'Kecil', '263.435', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(282, ' 4.35 LS', '101.96 BT', '-3.865', '102.312', '4.8', 'Sedang', '27', 'Dangkal', '7.883724', 'Kecil', '71.79', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(283, '2.81 LS', '139.51 BT', '-2.51', '140.7', '5.4', 'Kuat', '73', 'Menengah', '1.039753', 'Kecil', '154.55', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(284, '3.89 LU', '126.65 BT', '4.0079', '126.67', '5.1', 'Kuat', '10', 'Sangat Dangkal', '29.50628', 'Medium', '16.619', 'Sangat Dangkal', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(285, '0.46 LU', '121.12 BT', '0.3374', '119.898', '5.2', 'Kuat', '61', 'Dangkal', '6.758758', 'Kecil', '149.348', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(286, '3.98 LU', '126.88 BT', '4.0079', '126.67', '5.7', 'Kuat', '16', 'Dangkal', '20.61323', 'Medium', '28.442', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(287, '4.41 LS', '102.13 BT', '-3.865', '102.312', '5', 'Kuat', '16', 'Dangkal', '37.6217', 'Medium', '65.755', 'Dangkal', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan');
INSERT INTO `data_training` (`id`, `lat`, `long`, `latsta`, `longsta`, `magnitudo`, `kategori_magnitudo`, `kedalaman`, `kategori_kedalaman`, `PGA`, `kategori_PGA`, `jarakhipo`, `kategori_jarakhipo`, `MMI`, `efek_gempa`) VALUES
(288, ' 4.33 LS', '129.91 BT', '-4.5222', '129.9044', '3.2', 'Sedang', '10', 'Sangat Dangkal', '17.9086', 'Medium', '23.573', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(289, ' 6.58 LU', '95.44 BT', '5.496', '95.296', '5.4', 'Kuat', '190', 'Menengah', '0.95945', 'Kecil', '225.463', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(290, '0.31 LU', '98.59 BT', '0.7955', '99.57963', '5', 'Kuat', '54', 'Dangkal', '5.49299', 'Kecil', '133.742', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(291, '3.79 LS ', '101.51 BT', '-3.7611', '102.2714', '5', 'Kuat', '22', 'Dangkal', '3.67481', 'Kecil', '87.391', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(292, '1.36 LU', '123.66 BT', '0.5745', '123.9807', '5', 'Kuat', '234', 'Menengah', '1.25444', 'Kecil', '236.8', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(293, ' 7.88 LS', '128.2 BT', '-8.1445', '124.5903', '5.1', 'Kuat', '105', 'Menengah', '0.241', 'Kecil', '415.245', 'Dalam', '1', 'Tidak Ada atau Jarang Kerusakan'),
(294, '7.23 LS', '105.9 BT', '-6.566', '106.4039', '6.1', 'Kuat', '61', 'Dangkal', '179.454', 'Sangat Besar', '110.827', 'Intermediet', '6', 'Kerusakan Kecil, Retak pada Dinding'),
(295, '7.19 LS', '106.07 BT', '-7.0053', '106.5563', '5.1', 'Kuat', '42', 'Dangkal', '4.87681', 'Kecil', '71.401', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(296, '7.23 LS', '105.99 BT', '-7.0053', '106.5563', '5.2', 'Kuat', '11', 'Dangkal', '101.685', 'Besar', '68.516', 'Dangkal', '5', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(297, '7.24 LS', '105.96 BT', '-7.0053', '106.5563', '5', 'Kuat', '10', 'Sangat Dangkal', '5.91167', 'Kecil', '71.831', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(298, '1.12 LS', '126.85 BT', '-0.6379', '127.5008', '5.4', 'Kuat', '10', 'Sangat Dangkal', '3.55452', 'Kecil', '90.455', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(299, '2.92 LS', '121.3 BT', '-2.51', '140.7', '5.1', 'Kuat', '53', 'Dangkal', '0.89561', 'Kecil', '2154.533', 'Sangat Dalam', '1', 'Tidak Ada atau Jarang Kerusakan'),
(300, '7.89 LS', '118.79 BT', '-8.54', '118.69', '5.1', 'Kuat', '30', 'Dangkal', '6.825', 'Kecil', '79.15', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(301, '7.88 LS', '118.81 BT', '-8.54', '118.69', '5.2', 'Kuat', '26', 'Dangkal', '18.725', 'Medium', '79.09', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(302, '0.22 LS', '125.22 BT', '0.57', '123.98', '5.6', 'Kuat', '10', 'Sangat Dangkal', '3.638', 'Kecil', '163.71', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(303, '5.29 LS', '133.91 BT', '-5.66', '132.74', '5.5', 'Kuat', '90', 'Menengah', '0.741', 'Kecil', '163.71', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(304, '9.27 LS', '122.54 BT', '-8.41', '123.00', '5.3', 'Kuat', '159', 'Menengah', '1.936', 'Kecil', '192.26', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(305, '4.66 LU', '96.27 BT', '4.27', '96.40', '5.3', 'Kuat', '10', 'Sangat Dangkal', '7.399', 'Kecil', '47.18', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(306, ' 9.17 LS', '117.17 BT', '-8.74', '116.88', '5', 'Kuat', '96', 'Menengah', '3.595', 'Kecil', '111.96', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(307, '5.99 LS', '133.72 BT', '-5.66', '132.74', '5.5', 'Kuat', '95', 'Menengah', '2.285', 'Kecil', '149.21', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(308, '1.27 LS', '120.5 BT', '-0.91', '119.84', '5.1', 'Kuat', '10', 'Sangat Dangkal', '0.975', 'Kecil', '84.61', 'Dangkal', '2', 'Tidak Ada atau Jarang Kerusakan'),
(309, '7.89 LS', '106.47 BT', '-7.31', '107.13', '5.1', 'Kuat', '10', 'Sangat Dangkal', '8.458', 'Kecil', '98.11', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(310, '6.09 LS', '142.72 BT', '-8.52', '140.41', '7.6', 'Kuat', '96', 'Menengah', '34.145', 'Medium', '383.89', 'Dalam', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(311, '2.62 LS ', '126.73 BT', '-3.71', '128.10', '6', 'Kuat', '10', 'Sangat Dangkal', '39.858', 'Medium', '194.30', 'Intermediet', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(312, '0.99 LU', '98.7 BT', '1.5534', '98.8969', '5.7', 'Kuat', '87', 'Menengah', '33.6139', 'Medium', '109.351', 'Intermediet', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(313, '0.97 LU', '98.65 BT', '1.39876', '99.43094', '5.6', 'Kuat', '104', 'Menengah', '37.8616', 'Medium', '143.51', 'Intermediet', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(314, '6.31 LS ', '130.43 BT', '-5.6639', '132.7361', '6.1', 'Kuat', '166', 'Menengah', '3.47723', 'Kecil', '313.406', 'Dalam', '3', 'Tidak Ada atau Jarang Kerusakan'),
(315, '0.65 LS', '123.25 BT', '0.63', '122.85', '5.5', 'Kuat', '10', 'Sangat Dangkal', '15.6938', 'Medium', '149.191', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(316, '1.73 LS', '135.81 BT', '-3.9267', '136.3809', '5.1', 'Kuat', '10', 'Sangat Dangkal', '0.18493', 'Kecil', '252.142', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(317, '6.24 LS', '142.35  BT', '-8.5181', '140.4141', '5.3', 'Kuat', '10', 'Sangat Dangkal', '0.46133', 'Kecil', '331.99', 'Dalam', '1', 'Tidak Ada atau Jarang Kerusakan'),
(318, '6.17 LS', '142.53  BT', '-8.5181', '140.4141', '6.8', 'Kuat', '47', 'Dangkal', '5.761', 'Kecil', '353.981', 'Dalam', '3', 'Tidak Ada atau Jarang Kerusakan'),
(319, ' 3.3 LS', '131.03  BT', '-3.1075', '130.4939', '5.4', 'Kuat', '13', 'Dangkal', '2.607', 'Kecil', '66.593', 'Dangkal', '2', 'Tidak Ada atau Jarang Kerusakan'),
(320, ' 3.25 LS', ' 130.98  B', '-3.1075', '130.4939', '5.7', 'Kuat', '25', 'Dangkal', '6.468', 'Kecil', '61.535', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(321, '1.95 LU', ' 98.94 BT', '0.5792', '97.815', '5.2', 'Kuat', '171', 'Menengah', '3.71171', 'Kecil', '351.64', 'Dalam', '3', 'Tidak Ada atau Jarang Kerusakan'),
(322, ' 0.84 LU', '125.38 BT', '1.2948', '124.92', '5.1', 'Kuat', '15', 'Dangkal', '7.60921', 'Kecil', '73.353', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(323, '0.5 LS', '121.66 BT', '0.4771', '121.9406', '5.1', 'Kuat', '10', 'Sangat Dangkal', '0.21883', 'Kecil', '115.293', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(324, '0.59 LU', '121.5 BT', '0.4771', '121.9406', '5.2', 'Kuat', '102', 'Menengah', '18.9087', 'Medium', '51.468', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(325, '7.4 LS', '105.95 BT', '-5.0175', '104.0589', '5.2', 'Kuat', '10', 'Sangat Dangkal', '0.93173', 'Kecil', '121.178', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(326, ' 4.66 LU', '102.78 BT', '-3.8583', '102.3366', '5.4', 'Kuat', '28', 'Dangkal', '2.28411', 'Kecil', '105.477', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(327, '4.77 LS', '129.84 BT', '-3.7113', '128.0956', '6.9', 'Kuat', '169', 'Menengah', '13.344', 'Medium', '425.816', 'Dalam', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(328, '2.53 LU', '95.85 BT', '2.40893', '96.32671', '5.1', 'Kuat', '16', 'Dangkal', '6.84591', 'Kecil', '56.891', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(329, '3.12 LU', '127.94BT', '1.2948', '124.92', '5.6', 'Kuat', '10', 'Sangat Dangkal', '1.82154', 'Kecil', '391.814', 'Dalam', '2', 'Tidak Ada atau Jarang Kerusakan'),
(330, '1.53 LS', '138.52 BT', '-2.51', '140.7', '5.4', 'Kuat', '94', 'Menengah', '0.2489', 'Kecil', '281.467', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(331, '9.5 LS', '120.02 BT', '-8.4866', '119.8867', '5', 'Kuat', '71', 'Menengah', '5.34976', 'Kecil', '133.841', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(332, '2.72 LS', '127.65 BT', '-3.2389', '127.0998', '4.9', 'Sedang', '10', 'Sangat Dangkal', '3.67816', 'Kecil', '84.546', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(333, '5.89 LS', '142.53 BT', '-8.5181', '140.4141', '6.4', 'Kuat', '124', 'Menengah', '8.3025', 'Kecil', '394.508', 'Dalam', '3', 'Tidak Ada atau Jarang Kerusakan'),
(334, '6.47 LS ', '103.87 BT', '-5.5236', '104.4959', '5.1', 'Kuat', '10', 'Sangat Dangkal', '1.21673', 'Kecil', '126.345', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(335, '7.08 LS', '105.5 BT', '-6.3615', '106.2511', '5', 'Kuat', '10', 'Sangat Dangkal', '2.62141', 'Kecil', '115.808', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(336, '3.72 LU', '95.23 BT', '5.496', '95.296', '5.1', 'Kuat', '12', 'Dangkal', '1.12107', 'Kecil', '197.637', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(337, '10.54 LS', '119.12 BT', '-9.6411', '119.3911', '4.9', 'Sedang', '76', 'Menengah', '0.81277', 'Kecil', '117.378', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(338, '1.41 LU', '126.81 BT', '1.443', '125.179', '6.4', 'Kuat', '10', 'Sangat Dangkal', '23.5872', 'Medium', '181.354', 'Intermediet', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(339, '1.45 LU', '127.0 BT', '0.66456', '127.4456', '5', 'Kuat', '58', 'Dangkal', '0.11495', 'Kecil', '115.812', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan'),
(340, '1.17 LU', '96.42 BT', '2.40893', '96.32671', '5.1', 'Kuat', '53', 'Dangkal', '3.3808', 'Kecil', '89.141', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan'),
(341, '3.17 LS', '139.89 BT', '-2.51', '140.7', '5', 'Kuat', '86', 'Menengah', '1.13364', 'Kecil', '144.384', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(342, '0.51 LU', ' 125.66 BT', '1.443', '125.179', '5.4', 'Kuat', '10', 'Sangat Dangkal', '32.5826', 'Medium', '116.944', 'Intermediet', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan'),
(343, '9.55 LS', '112.6 BT', '-8.1521', '112.4506', '5', 'Kuat', '10', 'Sangat Dangkal', '1.97564', 'Kecil', '156.371', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(344, '7.54 LS', '115.58 BT', '-8.6774', '115.2097', '5.85', 'Kuat', '366', 'Menengah', '5.51891', 'Kecil', '389.339', 'Dalam', '3', 'Tidak Ada atau Jarang Kerusakan'),
(345, '2.06 LS', '139.74 BT', '-2.51', '140.7', '5.3', 'Kuat', '10', 'Sangat Dangkal', '3.73861', 'Kecil', '118.11', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan'),
(346, '4.1 LS', '102.72 BT', '-3.6506', '102.593', '5', 'Kuat', '101', 'Menengah', '1.56587', 'Kecil', '113.526', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan'),
(347, '5.1 LS', '126.5 BT', '1.443', '125.179', '5.1', 'Kuat', '10', 'Sangat Dangkal', '15.2459', 'Medium', '151.657', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_uji`
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
  `efek_gempa_asli` varchar(46) DEFAULT NULL,
  `hasil_prediksi` varchar(6) DEFAULT NULL,
  `efek_gempa_prediksi` varchar(46) DEFAULT NULL,
  `ketepatan` varchar(46) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `data_uji`
--

INSERT INTO `data_uji` (`id`, `lat`, `long`, `latsta`, `longsta`, `magnitudo`, `kategori_magnitudo`, `kedalaman`, `kategori_kedalaman`, `PGA`, `kategori_PGA`, `jarakhipo`, `kategori_jarakhipo`, `MMI`, `efek_gempa_asli`, `hasil_prediksi`, `efek_gempa_prediksi`, `ketepatan`) VALUES
(1, '2.06 LS', '139.74 BT', '-2.51', '140.7', '5.3', 'Kuat', '10', 'Sangat Dangkal', '3.73861', 'Kecil', '118.11', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(2, '4.1 LS', '102.72 BT', '-3.6506', '102.593', '5', 'Kuat', '101', 'Menengah', '1.56587', 'Kecil', '113.526', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan', '1', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(3, '5.1 LS', '126.5 BT', '1.443', '125.179', '5.1', 'Kuat', '10', 'Sangat Dangkal', '15.2459', 'Medium', '151.657', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan', 'TIDAK'),
(4, '5.67 LS ', '133.67 BT', '-5.6639', '132.7361', '5.1', 'Kuat', '10', 'Sangat Dangkal', '0.60196', 'Kecil', '104.146', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(5, '1.39 LU', '99.33 Bt', '1.39876', '99.43094', '3.4', 'Sedang', '10', 'Sangat Dangkal', '30.8741', 'Medium', '15.049', 'Sangat Dangkal', '5', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TIDAK'),
(6, ' 6.6 LS', '104.78 BT', '-5.5236', '104.4959', '5.7', 'Kuat', '10', 'Sangat Dangkal', '4.17734', 'Kecil', '123.973', 'Intermediet', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TIDAK'),
(7, '3.7 LS', '138.67 BT', '-4.5299', '136.8929', '6.1', 'Kuat', '111', 'Menengah', '4.23766', 'Kecil', '244.372', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan', '1', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(8, '1.26 LU ', '119.98 BT', '-0.9053', '119.8368', '5.2', 'Kuat', '10', 'Sangat Dangkal', '0.28038', 'Kecil', '241.081', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(9, ' 4.31 LS', '102.41 BT', '-3.8583', '102.3366', '5.4', 'Kuat', '31', 'Dangkal', '2.97906', 'Kecil', '59.509', 'Dangkal', '2', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(10, '9.39 LS', '110.53 BT', '-7.561', '110.8541', '5.1', 'Kuat', '10', 'Sangat Dangkal', '0.16823', 'Kecil', '206.424', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(11, '0.56 LS ', '137.57 BT', '-1.1907', '136.1038', '5', 'Kuat', '10', 'Sangat Dangkal', '8.91334', 'Kecil', '177.449', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(12, '9.29 LS', '118.42 BT', '-9.6411', '119.3911', '5.6', 'Kuat', '10', 'Sangat Dangkal', '1.28976', 'Kecil', '115.056', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(13, '1.36 LU', '97.09 BT', '0.5792', '97.815', '5.2', 'Kuat', '26', 'Dangkal', '1.52546', 'Kecil', '121.094', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(14, '4.56  LU ', '126.83 BT', '4.0079', '126.67', '5.8', 'Kuat', '17', 'Dangkal', '5.843322', 'Kecil', '66.031', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(15, '8.74  LS', '118.37 BT', '-10.218', '120.5777', '4.9', 'Sedang', '119', 'Menengah', '0.204618', 'Kecil', '318.058', 'Dalam', '1', 'Tidak Ada atau Jarang Kerusakan', '1', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(16, '6.13  LS ', '103.65 BT', '-7.784', '108.449', '5', 'Kuat', '10', 'Sangat Dangkal', '0.014952', 'Kecil', '563.528', 'Dalam', '1', 'Tidak Ada atau Jarang Kerusakan', '1', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(17, ' 1.41  LS', ' 134.96 BT', '-0.8903', '134.0512', '5.3', 'Kuat', '10', 'Sangat Dangkal', '1.481952', 'Kecil', '116.636', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(18, '7.1  LS', '106.08 BT', '-7.0053', '106.5563', '5', 'Kuat', '10', 'Sangat Dangkal', '1.956476', 'Kecil', '54.824', 'Dangkal', '2', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(19, '2.76 LS ', '100.18 BT', '-2.4473', '101.2396', '5', 'Kuat', '22', 'Dangkal', '1.662407', 'Kecil', '124.586', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(20, '8.06 LS', '117.81 BT', '-8.5018', '118.3121', '5', 'Kuat', '10', 'Sangat Dangkal', '2.76632', 'Kecil', '74.915', 'Dangkal', '1', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(21, '2.76 LS ', '127.55 BT', '-3.2389', '127.0998', '5.2', 'Kuat', '12', 'Dangkal', '8.075899', 'Kecil', '73.943', 'Dangkal', '2', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(22, '8.64 LS', '116.15 BT', '-8.7382', '116.8821', '4.5', 'Sedang', '109', 'Menengah', '2.516178', 'Kecil', '136.395', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan', '1', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(23, '9.68  LS', '115.2 BT', '-8.7498', '115.1769', '5', 'Kuat', '10', 'Sangat Dangkal', '4.330423', 'Kecil', '103.767', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(24, ' 5.77 LU', '125.22 BT', '1.5013', '124.9178', '6', 'Kuat', '77', 'Menengah', '4.142665', 'Kecil', '481.212', 'Dalam', '3', 'Tidak Ada atau Jarang Kerusakan', '1', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(25, '9.97 LS', ' 119 BT', '-9.6411', '119.3911', '5.4', 'Kuat', '10', 'Sangat Dangkal', '6.287719', 'Kecil', '57.597', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(26, ' 9.88 LS ', '118.97 BT', '-8.5018', '118.3121', '5', 'Kuat', '10', 'Sangat Dangkal', '0.716115', 'Kecil', '169.802', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(27, '5.88 LS', '103.43 BT', '-5.0175', '104.0589', '5.2', 'Kuat', '10', 'Sangat Dangkal', '14.170544', 'Medium', '118.907', 'Intermediet', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan', 'TEPAT'),
(28, '0.24 LU', '122.09 BT', '0.4771', '121.9406', '5.1', 'Kuat', '186', 'Menengah', '3.714626', 'Kecil', '188.583', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan', '1', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(29, '5.19 LS', '101.04 BT', '-8.7382', '116.8821', '4.8', 'Sedang', '27', 'Dangkal', '2.024301', 'Kecil', '111.187', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan', '1', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(30, '8.26 LS ', '116.55 BT', '-8.562', '116.167', '6.4', 'Kuat', '10', 'Sangat Dangkal', '25.040397', 'Medium', '55.055', 'Dangkal', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TIDAK'),
(31, '8.29 LS', '116.62 BT', '-8.7382', '116.8821', '5.4', 'Kuat', '10', 'Sangat Dangkal', '56.688594', 'Besar', '58.494', 'Dangkal', '5', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan', '5', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan', 'TEPAT'),
(32, '8.28 LS', '116.71 BT', '-8.7382', '116.8821', '7', 'Kuat', '10', 'Sangat Dangkal', '313.98935', 'Sangat Besar', '55.242', 'Dangkal', '8', 'Kerusakan Menengah, Hancurnya Dinding', '8', 'Kerusakan Menengah, Hancurnya Dinding', 'TEPAT'),
(33, '3.08 LU', '126.58 BT', '1.54', '124.92', '5.1', 'Kuat', '10', 'Sangat Dangkal', '0.2195', 'Kecil', '250.87', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(34, '2.02 LS', '139.11 BT', '-1.99', '138.71', '5.1', 'Kuat', '10', 'Sangat Dangkal', '1.2044', 'Kecil', '43.72', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(35, '6.47 LS', '103.69 BT', '-5.37', '105.25', '4.9', 'Sedang', '27', 'Dangkal', '0.4978', 'Kecil', '211.2', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan', '1', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(36, '11.46 LS', '118.20 BT', '-8.74', '116.88', '5.2', 'Kuat', '10', 'Sangat Dangkal', '0.4087', 'Kecil', '334.3', 'Dalam', '1', 'Tidak Ada atau Jarang Kerusakan', '1', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(37, '2.49 LU', '127.31 BT', '1.44', '124.84', '5', 'Kuat', '38', 'Dangkal', '0.0284', 'Kecil', '297.51', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(38, '6.68 LS', '130.46 BT', '-4.31', '129.54', '5.5', 'Kuat', '129', 'Menengah', '0.5596', 'Kecil', '307.1', 'Dalam', '2', 'Tidak Ada atau Jarang Kerusakan', '1', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(39, '4.32 LU', '126.18 BT', '1.44', '124.84', '5.3', 'Kuat', '120', 'Menengah', '0.1058', 'Kecil', '371.68', 'Dalam', '1', 'Tidak Ada atau Jarang Kerusakan', '1', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(40, '0.85 LS', '127.55 BT', '-0.64', '127.5', '5.2', 'Kuat', '10', 'Sangat Dangkal', '19.8646', 'Medium', '23.23', 'Sangat Dangkal', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TIDAK'),
(41, '0.85 LS', '127.54 BT', '-0.64', '127.5', '5.4', 'Kuat', '10', 'Sangat Dangkal', '49.4626', 'Medium', '25.13', 'Sangat Dangkal', '5', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TIDAK'),
(42, '2.37 LU', '126.75 BT', '1.44', '124.84', '6.6', 'Kuat', '47', 'Dangkal', '1.0702', 'Kecil', '233.57', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(43, '2.34 LU', '126.74 BT', '1.44', '124.84', '6.6', 'Kuat', '51', 'Dangkal', '1.0702', 'Kecil', '232', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(44, '7.85 LS', '106.48 BT', '-7.31', '107.13', '5.4', 'Kuat', '10', 'Sangat Dangkal', '3.4957', 'Kecil', '92.89', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(45, '7.83 LS', '106.44 BT', '-7.01', '106.56', '5', 'Kuat', '50', 'Dangkal', '4.5472', 'Kecil', '91.85', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(46, '3.8 LU', '95.80 BT', '4.27', '96.4', '4.8', 'Sedang', '60', 'Dangkal', '14.061', 'Medium', '84.75', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(47, '9.63 LS', '119.91 BT', '-9.67', '120.3', '5', 'Kuat', '79', 'Menengah', '15.7202', 'Medium', '42.23', 'Sangat Dangkal', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TIDAK'),
(48, '3.51 LS', '101.16 BT', '-2.45', '101.24', '5.6', 'Kuat', '50', 'Dangkal', '11.5042', 'Medium', '126.95', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan', 'TIDAK'),
(49, '3.61 LU', '128.68 BT', '-3.32', '128.4', '5.1', 'Kuat', '37', 'Dangkal', '0.1627', 'Kecil', '770.19', 'Sangat Dalam', '1', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(50, '1.77 LU', '99.09 BT', '1.4', '99.43', '5', 'Kuat', '10', 'Sangat Dangkal', '1.567', 'Kecil', '55.3', 'Dangkal', '2', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(51, '7.08 LU', '93.98 BT', '5.88', '95.34', '5.6', 'Kuat', '70', 'Menengah', '4.02', 'Kecil', '211.2', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan', '1', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(52, '5.63 LU', '121.72 BT', '0.99', '122.36', '5.2', 'Kuat', '10', 'Sangat Dangkal', '0.0304', 'Kecil', '520.06', 'Dalam', '1', 'Tidak Ada atau Jarang Kerusakan', '1', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(53, '10.29 LS', '119.10 BT', '-9.67', '120.3', '5.3', 'Kuat', '11', 'Dangkal', '4.8559', 'Kecil', '147.82', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(54, '10.41 LS', '118.99 BT', '-9.67', '120.3', '6.4', 'Kuat', '15', 'Dangkal', '10.4311', 'Medium', '160.68', 'Intermediet', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan', 'TEPAT'),
(55, '10.32 LS', '118.92 BT', '-9.67', '120.3', '5.7', 'Kuat', '40', 'Dangkal', '6.7248', 'Kecil', '170.35', 'Intermediet', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TIDAK'),
(56, '5.51 LS', '133.83 BT', '-3.66', '133.7', '5.9', 'Kuat', '13', 'Dangkal', '2.1207', 'Kecil', '203.84', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(57, '0.35 LU', '125.46 BT', '1.44', '124.84', '5.2', 'Kuat', '65', 'Dangkal', '0.639', 'Kecil', '138.79', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(58, '2.86 LS', '100.00 BT', '-2.77', '100.01', '5.2', 'Kuat', '15', 'Dangkal', '8.5819', 'Kecil', '9.55', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(59, '2.92 LS', '99.98 BT', '-2.45', '101.24', '6.1', 'Kuat', '26', 'Dangkal', '17.4322', 'Medium', '148.24', 'Intermediet', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan', 'TEPAT'),
(60, '3.02 LS', '99.91 BT', '-2.45', '101.24', '5.9', 'Kuat', '20', 'Dangkal', '16.269', 'Medium', '159.5', 'Intermediet', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan', 'TEPAT'),
(61, '3.01 LS', '99.91 BT', '-2.77', '100.01', '5.9', 'Kuat', '38', 'Dangkal', '17.3156', 'Medium', '45.49', 'Sangat Dangkal', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TIDAK'),
(62, '2.86 LS', '100.10 BT', '-2.77', '100.01', '5', 'Kuat', '18', 'Dangkal', '4.1189', 'Kecil', '13.73', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(63, '0.38 LS', '98.15 BT', '-1.33', '99.09', '5.6', 'Kuat', '37', 'Dangkal', '0.5978', 'Kecil', '151.18', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(64, '1.58 LU', '126.43 BT', '0.77', '127.37', '5.7', 'Kuat', '39', 'Dangkal', '2.2422', 'Kecil', '141.05', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(65, '4.82 LU', '126.37 BT', '0.48', '121.94', '5.1', 'Kuat', '69', 'Menengah', '0.0157', 'Kecil', '688.41', 'Dalam', '1', 'Tidak Ada atau Jarang Kerusakan', '1', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(66, '3.25 LU', '98.4 BT', '3.5395', '98.674', '2.8', 'Lemah', '10', 'Sangat Dangkal', '0.273964', 'Kecil', '45.361', 'Sangat Dangkal', '1', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(67, '1.44 LS', '99.77 BT', '-0.9117', '100.4617', '4.2', 'Sedang', '12', 'Dangkal', '1.61859', 'Kecil', '97.352', 'Dangkal', '2', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(68, '0.65 LS', '131.47 BT', '-0.4102', '130.8211', '4.7', 'Sedang', '10', 'Sangat Dangkal', '0.917585', 'Kecil', '77.437', 'Dangkal', '2', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(69, '2.42 LS', '140.28 BT', '-2.59', '140.17', '5.1', 'Kuat', '10', 'Sangat Dangkal', '51.5784', 'Besar', '22.03', 'Sangat Dangkal', '5', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan', '5', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan', 'TEPAT'),
(70, '0.86 LS', '127.29 BT', '-0.64', '127.5', '5.3', 'Kuat', '10', 'Sangat Dangkal', '11.4954', 'Medium', '34.68', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(71, '9.67 LS', '112.74 BT', '-8.27', '113.44', '5.6', 'Kuat', '42', 'Dangkal', '3.4957', 'Kecil', '176.86', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(72, '6.55 LS', '101.66 BT', '-4.36', '102.96', '5.1', 'Kuat', '10', 'Sangat Dangkal', '1.4553', 'Kecil', '281.72', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(73, '7.81 LS', '127.55 BT', '-8.14', '124.59', '5', 'Kuat', '154', 'Menengah', '0.0186', 'Kecil', '327.32', 'Dalam', '1', 'Tidak Ada atau Jarang Kerusakan', '1', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(74, '1.19 LU', '128.22 BT', '-0.64', '127.5', '5', 'Kuat', '10', 'Sangat Dangkal', '0.4116', 'Kecil', '217.66', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(75, '0.54 LU', '122.22 BT', '0.48', '121.94', '5.1', 'Kuat', '98', 'Menengah', '15.7878', 'Medium', '30.95', 'Sangat Dangkal', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TIDAK'),
(76, '3.91 LS', '129.59 BT', '-4.31', '129.54', '5.1', 'Kuat', '112', 'Menengah', '1.8885', 'Kecil', '44.31', 'Sangat Dangkal', '2', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(77, '1.4 LS', '101.53 BT', '-2.45', '101.24', '5.3', 'Kuat', '10', 'Sangat Dangkal', '2.1482', 'Kecil', '120.23', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(78, '4.73 LU', '125.53 BT', '0.77', '127.37', '5.3', 'Kuat', '180', 'Menengah', '0.0745', 'Kecil', '499.91', 'Dalam', '1', 'Tidak Ada atau Jarang Kerusakan', '1', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(79, '2.49 LS', '121.45 BT', '-2.56', '120.32', '5', 'Kuat', '10', 'Sangat Dangkal', '0.8261', 'Kecil', '124.55', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(80, '1.11 LU', '98.75 BT', '0.8', '99.58', '5.5', 'Kuat', '76', 'Menengah', '8.4398', 'Kecil', '123.14', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan', '1', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(81, '6.18 LU', '125.45 BT', '1.44', '124.84', '5.6', 'Kuat', '92', 'Menengah', '0.3704', 'Kecil', '537.4', 'Dalam', '1', 'Tidak Ada atau Jarang Kerusakan', '1', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(82, '0.98 LS', '126.88 BT', '-0.64', '127.5', '5.4', 'Kuat', '49', 'Dangkal', '6.7806', 'Kecil', '91.62', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(83, '8.45 LS', '116.50 BT', '-8.77', '116.28', '5.4', 'Kuat', '10', 'Sangat Dangkal', '9.5893', 'Kecil', '42.78', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(84, '8.45 LS', '116.50 BT', '-8.77', '116.28', '5.4', 'Kuat', '10', 'Sangat Dangkal', '6.6091', 'Kecil', '42.78', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(85, '8.3 LS', '116.60 BT', '-8.74', '116.88', '5.8', 'Kuat', '10', 'Sangat Dangkal', '27.6948', 'Medium', '56.41', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(86, '8.46 LS', '116.50 BT', '-8.77', '116.28', '5.1', 'Kuat', '10', 'Sangat Dangkal', '6.6091', 'Kecil', '40.94', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(87, '8.47 LS', '116.55 BT', '-8.77', '116.28', '5.4', 'Kuat', '19', 'Dangkal', '9.5893', 'Kecil', '47.18', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(88, '1.78 LS', '120.55 BT', '-1.42', '120.65', '5.7', 'Kuat', '39', 'Dangkal', '40.0408', 'Medium', '55.12', 'Dangkal', '5', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TIDAK'),
(89, '6.09 LS', '130.96 BT', '-4.52', '129.9', '5.3', 'Kuat', '134', 'Menengah', '0.4616', 'Kecil', '243.28', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan', '1', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(90, '7.8 LU', '94.46 BT', '5.88', '95.34', '5.4', 'Kuat', '10', 'Sangat Dangkal', '0.4253', 'Kecil', '233.81', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(91, '5.96 LS', '131.52 BT', '-4.52', '129.9', '5', 'Kuat', '72', 'Menengah', '0.392', 'Kecil', '239.2', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan', '1', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(92, '7.24 LS', '114.60 BT', '-8.08', '115.21', '5', 'Kuat', '10', 'Sangat Dangkal', '3.1399', 'Kecil', '114.96', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(93, '6.91 LS', '125.00 BT', '-8.64', '122.24', '6.3', 'Kuat', '545', 'Dalam', '0.3646', 'Kecil', '376.34', 'Dalam', '2', 'Tidak Ada atau Jarang Kerusakan', '1', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(94, '1.01 LU', '123.19 BT', '0.57', '123.98', '5.1', 'Kuat', '47', 'Dangkal', '2.8175', 'Kecil', '99.54', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(95, '1.9 LS', '122.54 BT', '-1.42', '120.65', '6.9', 'Kuat', '10', 'Sangat Dangkal', '67.8474', 'Besar', '205.95', 'Intermediet', '6', 'Kerusakan Kecil, Retak pada Dinding', '5', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan', 'TIDAK'),
(96, '1.89 LS', '122.57 BT', '-1.42', '120.65', '6.8', 'Kuat', '17', 'Dangkal', '67.8483', 'Besar', '210.82', 'Intermediet', '6', 'Kerusakan Kecil, Retak pada Dinding', '5', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan', 'TIDAK'),
(97, '1.99 LS', '122.67 BT', '-1.04', '122.77', '4.9', 'Sedang', '10', 'Sangat Dangkal', '1.5249', 'Kecil', '106.04', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan', '1', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(98, '5.36 LU', '126.90 BT', '-3.24', '127.1', '5.3', 'Kuat', '51', 'Dangkal', '0.1019', 'Kecil', '956.79', 'Sangat Dalam', '1', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(99, '9.18 LS', '117.52 BT', '-8.49', '117.41', '5', 'Kuat', '78', 'Menengah', '1.9424', 'Kecil', '77.1', 'Dangkal', '2', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(100, '1.91 LS', '122.48 BT', '-1.42', '120.65', '5.5', 'Kuat', '10', 'Sangat Dangkal', '19.3129', 'Medium', '209.4', 'Intermediet', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan', 'TEPAT'),
(101, '4.39 LS', '102.03 BT', '-3.87', '102.31', '5', 'Kuat', '43', 'Dangkal', '8.5191', 'Kecil', '65.48', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(102, '6.28 LS', '131.62 BT', '-3.66', '133.7', '5.1', 'Kuat', '82', 'Menengah', '0.6341', 'Kecil', '370.7', 'Dalam', '1', 'Tidak Ada atau Jarang Kerusakan', '1', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(103, '2.01 LU', '123.66 BT', '0.57', '123.98', '5.7', 'Kuat', '347', 'Menengah', '0.7987', 'Kecil', '203.95', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan', '1', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(104, '6.02 LS', '128.81 BT', '-3.35', '128.93', '5', 'Kuat', '310', 'Menengah', '0.8742', 'Kecil', '296.87', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan', '1', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(105, '5.44 LS', '102.02 BT', '-4.36', '102.96', '5.1', 'Kuat', '20', 'Dangkal', '4.557', 'Kecil', '157.77', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(106, '1.9 LS', '122.36 BT', '-1.04', '122.77', '4.6', 'Sedang', '10', 'Sangat Dangkal', '0.6468', 'Kecil', '105.85', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan', '1', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(107, '8.87 LS', '112.48 BT', '-8.08', '111.91', '4.9', 'Sedang', '10', 'Sangat Dangkal', '1.4886', 'Kecil', '108.3', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan', '1', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(108, '3.39 LS', '139.96 BT', '-2.57', '140.68', '5', 'Kuat', '100', 'Menengah', '0.2822', 'Kecil', '120.52', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan', '1', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(109, '9.63 LS', '108.51 BT', '-7.78', '108.45', '5.6', 'Kuat', '33', 'Dangkal', '1.6719', 'Kecil', '206.37', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(110, '0.98 LU', '122.17 BT', '0.63', '122.85', '5', 'Kuat', '64', 'Dangkal', '22.7262', 'Medium', '84.29', 'Dangkal', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TIDAK'),
(111, '7.28 LS', '117.52 BT', '-8.74', '116.88', '5.3', 'Kuat', '578', 'Dalam', '0.2881', 'Kecil', '215.4', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan', '1', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(112, '0.52 LU', '98.39 BT', '0.8', '99.58', '5.3', 'Kuat', '48', 'Dangkal', '18.6024', 'Medium', '143.01', 'Intermediet', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan', 'TEPAT'),
(113, '0.19 LU', '97.46 BT', '0.8', '99.58', '5.9', 'Kuat', '10', 'Sangat Dangkal', '3.3046', 'Kecil', '242.8', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(114, '0.53 LU', '97.72 BT', '1.4', '99.43', '5.2', 'Kuat', '29', 'Dangkal', '1.8708', 'Kecil', '212.36', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(115, '6.99 LS', '129.52 BT', '-3.32', '128.4', '5.8', 'Kuat', '161', 'Menengah', '0.1833', 'Kecil', '442.63', 'Dalam', '1', 'Tidak Ada atau Jarang Kerusakan', '1', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(116, ' 3.34 LU', '98.5 BT', '3.50118', '98.56457', '2.8', 'Lemah', '17', 'Dangkal', '0.093088', 'Kecil', '21.713', 'Sangat Dangkal', '1', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(117, ' 9.12 LS', ' 116.62 BT', '-8.7382', '116.8821', '4.5', 'Sedang', '10', 'Sangat Dangkal', '10.16603', 'Medium', '52.368', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(118, '5.14 LS', '96.22 BT', '4.61711', '96.8189', '4.5', 'Sedang', '10', 'Sangat Dangkal', '1.770285', 'Kecil', '88.815', 'Dangkal', '2', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(119, '5.75 LU', '93.99 BT', '5.496', '95.296', '4.5', 'Sedang', '10', 'Sangat Dangkal', '2.174168', 'Kecil', '148.02', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan', '1', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(120, '0.27 LU', '97.61 BT', '0.8', '99.58', '5.5', 'Kuat', '22', 'Dangkal', '2.0188', 'Kecil', '226.36', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(121, '6.99 LS', '129.52 BT', '-3.83', '103.52', '5.8', 'Kuat', '161', 'Menengah', '4.9833', 'Kecil', '2899.46', 'Sangat Dalam', '5', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TIDAK'),
(122, '6.99 LS', '129.52 BT', '-3.32', '128.4', '5.3', 'Kuat', '161', 'Menengah', '0.1833', 'Kecil', '443.75', 'Dalam', '1', 'Tidak Ada atau Jarang Kerusakan', '1', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(123, '8.51 LS', '108.86 BT', '-7.72', '109.02', '5.7', 'Kuat', '10', 'Sangat Dangkal', '6.4582', 'Kecil', '88.23', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(124, '8.68 LS', '108.82 BT', '-7.78', '108.45', '5.5', 'Kuat', '64', 'Dangkal', '8.8778', 'Kecil', '123.84', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(125, '11.75 LS', '115.64 BT', '-8.74', '115.18', '5.1', 'Kuat', '10', 'Sangat Dangkal', '0.0941', 'Kecil', '337.54', 'Dalam', '1', 'Tidak Ada atau Jarang Kerusakan', '1', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(126, '2.7 LS', '139.67 BT', '-2.57', '140.68', '5.3', 'Kuat', '42', 'Dangkal', '0.7007', 'Kecil', '119.63', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(127, '0.78 LU', '98.47 BT', '1.1648', '97.7038', '47', 'Sangat Kuat', '47', 'Dangkal', '2.37624', 'Kecil', '106.144', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan', '1', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(128, '1.56 LU', '128.27 BT', '-0.6379', '127.5008', '2.5', 'Lemah', '10', 'Sangat Dangkal', '3.687663', 'Kecil', '10.074', 'Sangat Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(129, '1.09 LS', '119.84 BT', '-0.9159', '119.9052', '3.7', 'Sedang', '16', 'Dangkal', '40.55284', 'Medium', '32.138', 'Sangat Dangkal', '5', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TIDAK'),
(130, '6.62 LS', '131.91 BT', '-7.98', '131.3', '5.5', 'Kuat', '71', 'Menengah', '1.8169', 'Kecil', '178.97', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan', '1', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(131, '5.84 LS', '130.77 BT', '-7.98', '131.3', '5.7', 'Kuat', '125', 'Menengah', '4.409', 'Kecil', '273.42', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan', '1', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(132, '10.5 LS', '120.02 BT', '-10.22', '120.58', '5', 'Kuat', '10', 'Sangat Dangkal', '3.1213', 'Kecil', '67.83', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(133, '2.22 LS', '138.60 BT', '-1.99', '138.71', '6.3', 'Kuat', '10', 'Sangat Dangkal', '69.0253', 'Besar', '26.11', 'Sangat Dangkal', '6', 'Kerusakan Kecil, Retak pada Dinding', '5', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan', 'TIDAK'),
(134, '8.54 LS', '108.64 BT', '-7.78', '108.45', '5.2', 'Kuat', '62', 'Dangkal', '8.967', 'Kecil', '85.67', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(135, '2.67 LS', '138.76 BT', '-1.99', '138.71', '6.1', 'Kuat', '10', 'Sangat Dangkal', '5.294', 'Kecil', '72.97', 'Dangkal', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TIDAK'),
(136, '6.51 LS', '129.27 BT', '-4.52', '129.9', '7.7', 'Kuat', '231', 'Menengah', '3.2889', 'Kecil', '229.9', 'Intermediet', '3', 'Tidak Ada atau Jarang Kerusakan', '1', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(137, '2.63 LS', '138.59 BT', '-1.99', '138.71', '5.6', 'Kuat', '10', 'Sangat Dangkal', '3.7211', 'Kecil', '71.47', 'Dangkal', '3', 'Tidak Ada atau Jarang Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(138, '8.19 LS', '108.3 BT', '-7.326', '108.223', '4.2', 'Sedang', '31', 'Dangkal', '2.43372', 'Kecil', '101.152', 'Intermediet', '2', 'Tidak Ada atau Jarang Kerusakan', '1', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT'),
(139, '3.18 LS', ' 135.65 BT', '-3.3656', '135.4972', '4.8', 'Sedang', '9', 'Sangat Dangkal', '11.29561', 'Medium', '28.162', 'Sangat Dangkal', '4', 'Barang-Barang Bergerak dan Tidak Ada Kerusakan', '3', 'Tidak Ada atau Jarang Kerusakan', 'TIDAK'),
(140, ' 5.33 LU', '96.56 BT', '5.4038', '95.4645', '2.6', 'Lemah', '43', 'Dangkal', '0.022266', 'Kecil', '129.239', 'Intermediet', '1', 'Tidak Ada atau Jarang Kerusakan', '1', 'Tidak Ada atau Jarang Kerusakan', 'TEPAT');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gain`
--

CREATE TABLE `gain` (
  `id` int(11) NOT NULL,
  `atribut` varchar(20) DEFAULT NULL,
  `gain` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gain`
--

INSERT INTO `gain` (`id`, `atribut`, `gain`) VALUES
(1, 'kategori_magnitudo', 0.12102143275343),
(2, 'kategori_kedalaman', 0.057458520681466),
(3, 'kategori_jarakhipo', 0.0058228704087515);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_prediksi`
--

CREATE TABLE `hasil_prediksi` (
  `id` int(11) NOT NULL,
  `lat` varchar(20) DEFAULT NULL,
  `long` varchar(20) DEFAULT NULL,
  `latsta` varchar(20) DEFAULT NULL,
  `longsta` varchar(20) DEFAULT NULL,
  `magnitudo` varchar(20) DEFAULT NULL,
  `kategori_magnitudo` varchar(20) DEFAULT NULL,
  `kedalaman` varchar(20) DEFAULT NULL,
  `kategori_kedalaman` varchar(20) DEFAULT NULL,
  `PGA` varchar(20) DEFAULT NULL,
  `kategori_PGA` varchar(20) DEFAULT NULL,
  `jarakhipo` varchar(20) DEFAULT NULL,
  `kategori_jarakhipo` varchar(20) DEFAULT NULL,
  `MMI` varchar(20) DEFAULT NULL,
  `efek_gempa` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hasil_prediksi`
--

INSERT INTO `hasil_prediksi` (`id`, `lat`, `long`, `latsta`, `longsta`, `magnitudo`, `kategori_magnitudo`, `kedalaman`, `kategori_kedalaman`, `PGA`, `kategori_PGA`, `jarakhipo`, `kategori_jarakhipo`, `MMI`, `efek_gempa`) VALUES
(24, '-9.58', '120.16', '-9.6694', '120.2998', '5.5', 'Kuat', '77', 'Menengah', '2', 'Kecil', '135.44', 'Intermediet', '1', 'cek'),
(25, '-9.58', '120.16', '-9.6694', '120.2998', '5.5', 'Kuat', '77', 'Menengah', '2', 'Kecil', '135.44', 'Intermediet', '1', 'tidak ada atau jaran'),
(26, '-9.58', '120.16', '-9.6694', '120.2998', '7', 'Kuat', '10', 'Sangat Dangkal', '18', 'Medium', '135.178', 'Intermediet', '4', 'barang-barang berger'),
(27, '121', '111', '98', '88', '5', 'Kuat', '10', 'Sangat Dangkal', '25', 'Medium', '1627.533', 'Sangat Dalam', '1', 'tidak ada atau jaran'),
(28, '121', '111', '98', '88', '5', 'Kuat', '10', 'Sangat Dangkal', '25', 'Medium', '1627.533', 'Sangat Dalam', '1', 'tidak ada atau jaran'),
(29, '121', '111', '-7.37359', '111.484374', '5.5', 'Kuat', '10', 'Sangat Dangkal', '5', 'Kecil', '3778.141', 'Sangat Dalam', '3', 'tidak ada atau jaran'),
(30, '121', '111', '98', '88', '5.5', 'Kuat', '10', 'Sangat Dangkal', '10', 'Medium', '1627.533', 'Sangat Dalam', '5', 'barang-barang berger');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pohon_keputusan`
--

CREATE TABLE `pohon_keputusan` (
  `id` int(11) NOT NULL,
  `parent` text DEFAULT NULL,
  `akar` text DEFAULT NULL,
  `keputusan` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pohon_keputusan`
--

INSERT INTO `pohon_keputusan` (`id`, `parent`, `akar`, `keputusan`) VALUES
(1, '', '(kategori_PGA=\'Sangat Besar\')', '8'),
(2, '(kategori_PGA=\'Kecil\' OR kategori_PGA=\'Medium\' OR kategori_PGA=\'Besar\')', '(kategori_PGA=\'Besar\')', '5'),
(3, '(kategori_PGA=\'Kecil\' OR kategori_PGA=\'Medium\' OR kategori_PGA=\'Besar\') AND (kategori_PGA=\'Kecil\' OR kategori_PGA=\'Medium\') AND (kategori_PGA=\'Kecil\')', '(kategori_jarakhipo=\'Sangat Dalam\')', '3'),
(4, '(kategori_PGA=\'Kecil\' OR kategori_PGA=\'Medium\' OR kategori_PGA=\'Besar\') AND (kategori_PGA=\'Kecil\' OR kategori_PGA=\'Medium\') AND (kategori_PGA=\'Kecil\') AND (kategori_jarakhipo=\'Sangat Dangkal\' OR kategori_jarakhipo=\'Dangkal\' OR kategori_jarakhipo=\'Intermediet\' OR kategori_jarakhipo=\'Dalam\')', '(kategori_jarakhipo=\'Dalam\')', '1'),
(7, '(kategori_PGA=\'Kecil\' OR kategori_PGA=\'Medium\' OR kategori_PGA=\'Besar\') AND (kategori_PGA=\'Kecil\' OR kategori_PGA=\'Medium\') AND (kategori_PGA=\'Kecil\') AND (kategori_jarakhipo=\'Sangat Dangkal\' OR kategori_jarakhipo=\'Dangkal\' OR kategori_jarakhipo=\'Intermediet\' OR kategori_jarakhipo=\'Dalam\') AND (kategori_jarakhipo=\'Sangat Dangkal\' OR kategori_jarakhipo=\'Dangkal\' OR kategori_jarakhipo=\'Intermediet\')', '(kategori_jarakhipo=\'Sangat Dangkal\')', '3'),
(8, '(kategori_PGA=\'Kecil\' OR kategori_PGA=\'Medium\' OR kategori_PGA=\'Besar\') AND (kategori_PGA=\'Kecil\' OR kategori_PGA=\'Medium\') AND (kategori_PGA=\'Kecil\') AND (kategori_jarakhipo=\'Sangat Dangkal\' OR kategori_jarakhipo=\'Dangkal\' OR kategori_jarakhipo=\'Intermediet\' OR kategori_jarakhipo=\'Dalam\') AND (kategori_jarakhipo=\'Sangat Dangkal\' OR kategori_jarakhipo=\'Dangkal\' OR kategori_jarakhipo=\'Intermediet\') AND (kategori_jarakhipo=\'Dangkal\' OR kategori_jarakhipo=\'Intermediet\')', '(kategori_magnitudo=\'Sangat Kuat\')', '2'),
(9, '(kategori_PGA=\'Kecil\' OR kategori_PGA=\'Medium\' OR kategori_PGA=\'Besar\') AND (kategori_PGA=\'Kecil\' OR kategori_PGA=\'Medium\') AND (kategori_PGA=\'Kecil\') AND (kategori_jarakhipo=\'Sangat Dangkal\' OR kategori_jarakhipo=\'Dangkal\' OR kategori_jarakhipo=\'Intermediet\' OR kategori_jarakhipo=\'Dalam\') AND (kategori_jarakhipo=\'Sangat Dangkal\' OR kategori_jarakhipo=\'Dangkal\' OR kategori_jarakhipo=\'Intermediet\') AND (kategori_jarakhipo=\'Dangkal\' OR kategori_jarakhipo=\'Intermediet\') AND (kategori_magnitudo=\'Kuat\' OR kategori_magnitudo=\'Sedang\' OR kategori_magnitudo=\'Lemah\')', '(kategori_magnitudo=\'Lemah\')', '1'),
(10, '(kategori_PGA=\'Kecil\' OR kategori_PGA=\'Medium\' OR kategori_PGA=\'Besar\') AND (kategori_PGA=\'Kecil\' OR kategori_PGA=\'Medium\') AND (kategori_PGA=\'Kecil\') AND (kategori_jarakhipo=\'Sangat Dangkal\' OR kategori_jarakhipo=\'Dangkal\' OR kategori_jarakhipo=\'Intermediet\' OR kategori_jarakhipo=\'Dalam\') AND (kategori_jarakhipo=\'Sangat Dangkal\' OR kategori_jarakhipo=\'Dangkal\' OR kategori_jarakhipo=\'Intermediet\') AND (kategori_jarakhipo=\'Dangkal\' OR kategori_jarakhipo=\'Intermediet\') AND (kategori_magnitudo=\'Kuat\' OR kategori_magnitudo=\'Sedang\' OR kategori_magnitudo=\'Lemah\') AND (kategori_magnitudo=\'Kuat\' OR kategori_magnitudo=\'Sedang\') AND (kategori_jarakhipo=\'Intermediet\') AND (kategori_magnitudo=\'Kuat\')', '(kategori_kedalaman=\'Dangkal\')', '3'),
(11, '(kategori_PGA=\'Kecil\' OR kategori_PGA=\'Medium\' OR kategori_PGA=\'Besar\') AND (kategori_PGA=\'Kecil\' OR kategori_PGA=\'Medium\') AND (kategori_PGA=\'Kecil\') AND (kategori_jarakhipo=\'Sangat Dangkal\' OR kategori_jarakhipo=\'Dangkal\' OR kategori_jarakhipo=\'Intermediet\' OR kategori_jarakhipo=\'Dalam\') AND (kategori_jarakhipo=\'Sangat Dangkal\' OR kategori_jarakhipo=\'Dangkal\' OR kategori_jarakhipo=\'Intermediet\') AND (kategori_jarakhipo=\'Dangkal\' OR kategori_jarakhipo=\'Intermediet\') AND (kategori_magnitudo=\'Kuat\' OR kategori_magnitudo=\'Sedang\' OR kategori_magnitudo=\'Lemah\') AND (kategori_magnitudo=\'Kuat\' OR kategori_magnitudo=\'Sedang\') AND (kategori_jarakhipo=\'Intermediet\') AND (kategori_magnitudo=\'Kuat\') AND (kategori_kedalaman=\'Menengah\' OR kategori_kedalaman=\'Sangat Dangkal\')', '(kategori_kedalaman=\'Sangat Dangkal\')', '3'),
(12, '(kategori_PGA=\'Kecil\' OR kategori_PGA=\'Medium\' OR kategori_PGA=\'Besar\') AND (kategori_PGA=\'Kecil\' OR kategori_PGA=\'Medium\') AND (kategori_PGA=\'Kecil\') AND (kategori_jarakhipo=\'Sangat Dangkal\' OR kategori_jarakhipo=\'Dangkal\' OR kategori_jarakhipo=\'Intermediet\' OR kategori_jarakhipo=\'Dalam\') AND (kategori_jarakhipo=\'Sangat Dangkal\' OR kategori_jarakhipo=\'Dangkal\' OR kategori_jarakhipo=\'Intermediet\') AND (kategori_jarakhipo=\'Dangkal\' OR kategori_jarakhipo=\'Intermediet\') AND (kategori_magnitudo=\'Kuat\' OR kategori_magnitudo=\'Sedang\' OR kategori_magnitudo=\'Lemah\') AND (kategori_magnitudo=\'Kuat\' OR kategori_magnitudo=\'Sedang\') AND (kategori_jarakhipo=\'Intermediet\') AND (kategori_magnitudo=\'Kuat\') AND (kategori_kedalaman=\'Menengah\' OR kategori_kedalaman=\'Sangat Dangkal\')', '(kategori_kedalaman=\'Menengah\')', '1'),
(14, '(kategori_PGA=\'Kecil\' OR kategori_PGA=\'Medium\' OR kategori_PGA=\'Besar\') AND (kategori_PGA=\'Kecil\' OR kategori_PGA=\'Medium\') AND (kategori_PGA=\'Kecil\') AND (kategori_jarakhipo=\'Sangat Dangkal\' OR kategori_jarakhipo=\'Dangkal\' OR kategori_jarakhipo=\'Intermediet\' OR kategori_jarakhipo=\'Dalam\') AND (kategori_jarakhipo=\'Sangat Dangkal\' OR kategori_jarakhipo=\'Dangkal\' OR kategori_jarakhipo=\'Intermediet\') AND (kategori_jarakhipo=\'Dangkal\' OR kategori_jarakhipo=\'Intermediet\') AND (kategori_magnitudo=\'Kuat\' OR kategori_magnitudo=\'Sedang\' OR kategori_magnitudo=\'Lemah\') AND (kategori_magnitudo=\'Kuat\' OR kategori_magnitudo=\'Sedang\') AND (kategori_jarakhipo=\'Intermediet\')', '(kategori_magnitudo=\'Sedang\')', '1'),
(16, '(kategori_PGA=\'Kecil\' OR kategori_PGA=\'Medium\' OR kategori_PGA=\'Besar\') AND (kategori_PGA=\'Kecil\' OR kategori_PGA=\'Medium\') AND (kategori_PGA=\'Kecil\') AND (kategori_jarakhipo=\'Sangat Dangkal\' OR kategori_jarakhipo=\'Dangkal\' OR kategori_jarakhipo=\'Intermediet\' OR kategori_jarakhipo=\'Dalam\') AND (kategori_jarakhipo=\'Sangat Dangkal\' OR kategori_jarakhipo=\'Dangkal\' OR kategori_jarakhipo=\'Intermediet\') AND (kategori_jarakhipo=\'Dangkal\' OR kategori_jarakhipo=\'Intermediet\') AND (kategori_magnitudo=\'Kuat\' OR kategori_magnitudo=\'Sedang\' OR kategori_magnitudo=\'Lemah\') AND (kategori_magnitudo=\'Kuat\' OR kategori_magnitudo=\'Sedang\')', '(kategori_jarakhipo=\'Dangkal\')', '3'),
(17, '(kategori_PGA=\'Kecil\' OR kategori_PGA=\'Medium\' OR kategori_PGA=\'Besar\') AND (kategori_PGA=\'Kecil\' OR kategori_PGA=\'Medium\') AND (kategori_PGA=\'Medium\')', '(kategori_jarakhipo=\'Sangat Dalam\')', '5'),
(18, '(kategori_PGA=\'Kecil\' OR kategori_PGA=\'Medium\' OR kategori_PGA=\'Besar\') AND (kategori_PGA=\'Kecil\' OR kategori_PGA=\'Medium\') AND (kategori_PGA=\'Medium\') AND (kategori_jarakhipo=\'Sangat Dangkal\' OR kategori_jarakhipo=\'Intermediet\' OR kategori_jarakhipo=\'Dangkal\' OR kategori_jarakhipo=\'Dalam\')', '(kategori_jarakhipo=\'Dalam\')', '3'),
(19, '(kategori_PGA=\'Kecil\' OR kategori_PGA=\'Medium\' OR kategori_PGA=\'Besar\') AND (kategori_PGA=\'Kecil\' OR kategori_PGA=\'Medium\') AND (kategori_PGA=\'Medium\') AND (kategori_jarakhipo=\'Sangat Dangkal\' OR kategori_jarakhipo=\'Intermediet\' OR kategori_jarakhipo=\'Dangkal\' OR kategori_jarakhipo=\'Dalam\') AND (kategori_jarakhipo=\'Sangat Dangkal\' OR kategori_jarakhipo=\'Intermediet\' OR kategori_jarakhipo=\'Dangkal\')', '(kategori_jarakhipo=\'Intermediet\')', '4'),
(21, '(kategori_PGA=\'Kecil\' OR kategori_PGA=\'Medium\' OR kategori_PGA=\'Besar\') AND (kategori_PGA=\'Kecil\' OR kategori_PGA=\'Medium\') AND (kategori_PGA=\'Medium\') AND (kategori_jarakhipo=\'Sangat Dangkal\' OR kategori_jarakhipo=\'Intermediet\' OR kategori_jarakhipo=\'Dangkal\' OR kategori_jarakhipo=\'Dalam\') AND (kategori_jarakhipo=\'Sangat Dangkal\' OR kategori_jarakhipo=\'Intermediet\' OR kategori_jarakhipo=\'Dangkal\')', '(kategori_jarakhipo=\'Dangkal\' OR kategori_jarakhipo=\'Sangat Dangkal\')', '3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rasio_gain`
--

CREATE TABLE `rasio_gain` (
  `id` int(11) NOT NULL,
  `opsi` varchar(10) DEFAULT NULL,
  `cabang1` varchar(50) DEFAULT NULL,
  `cabang2` varchar(50) DEFAULT NULL,
  `rasio_gain` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rasio_gain`
--

INSERT INTO `rasio_gain` (`id`, `opsi`, `cabang1`, `cabang2`, `rasio_gain`) VALUES
(1, 'opsi1', 'Sedang', 'Kuat , Lemah', 0.12233713228578),
(2, 'opsi2', 'Kuat', 'Lemah , Sedang', 0.12363383415147),
(3, 'opsi3', 'Lemah', 'Sedang , Kuat', 0.73156986394474);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_id` varchar(25) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `nama`, `password`, `type`) VALUES
('41170002', 'Ade Rahmawati', '41170002', '1'),
('41170007', 'Aminulloh Zaqi', '41170007', '1'),
('admin', 'Administrator', 'admin', '0');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `gain`
--
ALTER TABLE `gain`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `hasil_prediksi`
--
ALTER TABLE `hasil_prediksi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pohon_keputusan`
--
ALTER TABLE `pohon_keputusan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rasio_gain`
--
ALTER TABLE `rasio_gain`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `gain`
--
ALTER TABLE `gain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `hasil_prediksi`
--
ALTER TABLE `hasil_prediksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `pohon_keputusan`
--
ALTER TABLE `pohon_keputusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `rasio_gain`
--
ALTER TABLE `rasio_gain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
