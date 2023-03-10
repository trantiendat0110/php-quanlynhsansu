-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2022 at 05:02 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `duan1`
--
CREATE DATABASE IF NOT EXISTS `duan1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `duan1`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_anhykien`
--

CREATE TABLE `tbl_anhykien` (
  `id` int(11) NOT NULL,
  `id_luuykien` int(11) NOT NULL,
  `ten_anh` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bangluong`
--

CREATE TABLE `tbl_bangluong` (
  `id_bangluong` int(11) NOT NULL,
  `so_gio_lam_viec` double NOT NULL DEFAULT 0,
  `tong_tien_luong` double DEFAULT NULL,
  `luong_thang` date DEFAULT NULL,
  `thue_thu_nhap` int(11) DEFAULT NULL,
  `thue_bao_hiem` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_nhanvien` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_bangluong`
--

INSERT INTO `tbl_bangluong` (`id_bangluong`, `so_gio_lam_viec`, `tong_tien_luong`, `luong_thang`, `thue_thu_nhap`, `thue_bao_hiem`, `created_at`, `updated_at`, `id_nhanvien`) VALUES
(4, 196, NULL, '2020-07-01', 0, 78750, '2020-07-27 01:12:31', '2020-07-31 00:40:35', 'GDGD.Nha.01'),
(7, 195, 2412878.787878788, '2020-06-01', 0, 253352, '2020-07-27 01:12:31', '2020-08-19 13:59:35', 'GDGD.Nha.01'),
(10, 190, 2351010.1010101014, '2020-08-01', 0, 246856, '2020-08-03 02:32:33', '2020-08-19 19:31:51', 'GDGD.Nha.01'),
(11, 50, 4444444.444444445, '2020-06-01', 0, 466667, '2020-08-19 09:15:19', '2020-08-19 13:59:35', 'QLNS.Cuong.4'),
(13, 196, 25242424.242424242, '2020-06-01', 559197, 2650455, NULL, '2020-08-19 13:59:35', 'PGDPGD.Thanh.3'),
(14, 196, 18313131.313131314, '2020-08-01', 94513, 1922879, NULL, '2020-08-19 19:31:51', 'PGDPGD.Nha.2'),
(15, 180, 16000000, '2020-06-01', 36000, 1680000, NULL, '2020-08-19 13:34:07', 'QLKTTC.Dat.6'),
(16, 198, NULL, '2020-07-01', NULL, NULL, NULL, NULL, 'PGDPGD.Thanh.3'),
(17, 190, 17752525.25252525, '2020-06-01', 69426, 1864015, NULL, '2020-08-19 13:59:35', 'PGDPGD.Nha.2'),
(18, 0, NULL, '2022-11-01', NULL, NULL, '2022-11-19 07:39:27', '2022-11-19 07:39:27', 'GDGD.Nha.01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chamcong`
--

CREATE TABLE `tbl_chamcong` (
  `id_chamcong` int(11) NOT NULL,
  `check_in` datetime NOT NULL,
  `thoi_gian_lam` double DEFAULT NULL,
  `id_tangca` int(11) DEFAULT NULL,
  `id_bangluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_chamcong`
--

INSERT INTO `tbl_chamcong` (`id_chamcong`, `check_in`, `thoi_gian_lam`, `id_tangca`, `id_bangluong`) VALUES
(6, '2020-07-27 09:51:08', 6.016388888888889, NULL, 4),
(15, '2020-07-29 17:58:59', NULL, NULL, 4),
(16, '2020-07-31 14:40:24', 0.0030555555555555557, NULL, 4),
(17, '2020-08-03 09:15:25', 8.011111111111111, NULL, 10),
(20, '2020-08-10 18:09:44', 0.0005555555555555556, NULL, 10),
(21, '2020-08-14 07:49:37', NULL, NULL, 10),
(22, '2020-08-18 11:55:26', 0.10055555555555555, NULL, 10),
(23, '2020-08-01 09:00:00', 8, NULL, 14),
(24, '2020-08-02 09:00:00', 8, NULL, 14),
(25, '2020-08-03 09:00:00', 8, NULL, 14),
(26, '2020-08-04 09:00:00', 8, NULL, 14),
(27, '2020-08-05 09:00:00', 8, NULL, 14),
(28, '2020-08-06 09:00:00', 8, NULL, 14),
(29, '2020-08-20 12:36:30', NULL, NULL, 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chitietphuluc`
--

CREATE TABLE `tbl_chitietphuluc` (
  `id` int(11) NOT NULL,
  `noi_dung_khac` longtext DEFAULT NULL,
  `thay_doi_luong` double DEFAULT NULL,
  `id_loaihopdong_moi` int(11) DEFAULT NULL,
  `ngay_bat_dau` date NOT NULL,
  `ngay_ket_thuc` date DEFAULT NULL,
  `id_chucvu_moi` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `id_phucap_moi` int(11) DEFAULT NULL,
  `id_hopdong` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_chitietphuluc`
--

INSERT INTO `tbl_chitietphuluc` (`id`, `noi_dung_khac`, `thay_doi_luong`, `id_loaihopdong_moi`, `ngay_bat_dau`, `ngay_ket_thuc`, `id_chucvu_moi`, `id_phucap_moi`, `id_hopdong`, `created_at`, `updated_at`) VALUES
(61, NULL, NULL, 2, '2020-08-21', NULL, NULL, NULL, '14-HDLD-ABC', '2020-08-19 18:50:55', '2020-08-19 18:50:55'),
(62, NULL, 123456789, NULL, '2020-08-02', '2020-09-19', NULL, NULL, '14-HDLD-ABC', '2020-08-19 19:00:19', '2020-08-19 19:00:19'),
(66, NULL, 123123123123, NULL, '2020-08-29', '2020-10-30', NULL, NULL, '16-HDLD-ABC', '2020-08-29 08:03:01', '2020-08-29 08:03:01'),
(67, NULL, NULL, NULL, '2020-08-29', '2020-11-28', 'PGDPGD', 35, '16-HDLD-ABC', '2020-08-29 08:03:23', '2020-08-29 08:03:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chucvu`
--

CREATE TABLE `tbl_chucvu` (
  `id_chucvu` varchar(10) NOT NULL,
  `ten_chuc_vu` varchar(255) NOT NULL,
  `noi_dung_cv` longtext DEFAULT NULL,
  `id_phongban` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_chucvu`
--

INSERT INTO `tbl_chucvu` (`id_chucvu`, `ten_chuc_vu`, `noi_dung_cv`, `id_phongban`, `created_at`, `updated_at`) VALUES
('GDGD', 'Gi??m ?????c', '<p>- L&agrave; ng?????i ?????i di???n theo ph&aacute;p lu???t c???a C&ocirc;ng ty. Ph??? tr&aacute;ch chung, ch???u tr&aacute;ch nhi???m tr?????c T???ng c&ocirc;ng ty v&agrave; Ph&aacute;p lu???t v??? m???i ho???t ?????ng ??i???u h&agrave;nh c???a C&ocirc;ng ty. Gi&aacute;m ?????c C&ocirc;ng ty tr???c ti???p ph??? tr&aacute;ch c&aacute;c l??nh v???c:<br />\r\n- C&ocirc;ng t&aacute;c T??? ch???c - Nh&acirc;n s???; Thi ??ua Khen th?????ng v&agrave; k??? lu???t.<br />\r\n- C&ocirc;ng t&aacute;c T&agrave;i ch&iacute;nh - K??? to&aacute;n.<br />\r\n- C&ocirc;ng t&aacute;c Kinh doanh:<br />\r\n+ K??? ho???ch ng???n h???n, d&agrave;i h???n v&agrave; chi???n l?????c kinh doanh.<br />\r\n+ L???a ch???n nh&agrave; ph&acirc;n ph???i, h&igrave;nh th???c ph&acirc;n ph???i, ti???n ????? cung ???ng h&agrave;ng ho&aacute; ra th??? tr?????ng.<br />\r\n+ Quy m&ocirc;, ph????ng th???c ?????u t?? ph&aacute;t tri???n th??? tr?????ng.<br />\r\n+ K&yacute; k???t h???p ?????ng kinh t??? mua - b&aacute;n h&agrave;ng ho&aacute;, d???ch v???.</p>\r\n\r\n<p>...</p>', 'GD', NULL, '2020-08-24 09:52:46'),
('NVKTTC', 'Nh??n Vi??n KT-TC', '<p><em>C&ocirc;ng t&aacute;c k??? to&aacute;n</em><br />\r\n- T??? ch???c b??? m&aacute;y k??? to&aacute;n ph&ugrave; h???p v???i m&ocirc; h&igrave;nh t??? ch???c s???n xu???t kinh doanh c???a C&ocirc;ng ty v&agrave; c???a T???ng c&ocirc;ng ty.<br />\r\n- T??? ch???c ph??? bi???n v&agrave; h?????ng d???n k???p th???i c&aacute;c ch??? ?????, ch&iacute;nh s&aacute;ch t&agrave;i ch&iacute;nh, k??? to&aacute;n c???a Nh&agrave; n?????c v&agrave; c???a T???ng c&ocirc;ng ty.<br />\r\n- X&acirc;y d???ng c???m nang th??? t???c k??? to&aacute;n v&agrave; t??? ch???c ph??? bi???n, h?????ng d???n ?????n t???ng c&aacute;n b??? c&ocirc;ng nh&acirc;n vi&ecirc;n C&ocirc;ng ty ????? th???c hi???n.<br />\r\n- Ghi ch&eacute;p v&agrave; h???ch to&aacute;n ??&uacute;ng, ?????y ????? v&agrave; k???p th???i c&aacute;c nghi???p v??? kinh t??? ph&aacute;t sinh theo Chu???n m???c, Ch??? ????? k??? to&aacute;n Vi???t Nam, quy ?????nh c??? th??? c???a C&ocirc;ng ty v&agrave; T???ng c&ocirc;ng ty. T??? ch???c h???ch to&aacute;n t???ng h???p c&aacute;c lo???i v???n, qu???, t???ng h???p gi&aacute; th&agrave;nh, k???t qu??? s???n xu???t kinh doanh c???a C&ocirc;ng ty.<br />\r\n- Ki???m tra t&iacute;nh h???p l&yacute;, h???p l??? c???a t???t c??? c&aacute;c lo???i h&oacute;a ????n, ch???ng t???, ho&agrave;n ch???nh c&aacute;c th??? t???c k??? to&aacute;n tr?????c khi tr&igrave;nh L&atilde;nh ?????o C&ocirc;ng ty ph&ecirc; duy???t.<br />\r\n- T??? ch???c v&agrave; tham gia ki???m k&ecirc; ?????nh k??? ho???c ?????t xu???t to&agrave;n b??? v???t t??, t&agrave;i s???n, ti???n v???n theo quy ?????nh c???a Nh&agrave; n?????c, theo y&ecirc;u c???u c???a C&ocirc;ng ty v&agrave; T???ng c&ocirc;ng ty, ?????ng th???i ????? xu???t h?????ng x??? l&yacute; k???t qu??? ki???m k&ecirc;.<br />\r\n- K&ecirc; khai, tr&iacute;ch n???p v&agrave; quy???t to&aacute;n c&aacute;c kho???n n???p ng&acirc;n s&aacute;ch; thanh to&aacute;n c&aacute;c kho???n ti???n vay, c&aacute;c kho???n c&ocirc;ng n??? ph???i thu, ph???i tr???.<br />\r\n- Tr&iacute;ch l???p, ph&acirc;n ph???i c&aacute;c qu??? theo quy???t ?????nh c???a T???ng c&ocirc;ng ty v&agrave; s??? d???ng c&aacute;c qu??? do C&ocirc;ng ty qu???n l&yacute; theo ??&uacute;ng m???c ??&iacute;ch.<br />\r\n- Theo d&otilde;i, b&aacute;o c&aacute;o t&igrave;nh h&igrave;nh bi???n ?????ng gi&aacute; th&agrave;nh c&aacute;c s???n ph???m, gi&aacute; c??? v???t t?? h&agrave;ng h&oacute;a, ngo???i t???...; ki???m so&aacute;t gi&aacute; c??? h&agrave;ng h&oacute;a mua v&agrave;o.<br />\r\n- L???p h??? s?? quy???t to&aacute;n v???n ?????u t?? c&aacute;c d??? &aacute;n ho&agrave;n th&agrave;nh, c&aacute;c ngu???n kinh ph&iacute; h??? tr???.<br />\r\n- Theo d&otilde;i, h???ch to&aacute;n c&aacute;c kho???n ?????u t?? t&agrave;i ch&iacute;nh ng???n h???n v&agrave; d&agrave;i h???n; theo d&otilde;i, ?????i chi???u c&ocirc;ng n??? v&agrave; ph&acirc;n lo???i n???; ??&ocirc;n ?????c thu h???i n??? v&agrave; ????? xu???t x??? l&yacute; c&aacute;c kho???n n??? ph???i thu kh&oacute; ??&ograve;i.<br />\r\n- Ch???p h&agrave;nh quy???t ?????nh c???a T???ng c&ocirc;ng ty, c&aacute;c c?? quan thanh tra, ki???m to&aacute;n nh&agrave; n?????c v??? vi???c ki???m tra ho???t ?????ng k??? to&aacute;n t&agrave;i ch&iacute;nh c???a C&ocirc;ng ty.<br />\r\n- L???p v&agrave; n???p c&aacute;c b&aacute;o c&aacute;o t&agrave;i ch&iacute;nh theo ch??? ????? quy ?????nh.</p>', 'KTTC', '2020-08-19 08:06:16', '2020-08-30 07:44:42'),
('NVMKT', 'Nh??n Vi??n Maketing', '<p><em>&nbsp;C&ocirc;ng t&aacute;c nghi&ecirc;n c???u th??? tr?????ng</em><br />\r\n- Nghi&ecirc;n c???u xu h?????ng th??? tr?????ng v??? s???n ph???m, gi&aacute; c???, ph&acirc;n ph???i, kh&aacute;ch h&agrave;ng, t&acirc;m l&yacute; v&agrave; xu h?????ng thay ?????i c???a ng?????i ti&ecirc;u d&ugrave;ng, ch&iacute;nh s&aacute;ch h???u m&atilde;i,&nbsp; ?????i th??? c???nh tranh&hellip;<br />\r\n<em>Gi&aacute;m s&aacute;t, qu???n l&yacute; v&ugrave;ng th??? tr?????ng; ph&aacute;t tri???n m???i</em><br />\r\n- T??? ch???c gi&aacute;m s&aacute;t, qu???n l&yacute; v&ugrave;ng th??? tr?????ng.<br />\r\n- Ch??? tr&igrave; tri???n khai c&ocirc;ng t&aacute;c x&acirc;y d???ng ph&aacute;t tri???n k&ecirc;nh ph&acirc;n ph???i m???i.<br />\r\n- Ph???i h???p ??&aacute;nh gi&aacute; n??ng l???c Nh&agrave; ph&acirc;n ph???i v&agrave; k&ecirc;nh ph&acirc;n ph???i.<br />\r\n- Ph???i h???p ????? xu???t c&aacute;c gi???i ph&aacute;p n&acirc;ng cao ch???t l?????ng h??? th???ng k&ecirc;nh ph&acirc;n ph???i.<br />\r\n- X&acirc;y d???ng v&agrave; t??? ch???c c&aacute;c ho???t ?????ng c???a h&agrave;ng m???u, c&aacute;c k&ecirc;nh gi???i thi???u s???n ph???m.</p>', 'MKT', '2020-08-19 08:05:40', '2020-08-30 07:45:31'),
('NVNS', 'Nh??n Vi??n Nh??n S???', '<p><em>C&ocirc;ng t&aacute;c V??n th?? l??u tr???</em><br />\r\n&nbsp; &nbsp;- Qu???n l&yacute; l???ch c&ocirc;ng t&aacute;c, giao ban, h???i h???p, sinh ho???t ?????nh k??? v&agrave; b???t th?????ng; th?? k&yacute; cu???c h???p giao ban; th&ocirc;ng b&aacute;o c&aacute;c &yacute; ki???n ch??? ?????o c???a L&atilde;nh ?????o C&ocirc;ng ty.<br />\r\n&nbsp; &nbsp;- X&acirc;y d???ng k??? ho???ch, quy ch???, quy ?????nh v&agrave; c&aacute;c v??n b???n h?????ng d???n, ki???m tra nghi???p v??? v??n th?? l??u tr???.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n&nbsp; &nbsp;- Ti???p nh???n, x??? l&yacute; c&aacute;c v??n b???n v&agrave; t&agrave;i li???u ?????n - ??i c???a C&ocirc;ng ty.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n&nbsp; &nbsp;- Qu???n l&yacute; h??? s?? h&agrave;nh ch&iacute;nh v&agrave; con d???u c???a C&ocirc;ng ty.<br />\r\n&nbsp; &nbsp;- L??u tr???, qu???n l&yacute; v&agrave; khai th&aacute;c h??? s?? l??u tr??? c???a C&ocirc;ng ty.<br />\r\n&nbsp; - ?????u m???i ????? ngh??? ch???nh l&yacute; t&agrave;i li???u; th???m ?????nh gi&aacute; tr??? t&agrave;i li???u lo???i, h???y sau ch???nh l&yacute;.<br />\r\n&nbsp;- T???ng h???p l???ch l&agrave;m vi???c c???a L&atilde;nh ?????o C&ocirc;ng ty.<br />\r\n<em>&nbsp; C&ocirc;ng t&aacute;c Ph&aacute;p ch???</em><br />\r\n&nbsp; - X&acirc;y d???ng quy ch???, c&aacute;c v??n b???n h?????ng d???n, ki???m tra gi&aacute;m s&aacute;t vi???c th???c hi???n c&ocirc;ng t&aacute;c ph&aacute;p ch??? c???a C&ocirc;ng ty.<br />\r\n&nbsp; - T???ng h???p, c???p nh???t c&aacute;c ch&iacute;nh s&aacute;ch ph&aacute;p lu???t li&ecirc;n quan ?????n ho???t ?????ng kinh doanh c???a C&ocirc;ng ty.<br />\r\n&nbsp; - Th???m ?????nh v??? m???t ph&aacute;p l&yacute; c&aacute;c quy ?????nh, quy ch??? qu???n l&yacute; n???i b???.<br />\r\n&nbsp; - Tham m??u v&agrave; ki???m tra t&iacute;nh ph&aacute;p l&yacute; ?????i v???i vi???c k&yacute; k???t h???p ?????ng.<br />\r\n&nbsp; - ?????u m???i t???ng h???p &yacute; ki???n ??&oacute;ng g&oacute;p c&aacute;c d??? th???o v??n b???n quy ph???m ph&aacute;p lu???t do c&aacute;c c?? quan Nh&agrave; n?????c v&agrave; T???ng c&ocirc;ng ty g???i xin &yacute; ki???n.<br />\r\n&nbsp;- T???ng k???t, ??&aacute;nh gi&aacute; nh???ng v?????ng m???c trong qu&aacute; tr&igrave;nh th???c hi???n ph&aacute;p lu???t li&ecirc;n quan ?????n l??nh v???c kinh doanh c???a C&ocirc;ng ty.<br />\r\n&nbsp;- H?????ng d???n, ki???m so&aacute;t c&aacute;c ho???t ?????ng trong C&ocirc;ng ty th???c hi???n ??&uacute;ng quy ?????nh c???a ph&aacute;p lu???t.<br />\r\n&nbsp; - Th???c hi???n c&aacute;c ho???t ?????ng th&ocirc;ng tin, tuy&ecirc;n truy???n, ph??? bi???n, gi&aacute;o d???c ph&aacute;p lu???t v&agrave; n???i quy, quy ch??? c???a C&ocirc;ng ty cho ng?????i lao ?????ng.<br />\r\n&nbsp;- ?????u m???i gi???i quy???t c&aacute;c tranh ch???p mang t&iacute;nh ph&aacute;p l&yacute; ph&aacute;t sinh trong c&aacute;c quan h??? giao d???ch c???a C&ocirc;ng ty.</p>', 'NS', '2020-08-19 08:04:38', '2020-08-30 07:46:30'),
('PGDPGD', 'Ph?? Gi??m ?????c', '<p>&nbsp;Gi&uacute;p vi???c v&agrave; ch???u tr&aacute;ch nhi???m tr?????c Gi&aacute;m ?????c C&ocirc;ng ty v&agrave; Ph&aacute;p lu???t v??? c&aacute;c l??nh v???c c&ocirc;ng t&aacute;c do Gi&aacute;m ?????c C&ocirc;ng ty ph&acirc;n c&ocirc;ng v&agrave; u??? quy???n. Thay m???t Gi&aacute;m ?????c C&ocirc;ng ty tr???c ti???p ph??? tr&aacute;ch c&aacute;c l??nh v???c:<br />\r\n- &nbsp;B???o v???, m??? r???ng v&agrave; ph&aacute;t tri???n th??? tr?????ng, th??? ph???n h&agrave;ng ho&aacute; C&ocirc;ng ty ??ang kinh doanh bao g???m: ch??? ?????o vi???c x&acirc;y d???ng ph????ng &aacute;n, t??? ch???c th???c hi???n c&aacute;c ph????ng &aacute;n ??&atilde; ???????c Gi&aacute;m ?????c C&ocirc;ng ty ph&ecirc; duy???t.<br />\r\n- &nbsp;T??? ch???c&nbsp; ti???p nh???n v&agrave; giao nh???n&nbsp; theo k??? ho???ch.<br />\r\n- &nbsp;T??? ch???c b???o qu???n h&agrave;ng ho&aacute; trong kho C&ocirc;ng ty, h&agrave;ng ho&aacute; tr&ecirc;n ???????ng, h&agrave;ng ho&aacute; t???n t???i Nh&agrave; ph&acirc;n ph???i v&agrave; t???i c&aacute;c c???a h&agrave;ng.<br />\r\n- &nbsp;C&ocirc;ng t&aacute;c ki???m so&aacute;t ch???t l?????ng s???n ph???m trong qu&aacute; tr&igrave;nh ph&acirc;n ph???i ti&ecirc;u th???.<br />\r\n- &nbsp;Tham gia gi&aacute;m s&aacute;t ho???t ?????ng c&ocirc;ng t&aacute;c th??? tr?????ng, gi&aacute;m s&aacute;t k&ecirc;nh ph&acirc;n ph???i.<br />\r\n- &nbsp;C&ocirc;ng t&aacute;c qu???n tr??? h&agrave;nh ch&iacute;nh, v??n th?? l??u tr???, an to&agrave;n v??? sinh lao ?????ng, PCCN, PCLB v&agrave; an ninh qu???c ph&ograve;ng.<br />\r\n- &nbsp;C&ocirc;ng t&aacute;c ti???n l????ng, b???o h???, b???o hi???m lao ?????ng v&agrave; t&agrave;i s???n.<br />\r\n- &nbsp;K&yacute; k???t c&aacute;c h???p ?????ng kinh t??? theo u??? quy???n c???a Gi&aacute;m ?????c C&ocirc;ng ty.<br />\r\n- &nbsp;Ph???i h???p c&ocirc;ng t&aacute;c v???i c&aacute;c t??? ch???c ??o&agrave;n th??? ch&iacute;nh tr??? x&atilde; h???i.<br />\r\n- &nbsp;Th???c hi???n c&aacute;c nhi???m v??? kh&aacute;c khi Gi&aacute;m ?????c C&ocirc;ng ty ph&acirc;n c&ocirc;ng.<br />\r\n- &nbsp;??i???u h&agrave;nh ho???t ?????ng h&agrave;ng ng&agrave;y c???a C&ocirc;ng ty theo u??? quy???n c???a Gi&aacute;m ?????c C&ocirc;ng ty v&agrave; khi Gi&aacute;m ?????c C&ocirc;ng ty ??i v???ng.</p>', 'PGD', '2020-08-19 07:53:11', '2020-08-24 09:55:08'),
('QLKTTC', 'Qu???n L?? KT-TC', '<p><em>Ho???ch ?????nh chi???n l?????c t&agrave;i ch&iacute;nh doanh nghi???p</em><br />\r\n- Ho???ch ?????nh chi???n l?????c ?????u t?? t&agrave;i ch&iacute;nh hi???u qu???. Ho???ch ?????nh ngu???n v???n t&agrave;i tr???.</p>\r\n\r\n<p><em>C&ocirc;ng t&aacute;c t&agrave;i ch&iacute;nh</em><br />\r\n- X&acirc;y d???ng s??? tay k??? to&aacute;n qu???n tr??? v&agrave; ph&acirc;n t&iacute;ch t&agrave;i ch&iacute;nh doanh nghi???p.<br />\r\n- L???p k??? ho???ch t&agrave;i ch&iacute;nh, v???n ng???n h???n v&agrave; d&agrave;i h???n cho ho???t ?????ng s???n xu???t kinh doanh c???a C&ocirc;ng ty; c&acirc;n ?????i v???n v&agrave; ????? xu???t c&aacute;c gi???i ph&aacute;p huy ?????ng v???n; c&acirc;n ?????i d&ograve;ng ti???n thu, chi h&agrave;ng n??m c???a C&ocirc;ng ty ph&ugrave; h???p v???i c&aacute;c quy ?????nh hi???n h&agrave;nh.<br />\r\n- Ph&acirc;n t&iacute;ch gi&aacute; th&agrave;nh s???n ph???m, ph&acirc;n t&iacute;ch hi???u qu??? ho???t ?????ng s???n xu???t kinh doanh c???a C&ocirc;ng ty v&agrave; ????? xu???t gi???i ph&aacute;p nh???m c???i thi???n t&igrave;nh h&igrave;nh t&agrave;i ch&iacute;nh, n&acirc;ng cao hi???u qu??? s???n xu???t kinh doanh.<br />\r\n&nbsp;- Ch??? tr&igrave; th???c hi???n c&aacute;c th??? t???c th??? ch???p c???a kh&aacute;ch h&agrave;ng; theo d&otilde;i v&agrave; qu???n l&yacute; t&agrave;i s???n th??? ch???p theo quy ?????nh.<br />\r\n- Th???c hi???n ch??? ????? b&aacute;o c&aacute;o, c&ocirc;ng b??? th&ocirc;ng tin t&agrave;i ch&iacute;nh thu???c th???m quy???n c???a C&ocirc;ng ty, ph&ugrave; h???p quy ?????nh c???a ph&aacute;p lu???t v&agrave; y&ecirc;u c???u c???a T???ng c&ocirc;ng ty.</p>\r\n\r\n<p><em>C&ocirc;ng t&aacute;c k??? to&aacute;n</em><br />\r\n- T??? ch???c b??? m&aacute;y k??? to&aacute;n ph&ugrave; h???p v???i m&ocirc; h&igrave;nh t??? ch???c s???n xu???t kinh doanh c???a C&ocirc;ng ty v&agrave; c???a T???ng c&ocirc;ng ty.<br />\r\n- T??? ch???c ph??? bi???n v&agrave; h?????ng d???n k???p th???i c&aacute;c ch??? ?????, ch&iacute;nh s&aacute;ch t&agrave;i ch&iacute;nh, k??? to&aacute;n c???a Nh&agrave; n?????c v&agrave; c???a T???ng c&ocirc;ng ty.<br />\r\n- X&acirc;y d???ng c???m nang th??? t???c k??? to&aacute;n v&agrave; t??? ch???c ph??? bi???n, h?????ng d???n ?????n t???ng c&aacute;n b??? c&ocirc;ng nh&acirc;n vi&ecirc;n C&ocirc;ng ty ????? th???c hi???n.<br />\r\n- Ghi ch&eacute;p v&agrave; h???ch to&aacute;n ??&uacute;ng, ?????y ????? v&agrave; k???p th???i c&aacute;c nghi???p v??? kinh t??? ph&aacute;t sinh theo Chu???n m???c, Ch??? ????? k??? to&aacute;n Vi???t Nam, quy ?????nh c??? th??? c???a C&ocirc;ng ty v&agrave; T???ng c&ocirc;ng ty. T??? ch???c h???ch to&aacute;n t???ng h???p c&aacute;c lo???i v???n, qu???, t???ng h???p gi&aacute; th&agrave;nh, k???t qu??? s???n xu???t kinh doanh c???a C&ocirc;ng ty.<br />\r\n- Ki???m tra t&iacute;nh h???p l&yacute;, h???p l??? c???a t???t c??? c&aacute;c lo???i h&oacute;a ????n, ch???ng t???, ho&agrave;n ch???nh c&aacute;c th??? t???c k??? to&aacute;n tr?????c khi tr&igrave;nh L&atilde;nh ?????o</p>\r\n\r\n<p>.....</p>', 'KTTC', '2020-08-19 08:03:26', '2020-08-30 07:42:39'),
('QLMKT', 'Qu???n L?? Maketing', '<p><em>*Ho???t ?????ng Marketing</em><br />\r\n- X&acirc;y d???ng c&aacute;c ch????ng tr&igrave;nh ?????u t??, ph&aacute;t tri???n v&agrave; b???o v??? th??? tr?????ng; c&aacute;c ch&iacute;nh s&aacute;ch ph&aacute;t tri???n h&igrave;nh ???nh th????ng hi???u.<br />\r\n- X&acirc;y d???ng chi???n l?????c s???n ph???m, gi&aacute; b&aacute;n; ????? xu???t xem x&eacute;t kh&aacute;ch h&agrave;ng m???c ti&ecirc;u v&agrave; th??? tr?????ng m???c ti&ecirc;u trong t???ng giai ??o???n.<br />\r\n- Tri???n khai ch????ng tr&igrave;nh x&uacute;c ti???n th????ng m???i v&agrave; theo d&otilde;i th???c hi???n ch&iacute;nh s&aacute;ch<br />\r\n- ?????u m???i t???ng h???p, theo d&otilde;i khi???u n???i v&agrave; ph???n ???ng c???a ng?????i ti&ecirc;u d&ugrave;ng.<br />\r\n- Xem x&eacute;t, gi???i quy???t khi???u n???i, b???i th?????ng v&agrave; h&agrave;ng tr??? l???i ?????i v???i ng?????i ti&ecirc;u d&ugrave;ng.<br />\r\n- Th???c hi???n c&aacute;c ch????ng tr&igrave;nh ph&aacute;t tri???n th??? tr?????ng.<br />\r\n- Theo d&otilde;i, ??&aacute;nh gi&aacute; s??? th???a m&atilde;n c???a k&ecirc;nh ph&acirc;n ph???i v&agrave; ng?????i ti&ecirc;u d&ugrave;ng.<br />\r\n- ????? xu???t ??a d???ng h&oacute;a s???n ph???m kinh doanh; t??? ch???c th???c hi???n v&agrave; theo d&otilde;i vi???c ????a s???n ph???m m???i ra th??? tr?????ng.<br />\r\n- Thu th???p, x??? l&yacute; v&agrave; ph???n &aacute;nh c&aacute;c th&ocirc;ng tin v??? s???n ph???m c???nh tranh v&agrave; ?????i th??? c???nh tranh.<br />\r\n- Ph???i h???p t??? ch???c h???i ngh??? kh&aacute;ch h&agrave;ng; l&agrave; ?????u m???i t??? ch???c c&aacute;c s??? ki???n (<em>h???i th???o, th&ocirc;ng c&aacute;o b&aacute;o ch&iacute;, cung c???p th&ocirc;ng tin ra b&ecirc;n ngo&agrave;i&hellip;</em>).<br />\r\n- X&acirc;y d???ng, duy tr&igrave; v&agrave; ph&aacute;t tri???n c&aacute;c m???i quan h??? v???i c&aacute;c c?? quan truy???n th&ocirc;ng.</p>', 'MKT', '2020-08-19 08:01:29', '2020-08-30 07:43:57'),
('QLNS', 'Qu???n L?? Nh??n S???', '<p><em>C&ocirc;ng t&aacute;c T??? ch???c c&aacute;n b???</em><br />\r\n&nbsp; &nbsp; - X&acirc;y d???ng c&aacute;c ch&iacute;nh s&aacute;ch, quy ch???, quy ?????nh v??? t??? ch???c qu???n l&yacute; ngu???n nh&acirc;n l???c.<br />\r\n&nbsp; &nbsp; - ?????u m???i x&acirc;y d???ng, ????? xu???t m&ocirc; h&igrave;nh t??? ch???c ho???t ?????ng c???a C&ocirc;ng ty v&agrave; quy ?????nh ch???c n??ng, quy???n h???n, nhi???m v??? c&aacute;c ph&ograve;ng ban.<br />\r\n&nbsp; &nbsp; - B??? tr&iacute;, s???p x???p, quy ho???ch c&aacute;n b??? ph&ugrave; h???p v???i m&ocirc; h&igrave;nh t??? ch???c, y&ecirc;u c???u nhi???m v??? kinh doanh v&agrave; ph&aacute;t tri???n trong t???ng th???i k???.<br />\r\n&nbsp; &nbsp; - Qu???n l&yacute; v&agrave; x&acirc;y d???ng c&aacute;c ch&iacute;nh s&aacute;ch ?????i v???i c&aacute;n b??? qu???n l&yacute;;<br />\r\n<em>&nbsp; &nbsp;C&ocirc;ng t&aacute;c Nh&acirc;n s???</em><br />\r\n&nbsp; &nbsp;- X&acirc;y d???ng k??? ho???ch, th???c hi???n, theo d&otilde;i, ki???m tra v&agrave; b&aacute;o c&aacute;o c&aacute;c ch&iacute;nh s&aacute;ch nh&acirc;n l???c (<em>tuy???n d???ng, b??? tr&iacute;, ??&agrave;o t???o, ??&aacute;nh gi&aacute; ph&acirc;n t&iacute;ch, ph&aacute;t tri???n nh&acirc;n l???c&hellip;</em>).<br />\r\n&nbsp; &nbsp; - X&acirc;y d???ng k??? ho???ch, th???c hi???n, theo d&otilde;i, ki???m tra v&agrave; b&aacute;o c&aacute;o v??? lao ?????ng, ti???n l????ng, ti???n th?????ng.<br />\r\n&nbsp; &nbsp; - X&acirc;y d???ng k??? ho???ch, th???c hi???n, theo d&otilde;i, ki???m tra v&agrave; b&aacute;o c&aacute;o c&aacute;c ch&iacute;nh s&aacute;ch, ch??? ????? lao ?????ng (<em>n???i quy lao ?????ng, v??n h&oacute;a doanh nghi???p, thi ??ua khen th?????ng, thanh tra, k??? lu???t, b???o hi???m, tr??? c???p th&ocirc;i vi???c, ph&uacute;c l???i, v&igrave; s??? ti???n b??? c???a ph??? n???, quy ch??? d&acirc;n ch???, ph&ograve;ng ch???ng tham nh??ng, b???o h??? lao ?????ng&hellip;).</em><br />\r\n&nbsp; &nbsp; - ?????u m???i ph???i h???p v???i t??? ch???c C&ocirc;ng ??o&agrave;n C&ocirc;ng ty trong c&aacute;c ho???t ?????ng x&atilde; h???i v&agrave; th???c hi???n c&aacute;c ch&iacute;nh s&aacute;ch, ch??? ????? c&oacute; li&ecirc;n quan ?????n ng?????i lao ?????ng.<br />\r\n<em>&nbsp; C&ocirc;ng t&aacute;c H&agrave;nh ch&iacute;nh qu???n tr???</em><br />\r\n&nbsp; - T??? ch???c th???c hi???n c&ocirc;ng t&aacute;c l??? t&acirc;n, kh&aacute;nh ti???t, chu???n b??? h???i h???p v&agrave; t???p v??? (<em>??n, u???ng, v??? sinh&hellip;</em>).<br />\r\n&nbsp; &nbsp;- L???p k??? ho???ch, th???c hi???n ki???m so&aacute;t v&agrave; qu???n l&yacute; vi???c mua s???m, c???p ph&aacute;t v??n ph&ograve;ng ph???m.<br />\r\n&nbsp; &nbsp;- L???p k??? ho???ch, th???c hi???n v&agrave; ki???m so&aacute;t vi???c mua s???m c&aacute;c trang thi???t b???, t&agrave;i s???n v??n ph&ograve;ng, s???a ch???a nh??? v&agrave; ?????u t?? x&acirc;y d???ng c?? b???n.<br />\r\n&nbsp; &nbsp;- Th?????ng tr???c theo d&otilde;i vi???c tri???n khai &aacute;p d???ng H??? th???ng qu???n l&yacute; ch???t l?????ng ISO.<br />\r\n&nbsp; &nbsp;- Theo d&otilde;i, th???c hi???n, ki???m so&aacute;t vi???c ?????u t?? v???n h&agrave;nh tri???n khai ???ng d???ng c&ocirc;ng ngh??? th&ocirc;ng tin c???a C&ocirc;ng ty.<br />\r\n&nbsp; &nbsp;- Qu???n l&yacute;, ??i???u v???n xe &ocirc; t&ocirc; ph???c v??? l&atilde;nh ?????o, c&aacute;n b??? nh&acirc;n vi&ecirc;n, ph???c v??? c&ocirc;ng t&aacute;c th??? tr?????ng v&agrave; c&aacute;c ?????i t?????ng kh&aacute;c theo y&ecirc;u c???u c&ocirc;ng vi???c.<br />\r\n&nbsp; &nbsp;- Qu???n l&yacute;, th???c hi???n c&ocirc;ng t&aacute;c b???o v???, an ninh tr???t t???, ph&ograve;ng ch???ng ch&aacute;y n??? t???i tr??? s??? v??n ph&ograve;ng C&ocirc;ng ty.<br />\r\n&nbsp; &nbsp;- Th???c hi???n c&ocirc;ng t&aacute;c ?????i ngo???i v???i c&aacute;c c?? quan c&oacute; li&ecirc;n quan theo ph&acirc;n c???p.<br />\r\n&nbsp; &nbsp;- H?????ng d???n kh&aacute;ch ?????n li&ecirc;n h??? c&ocirc;ng t&aacute;c v???i C&ocirc;ng ty.</p>', 'NS', '2020-08-19 07:58:00', '2020-08-30 07:47:05');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chucvu_permission`
--

CREATE TABLE `tbl_chucvu_permission` (
  `id` int(11) NOT NULL,
  `id_chucvu` varchar(10) CHARACTER SET utf8 NOT NULL,
  `id_permission` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_chucvu_permission`
--

INSERT INTO `tbl_chucvu_permission` (`id`, `id_chucvu`, `id_permission`, `created_at`, `updated_at`) VALUES
(814, 'PGDPGD', 1, '2020-08-24 09:55:08', '2020-08-24 09:55:08'),
(815, 'PGDPGD', 2, '2020-08-24 09:55:08', '2020-08-24 09:55:08'),
(816, 'PGDPGD', 3, '2020-08-24 09:55:08', '2020-08-24 09:55:08'),
(817, 'PGDPGD', 4, '2020-08-24 09:55:08', '2020-08-24 09:55:08'),
(818, 'PGDPGD', 5, '2020-08-24 09:55:08', '2020-08-24 09:55:08'),
(819, 'PGDPGD', 6, '2020-08-24 09:55:08', '2020-08-24 09:55:08'),
(820, 'PGDPGD', 7, '2020-08-24 09:55:08', '2020-08-24 09:55:08'),
(821, 'PGDPGD', 8, '2020-08-24 09:55:08', '2020-08-24 09:55:08'),
(822, 'PGDPGD', 9, '2020-08-24 09:55:08', '2020-08-24 09:55:08'),
(823, 'PGDPGD', 10, '2020-08-24 09:55:08', '2020-08-24 09:55:08'),
(824, 'PGDPGD', 11, '2020-08-24 09:55:08', '2020-08-24 09:55:08'),
(825, 'PGDPGD', 12, '2020-08-24 09:55:08', '2020-08-24 09:55:08'),
(826, 'PGDPGD', 13, '2020-08-24 09:55:08', '2020-08-24 09:55:08'),
(827, 'PGDPGD', 14, '2020-08-24 09:55:08', '2020-08-24 09:55:08'),
(828, 'PGDPGD', 15, '2020-08-24 09:55:08', '2020-08-24 09:55:08'),
(829, 'PGDPGD', 16, '2020-08-24 09:55:08', '2020-08-24 09:55:08'),
(830, 'PGDPGD', 17, '2020-08-24 09:55:08', '2020-08-24 09:55:08'),
(831, 'PGDPGD', 18, '2020-08-24 09:55:08', '2020-08-24 09:55:08'),
(832, 'PGDPGD', 19, '2020-08-24 09:55:08', '2020-08-24 09:55:08'),
(833, 'PGDPGD', 20, '2020-08-24 09:55:08', '2020-08-24 09:55:08'),
(865, 'QLKTTC', 13, '2020-08-30 07:42:39', '2020-08-30 07:42:39'),
(866, 'QLKTTC', 20, '2020-08-30 07:42:39', '2020-08-30 07:42:39'),
(867, 'QLMKT', 3, '2020-08-30 07:43:57', '2020-08-30 07:43:57'),
(868, 'QLMKT', 4, '2020-08-30 07:43:57', '2020-08-30 07:43:57'),
(869, 'QLMKT', 20, '2020-08-30 07:43:57', '2020-08-30 07:43:57'),
(870, 'NVKTTC', 11, '2020-08-30 07:44:42', '2020-08-30 07:44:42'),
(871, 'NVKTTC', 15, '2020-08-30 07:44:42', '2020-08-30 07:44:42'),
(872, 'NVMKT', 3, '2020-08-30 07:45:31', '2020-08-30 07:45:31'),
(873, 'NVMKT', 11, '2020-08-30 07:45:31', '2020-08-30 07:45:31'),
(874, 'NVMKT', 15, '2020-08-30 07:45:31', '2020-08-30 07:45:31'),
(875, 'NVNS', 11, '2020-08-30 07:46:30', '2020-08-30 07:46:30'),
(876, 'NVNS', 15, '2020-08-30 07:46:30', '2020-08-30 07:46:30'),
(877, 'QLNS', 9, '2020-08-30 07:47:05', '2020-08-30 07:47:05'),
(878, 'QLNS', 10, '2020-08-30 07:47:05', '2020-08-30 07:47:05'),
(879, 'QLNS', 11, '2020-08-30 07:47:05', '2020-08-30 07:47:05'),
(880, 'QLNS', 12, '2020-08-30 07:47:05', '2020-08-30 07:47:05'),
(881, 'QLNS', 15, '2020-08-30 07:47:05', '2020-08-30 07:47:05'),
(882, 'QLNS', 16, '2020-08-30 07:47:05', '2020-08-30 07:47:05'),
(883, 'QLNS', 17, '2020-08-30 07:47:05', '2020-08-30 07:47:05'),
(884, 'QLNS', 18, '2020-08-30 07:47:05', '2020-08-30 07:47:05'),
(885, 'QLNS', 19, '2020-08-30 07:47:05', '2020-08-30 07:47:05'),
(886, 'QLNS', 20, '2020-08-30 07:47:05', '2020-08-30 07:47:05'),
(887, 'QLNS', 21, '2020-08-30 07:47:05', '2020-08-30 07:47:05'),
(909, 'GDGD', 1, '2020-08-30 09:48:05', '2020-08-30 09:48:05'),
(910, 'GDGD', 2, '2020-08-30 09:48:05', '2020-08-30 09:48:05'),
(911, 'GDGD', 3, '2020-08-30 09:48:05', '2020-08-30 09:48:05'),
(912, 'GDGD', 4, '2020-08-30 09:48:05', '2020-08-30 09:48:05'),
(913, 'GDGD', 5, '2020-08-30 09:48:05', '2020-08-30 09:48:05'),
(914, 'GDGD', 6, '2020-08-30 09:48:05', '2020-08-30 09:48:05'),
(915, 'GDGD', 7, '2020-08-30 09:48:05', '2020-08-30 09:48:05'),
(916, 'GDGD', 8, '2020-08-30 09:48:05', '2020-08-30 09:48:05'),
(917, 'GDGD', 9, '2020-08-30 09:48:05', '2020-08-30 09:48:05'),
(918, 'GDGD', 10, '2020-08-30 09:48:05', '2020-08-30 09:48:05'),
(919, 'GDGD', 11, '2020-08-30 09:48:05', '2020-08-30 09:48:05'),
(920, 'GDGD', 12, '2020-08-30 09:48:05', '2020-08-30 09:48:05'),
(921, 'GDGD', 13, '2020-08-30 09:48:05', '2020-08-30 09:48:05'),
(922, 'GDGD', 14, '2020-08-30 09:48:05', '2020-08-30 09:48:05'),
(923, 'GDGD', 15, '2020-08-30 09:48:05', '2020-08-30 09:48:05'),
(924, 'GDGD', 16, '2020-08-30 09:48:05', '2020-08-30 09:48:05'),
(925, 'GDGD', 17, '2020-08-30 09:48:05', '2020-08-30 09:48:05'),
(926, 'GDGD', 18, '2020-08-30 09:48:05', '2020-08-30 09:48:05'),
(927, 'GDGD', 19, '2020-08-30 09:48:05', '2020-08-30 09:48:05'),
(928, 'GDGD', 20, '2020-08-30 09:48:05', '2020-08-30 09:48:05'),
(929, 'GDGD', 21, '2020-08-30 09:48:05', '2020-08-30 09:48:05'),
(930, 'GDGD', 22, '2020-08-30 09:48:05', '2020-08-30 09:48:05');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dantoc`
--

CREATE TABLE `tbl_dantoc` (
  `id_dantoc` int(20) NOT NULL,
  `maso_dantoc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten_dan_toc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_dantoc`
--

INSERT INTO `tbl_dantoc` (`id_dantoc`, `maso_dantoc`, `ten_dan_toc`) VALUES
(1, '1', 'Kinh'),
(2, '2', 'T??y'),
(3, '3', 'Th??i'),
(4, '4', 'Hoa'),
(5, '5', 'Kh??-me'),
(6, '6', 'M?????ng'),
(7, '7', 'N??ng'),
(8, '8', 'Hm??ng'),
(9, '9', 'Dao'),
(10, '10', 'Gia-rai'),
(11, '11', 'Ng??i'),
(12, '12', '??-????'),
(13, '13', 'Ba-na'),
(14, '14', 'X??-????ng'),
(15, '15', 'S??n Chay'),
(16, '16', 'C??-ho'),
(17, '17', 'Ch??m'),
(18, '18', 'S??n D??u'),
(19, '19', 'Hr??'),
(20, '20', 'Mn??ng'),
(21, '21', 'Ra-glai'),
(22, '22', 'Xti??ng'),
(23, '23', 'Bru-V??n Ki???u'),
(24, '24', 'Th???'),
(25, '25', 'Gi??y'),
(26, '26', 'C??-tu'),
(27, '27', 'Gi??-Tri??ng'),
(28, '28', 'M???'),
(29, '29', 'Kh??-m??'),
(30, '30', 'Co'),
(31, '31', 'Ta-??i'),
(32, '32', 'Ch??-ro'),
(33, '33', 'Kh??ng'),
(34, '34', 'Xinh-mun'),
(35, '35', 'H?? Nh??'),
(36, '36', 'Chu-ru'),
(37, '37', 'L??o'),
(38, '38', 'La Chi'),
(39, '39', 'La Ha'),
(40, '40', 'Ph?? L??'),
(41, '41', 'La H???'),
(42, '42', 'L???'),
(43, '43', 'L?? L??'),
(44, '44', 'Ch???t'),
(45, '45', 'M???ng'),
(46, '46', 'P?? Th???n'),
(47, '47', 'C?? Lao'),
(48, '48', 'C???ng'),
(49, '49', 'B??? Y'),
(50, '50', 'Si La'),
(51, '51', 'Pu P??o'),
(52, '52', 'Br??u'),
(53, '53', '?? ??u'),
(54, '54', 'R??-m??m'),
(55, '55', 'Ng?????i n?????c ngo??i');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hopdong`
--

CREATE TABLE `tbl_hopdong` (
  `id_hopdong` varchar(255) NOT NULL,
  `id_loaihopdong` int(11) NOT NULL,
  `noi_dung_cv` longtext DEFAULT NULL,
  `ngay_bat_dau_hop_dong` date NOT NULL,
  `muc_luong_chinh` double NOT NULL,
  `phu_cap` double NOT NULL,
  `ngay_ket_thuc_hop_dong` date DEFAULT NULL,
  `trang_thai` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1:h???p ?????ng m???i\r\n0:h???p ?????ng c??',
  `id_phucap` int(11) NOT NULL,
  `id_nhanvien` varchar(20) NOT NULL,
  `nguoi_laphd` varchar(250) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_hopdong`
--

INSERT INTO `tbl_hopdong` (`id_hopdong`, `id_loaihopdong`, `noi_dung_cv`, `ngay_bat_dau_hop_dong`, `muc_luong_chinh`, `phu_cap`, `ngay_ket_thuc_hop_dong`, `trang_thai`, `id_phucap`, `id_nhanvien`, `nguoi_laphd`, `created_at`, `updated_at`) VALUES
('1-HDLD-ABC', 2, 'L??m', '2020-08-01', 750000, 250000, NULL, 1, 1, 'GDGD.Nha.01', 'Nguy???n Thanh Nh??', '2020-07-27 06:52:25', '2020-07-27 06:52:25'),
('10-HDLD-ABC', 1, NULL, '2020-07-01', 123123, 250000, '2020-07-30', 0, 1, 'GDGD.Nha.01', 'Nh??', '2020-07-30 08:56:13', '2020-07-30 09:08:29'),
('11-HDLD-ABC', 2, NULL, '2020-08-01', 15000000, 3500000, NULL, 1, 35, 'PGDPGD.Nha.2', 'Nguy???n Thanh Nh??', '2020-08-19 08:57:46', '2020-08-19 08:57:46'),
('12-HDLD-ABC', 2, NULL, '2020-08-01', 22000000, 3500000, NULL, 1, 35, 'PGDPGD.Thanh.3', 'Nguy???n Thanh Nh??', '2020-08-19 09:02:58', '2020-08-19 09:02:58'),
('13-HDLD-ABC', 2, NULL, '2020-08-19', 15000000, 2600000, NULL, 1, 36, 'QLNS.Cuong.4', 'Nguy???n Thanh Nh??', '2020-08-19 09:07:54', '2020-08-19 09:07:54'),
('14-HDLD-ABC', 3, NULL, '2020-08-19', 1000000, 2600000, '2020-09-19', 1, 37, 'QLMKT.Dai.5', 'Nguy???n Thanh Nh??', '2020-08-19 09:13:49', '2020-08-19 09:13:49'),
('15-HDLD-ABC', 2, NULL, '2020-08-01', 15000000, 2600000, NULL, 1, 38, 'QLKTTC.Dat.6', 'Nguy???n Thanh Nh??', '2020-08-19 09:21:28', '2020-08-19 09:21:28'),
('16-HDLD-ABC', 1, NULL, '2020-08-29', 5100000, 2600000, '2021-02-28', 1, 36, 'QLNS.A.7', 'Nguy???n Thanh Nh??', '2020-08-29 08:02:42', '2020-08-29 08:02:42');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hoso`
--

CREATE TABLE `tbl_hoso` (
  `id_hoso` int(11) NOT NULL,
  `ten` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_hoso`
--

INSERT INTO `tbl_hoso` (`id_hoso`, `ten`, `created_at`, `updated_at`) VALUES
(1, 'Phi???u th??ng tin ???ng vi??n', NULL, NULL),
(2, 'Gi???m tr??? gia c???nh', NULL, NULL),
(3, 'S?? y???u l?? l???ch', NULL, NULL),
(4, '????n xin vi???c', NULL, NULL),
(5, 'Ch???ng minh nh??n d??n', NULL, NULL),
(6, 'Gi???y kh??m s???c kh???e', NULL, NULL),
(7, 'Gi???y khai sinh', NULL, NULL),
(8, 'B???ng ch??nh (??H, C??, TC)', NULL, NULL),
(9, 'Ch???ng ch???', NULL, NULL),
(10, 'H??? kh???u', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hosonhanvien`
--

CREATE TABLE `tbl_hosonhanvien` (
  `id_nhanvien` varchar(20) NOT NULL,
  `ho_ten` varchar(255) NOT NULL,
  `gioi_tinh` tinyint(1) NOT NULL DEFAULT 0,
  `ngay_sinh` date NOT NULL,
  `id_hoso` text NOT NULL,
  `so_cmnd` varchar(12) NOT NULL,
  `ton_giao` varchar(255) NOT NULL,
  `ngay_cap_cmnd` date NOT NULL,
  `noi_cap_cmnd` varchar(255) NOT NULL,
  `anh_dai_dien` varchar(255) NOT NULL,
  `id_dantoc` int(11) NOT NULL,
  `tinh_trang` int(11) NOT NULL COMMENT '1: ??ang lam\r\n2: ngh?? vi???c',
  `ngay_nghi` int(11) NOT NULL DEFAULT 12,
  `id_baohiem` int(11) DEFAULT NULL,
  `id_chucvu` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_hosonhanvien`
--

INSERT INTO `tbl_hosonhanvien` (`id_nhanvien`, `ho_ten`, `gioi_tinh`, `ngay_sinh`, `id_hoso`, `so_cmnd`, `ton_giao`, `ngay_cap_cmnd`, `noi_cap_cmnd`, `anh_dai_dien`, `id_dantoc`, `tinh_trang`, `ngay_nghi`, `id_baohiem`, `id_chucvu`, `created_at`, `updated_at`) VALUES
('GDGD.Nha.01', 'Nguy???n Thanh Nh??', 1, '2020-07-01', '1,2,3', '123456', 'kh??ng', '2020-02-20', 'krb', 'CW3o_avatar-mat-trang-facebook.jpg', 1, 1, 12, NULL, 'GDGD', NULL, '2020-08-18 15:27:52'),
('PGDPGD.Nha.2', 'Nguy???n Thanh Nh??', 1, '1998-11-20', '1,3,4,5,7,8,10', '241659768', 'Kh??ng', '2016-05-02', 'Dak Lak', 'usermen.jpg', 1, 1, 12, NULL, 'PGDPGD', '2020-08-19 08:40:51', '2020-08-19 09:26:40'),
('PGDPGD.Thanh.3', 'B??i ?????ng Ph????ng Thanh', 1, '1998-06-20', '1,4,5,6,7,8,10', '025677849', 'kh??ng', '2013-05-29', 'C??ng An TPHCM', 'usermen.jpg', 1, 1, 12, 4, 'PGDPGD', '2020-08-19 09:02:31', '2020-08-20 04:03:42'),
('QLKTTC.Dat.6', 'Tr????ng Ph???m Qu???c ?????t', 1, '1998-02-21', '7,8,10', '123456789', 'kh??ng', '2020-08-19', 'Qu???ng Ng??i', 'usermen.jpg', 1, 1, 12, NULL, 'QLKTTC', '2020-08-19 09:21:01', '2020-08-19 09:21:01'),
('QLMKT.Dai.5', 'Nguy???n Ho??ng Ph????ng ?????i', 1, '1996-03-20', '1,4,6,7,8,10', '255255012', '?????c ch??a tr???i', '2020-08-19', 'Viva cf', 'usermen.jpg', 1, 1, 12, NULL, 'QLMKT', '2020-08-19 09:12:27', '2020-08-19 09:12:27'),
('QLNS.A.7', 'Nguy???n V??n A', 1, '2020-08-01', '1,4,5,8', '1231231231', 'kh??ng', '2020-08-29', 'TP HCM', 'usermen.jpg', 14, 1, 12, NULL, 'QLNS', '2020-08-29 08:02:23', '2020-08-29 08:02:23'),
('QLNS.Cuong.4', 'Ch??u Ch?? C?????ng', 1, '1998-06-08', '1,3,4,5,6,7,8,10', '301648556', 'Kh??ng', '2013-07-15', 'C??ng an T???nh Long An', 'usermen.jpg', 1, 2, 12, 5, 'QLNS', '2020-08-19 09:07:00', '2020-08-28 12:17:39');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lienhe`
--

CREATE TABLE `tbl_lienhe` (
  `id_lienhe` int(11) NOT NULL,
  `sdt_ca_nhan` varchar(15) NOT NULL,
  `sdt_nha` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dia_chi_thuong_tru` varchar(255) NOT NULL,
  `id_tinh_thuong_tru` int(20) NOT NULL,
  `dia_chi_tam_tru` varchar(255) NOT NULL,
  `id_tinh_tam_tru` int(20) NOT NULL,
  `id_nhanvien` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_lienhe`
--

INSERT INTO `tbl_lienhe` (`id_lienhe`, `sdt_ca_nhan`, `sdt_nha`, `email`, `dia_chi_thuong_tru`, `id_tinh_thuong_tru`, `dia_chi_tam_tru`, `id_tinh_tam_tru`, `id_nhanvien`, `created_at`, `updated_at`) VALUES
(1, '03659989981', '37331121', 'admi1n@gmail.com', 'Dak Lak1', 1, 'TP HCM1', 2, 'GDGD.Nha.01', NULL, '2020-08-19 05:16:27'),
(22, '0365998998', '0365998998', 'thanhnha22081998@gmail.com', 'Krong B??ng', 39, '180 Cao L???, Ph?????ng 4, Qu???n 8', 2, 'PGDPGD.Nha.2', '2020-08-19 08:40:51', '2020-08-19 08:40:51'),
(23, '0783488453', '0783488453', 'mondorae2006@gmail.com', 'Qu???n 1', 2, 'Qu???n 10', 2, 'PGDPGD.Thanh.3', '2020-08-19 09:02:31', '2020-08-19 09:02:31'),
(24, '0355287555', '0355287555', 'dh51603039@student.stu.edu.vn', 'Th??? Th???a', 48, '180 Cao L???, Ph?????ng 4, Qu???n 8', 2, 'QLNS.Cuong.4', '2020-08-19 09:07:00', '2020-08-19 09:07:00'),
(25, '0346300399', '06503888888', 'dh51603039@student.stu.edu.vn', 'C???u ch??? Y', 2, 'C???u ch??? Y', 2, 'QLMKT.Dai.5', '2020-08-19 09:12:27', '2020-08-19 09:12:27'),
(26, '123456789', '123456789', 'dh5160584@student.stu.edu.vn', '????u ????', 4, '180 Cao L??? ph?????ng 4 Qu???n 8', 2, 'QLKTTC.Dat.6', '2020-08-19 09:21:01', '2020-08-19 09:21:01'),
(31, '03659989981', '37331121', 'thanhnha22081998@gmail.com', 'Dak Lak', 3, 'TP HCM', 10, 'QLNS.A.7', '2020-08-29 08:02:23', '2020-08-29 08:02:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_loaihopdong`
--

CREATE TABLE `tbl_loaihopdong` (
  `id_loaihopdong` int(11) NOT NULL,
  `ten_hop_dong` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_loaihopdong`
--

INSERT INTO `tbl_loaihopdong` (`id_loaihopdong`, `ten_hop_dong`, `created_at`, `updated_at`) VALUES
(1, 'H???p ?????ng lao ?????ng x??c ?????nh th???i h???n', NULL, NULL),
(2, 'H???p ?????ng lao ?????ng kh??ng x??c ?????nh th???i h???n', NULL, NULL),
(3, 'H???p ?????ng lao ?????ng th???i v???', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_loaiphuluc`
--

CREATE TABLE `tbl_loaiphuluc` (
  `id` int(11) NOT NULL,
  `ten_phu_luc` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_loaiphuluc`
--

INSERT INTO `tbl_loaiphuluc` (`id`, `ten_phu_luc`, `created_at`, `updated_at`) VALUES
(1, '??i???u ch???nh ti???n l????ng', NULL, NULL),
(2, 'Thay ?????i ch???c v???', NULL, NULL),
(3, 'Thay ?????i, gia h???n h???p ?????ng', NULL, NULL),
(4, 'Kh??c', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_luuykien`
--

CREATE TABLE `tbl_luuykien` (
  `id_luuykien` int(11) NOT NULL,
  `ly_do` varchar(255) NOT NULL,
  `nguoi_duyet_1` varchar(50) DEFAULT NULL,
  `chuc_vu_1` varchar(50) DEFAULT NULL,
  `nguoi_duyet_2` varchar(50) DEFAULT NULL,
  `chuc_vu_2` varchar(50) DEFAULT NULL,
  `gia_tri` double DEFAULT NULL,
  `truong_hop` int(11) DEFAULT NULL,
  `thoi_gian_nghi` int(11) DEFAULT NULL,
  `ngay_bat_dau` date DEFAULT NULL,
  `nguoi_huong` varchar(50) DEFAULT NULL,
  `trang_thai` tinyint(1) NOT NULL DEFAULT 0,
  `ly_do_tu_choi` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_nhanvien` varchar(20) NOT NULL,
  `id_ykien` int(11) NOT NULL,
  `phong_ban_den` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_luuykien`
--

INSERT INTO `tbl_luuykien` (`id_luuykien`, `ly_do`, `nguoi_duyet_1`, `chuc_vu_1`, `nguoi_duyet_2`, `chuc_vu_2`, `gia_tri`, `truong_hop`, `thoi_gian_nghi`, `ngay_bat_dau`, `nguoi_huong`, `trang_thai`, `ly_do_tu_choi`, `created_at`, `updated_at`, `id_nhanvien`, `id_ykien`, `phong_ban_den`) VALUES
(48, '123', 'Nguy???n Thanh Nh??', 'Gi??m ?????c', NULL, NULL, NULL, NULL, NULL, '2020-08-18', NULL, 1, NULL, '2020-08-17 22:02:07', '2020-08-20 02:58:32', 'GDGD.Nha.01', 7, NULL),
(50, 'V?? em bu???n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-19', NULL, 0, NULL, '2020-08-19 09:29:42', '2020-08-19 09:29:42', 'QLNS.Cuong.4', 11, NULL),
(58, '123123', 'Nguy???n Thanh Nh??', 'Gi??m ?????c', 'Nguy???n Thanh Nh??', 'Gi??m ?????c', 123, NULL, NULL, NULL, 'QLKTTC.Dat.6', 2, NULL, '2020-08-20 03:00:37', '2020-08-20 03:01:18', 'GDGD.Nha.01', 9, NULL),
(59, '123', 'Nguy???n Thanh Nh??', 'Gi??m ?????c', 'Nguy???n Thanh Nh??', 'Gi??m ?????c', 5000000, NULL, NULL, NULL, 'QLKTTC.Dat.6', 2, NULL, '2020-08-20 03:06:46', '2020-08-20 03:07:00', 'GDGD.Nha.01', 9, NULL),
(60, '123', 'Nguy???n Thanh Nh??', 'Gi??m ?????c', NULL, NULL, NULL, NULL, NULL, '2020-08-21', NULL, 1, NULL, '2020-08-20 03:11:47', '2020-08-20 03:11:59', 'GDGD.Nha.01', 7, NULL),
(61, 'nghi', 'Nguy???n Thanh Nh??', 'Gi??m ?????c', NULL, NULL, NULL, NULL, NULL, '2020-09-20', NULL, 2, NULL, '2020-08-20 04:57:15', '2020-08-20 04:57:40', 'GDGD.Nha.01', 11, NULL),
(62, 'drgdf', 'Nguy???n Thanh Nh??', 'Gi??m ?????c', 'Nguy???n Thanh Nh??', NULL, NULL, NULL, NULL, '2020-08-20', NULL, 2, NULL, '2020-08-20 05:44:07', '2020-08-30 06:25:26', 'GDGD.Nha.01', 7, NULL),
(63, 'Kh??ng ho??n th??nh tr??ch nhi???m', 'Nguy???n Thanh Nh??', 'Gi??m ?????c', 'Nguy???n Thanh Nh??', 'Gi??m ?????c', 10000, NULL, NULL, NULL, 'NVMKT.T.9', 2, NULL, '2020-08-21 08:09:29', '2020-08-21 08:10:03', 'GDGD.Nha.01', 10, NULL),
(64, 'Kh??ng ho??n th??nh tr??ch nhi???m l???n 2', 'Nguy???n Thanh Nh??', 'Gi??m ?????c', 'Nguy???n Thanh Nh??', 'Gi??m ?????c', 10000, NULL, NULL, NULL, 'NVMKT.T.9', 2, NULL, '2020-08-23 09:20:45', '2020-08-23 09:20:45', 'GDGD.Nha.01', 10, NULL),
(65, 'nanan', 'Nguy???n Thanh Nh??', 'Gi??m ?????c', 'Nguy???n Thanh Nh??', 'Gi??m ?????c', 70000, NULL, NULL, NULL, 'NVMKT.T.9', 2, NULL, '2020-08-23 09:20:45', '2020-08-23 09:20:45', 'GDGD.Nha.01', 10, NULL),
(66, '1234', 'Nguy???n V??n A', 'Qu???n L?? Nh??n S???', 'Nguy???n Thanh Nh??', NULL, NULL, NULL, NULL, '2020-08-30', NULL, 2, NULL, '2020-08-30 07:29:27', '2020-08-30 07:37:47', 'GDGD.Nha.01', 7, 'NS'),
(67, 'Xin l???i, t??i kh??ng th??? ti???p t???c l??m vi???c...', 'Nguy???n V??n A', 'Qu???n L?? Nh??n S???', 'Nguy???n Thanh Nh??', NULL, NULL, NULL, NULL, '2020-09-30', NULL, 2, NULL, '2020-08-30 09:49:26', '2020-08-30 09:49:52', 'QLNS.A.7', 11, 'NS'),
(68, 'Kh??ng l??m vi???c ????ng v???i quy tr??nh', 'Nguy???n V??n A', 'Qu???n L?? Nh??n S???', 'Nguy???n Thanh Nh??', NULL, NULL, NULL, NULL, NULL, 'QLKTTC.Dat.6', 2, NULL, '2020-08-30 09:54:25', '2020-08-30 10:00:42', 'QLNS.A.7', 10, 'NS'),
(69, 'Th?????ng xuy??n ??i l??m tr???', 'Nguy???n V??n A', 'Qu???n L?? Nh??n S???', 'Nguy???n Thanh Nh??', NULL, NULL, NULL, NULL, NULL, 'QLKTTC.Dat.6', 2, NULL, '2020-08-30 09:55:21', '2020-08-30 10:00:34', 'QLNS.A.7', 10, 'NS');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mientrugiacanh`
--

CREATE TABLE `tbl_mientrugiacanh` (
  `id_mientrugiacanh` int(11) NOT NULL,
  `so_luong_mien_tru` int(11) NOT NULL,
  `anh_minh_chung` varchar(255) NOT NULL,
  `id_nhanvien` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mientrugiacanh`
--

INSERT INTO `tbl_mientrugiacanh` (`id_mientrugiacanh`, `so_luong_mien_tru`, `anh_minh_chung`, `id_nhanvien`) VALUES
(1, 2, '', 'GDGD.Nha.01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_permissions`
--

CREATE TABLE `tbl_permissions` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `ten_hien_thi` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_permissions`
--

INSERT INTO `tbl_permissions` (`id`, `ten`, `ten_hien_thi`, `created_at`, `updated_at`) VALUES
(1, 'theloai', 'Qu???n l?? th??? lo???i tin t???c', NULL, NULL),
(2, 'loaitin', 'Qu???n l?? lo???i tin tin t???c', NULL, NULL),
(3, 'tintuc', 'Qu???n l?? tin t???c', NULL, NULL),
(4, 'thongtincongty', 'Qu???n l?? th??ng tin c??ng ty', NULL, NULL),
(5, 'phongban', 'Qu???n l?? ph??ng ban', NULL, NULL),
(6, 'chucvu', 'Qu???n l?? ch???c v???', NULL, NULL),
(7, 'phucap', 'Qu???n l?? ph??? c???p', NULL, NULL),
(8, 'quanlyhopdong', 'Qu???n l?? h???p ?????ng', NULL, NULL),
(9, 'dsnhanvien', 'Danh s??ch nh??n vi??n', NULL, NULL),
(10, 'quanlyykien', 'Qu???n l?? ?? ki???n c???a nh??n vi??n', NULL, NULL),
(11, 'ykien', '????a ?? ki???n', NULL, NULL),
(12, 'quanlyloaiykien', 'Qu???n l?? c??c lo???i ?? ki???n c???a nh??n vi??n', NULL, NULL),
(13, 'quanlyluong', 'Qu???n l?? l????ng nh??n vi??n', NULL, NULL),
(14, 'thongtinnhanvien', 'Qu???n l?? th??ng tin nh??n vi??n', NULL, NULL),
(15, 'hopdongcanhan', 'Xem h???p ?????ng c?? nh??n', NULL, NULL),
(16, 'laphoso', 'L???p h??? s?? nh??n vi??n', NULL, NULL),
(17, 'laphopdong', 'Qu???n l?? h???p ?????ng nh??n vi??n', NULL, NULL),
(18, 'lapphuluc', 'Qu???n l?? ph??? l???c nh??n vi??n', NULL, NULL),
(19, 'lapquyetdinh', 'Qu???n l?? quy???t ?????nh k??? lu???t nh??n vi??n', NULL, NULL),
(20, 'qlnhanvienpb', 'Qu???n l?? nh??n vi??n ph??ng ban', NULL, NULL),
(21, 'quyenduyetyk', 'Quy???n duy???t ?? ki???n nh??n vi??n', NULL, NULL),
(22, 'xacnhanyk', 'Quy???n x??c nh??n ?? ki???n nh??n vi??n', NULL, NULL),
(23, 'quanlyykienphongban', 'Qu???n l?? ?? ki???n nh??n vi??n theo ph??ng ban', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_phongban`
--

CREATE TABLE `tbl_phongban` (
  `id_phongban` varchar(10) NOT NULL,
  `ten_phong_ban` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_phongban`
--

INSERT INTO `tbl_phongban` (`id_phongban`, `ten_phong_ban`, `created_at`, `updated_at`) VALUES
('GD', 'Gi??m ?????c', NULL, NULL),
('KTTC', 'K??? To??n- T??i Ch??nh', '2020-08-19 07:38:44', '2020-08-19 07:38:44'),
('MKT', 'Marketing', '2020-08-19 07:40:54', '2020-08-19 07:40:54'),
('NS', 'Nh??n s???', '2020-08-19 07:38:02', '2020-08-19 07:38:02'),
('PGD', 'Ph?? gi??m ?????c', '2020-08-19 07:33:51', '2020-08-19 07:33:51');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_phucap`
--

CREATE TABLE `tbl_phucap` (
  `id` int(11) NOT NULL,
  `an_trua` double DEFAULT NULL,
  `xang_xe` double DEFAULT NULL,
  `khac` double DEFAULT NULL,
  `tong_tien_phu_cap` double DEFAULT NULL,
  `id_chucvu` varchar(10) CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_phucap`
--

INSERT INTO `tbl_phucap` (`id`, `an_trua`, `xang_xe`, `khac`, `tong_tien_phu_cap`, `id_chucvu`, `created_at`, `updated_at`) VALUES
(1, 1500000, 100000, 100000, 1700000, 'GDGD', NULL, '2020-08-19 07:56:09'),
(35, 1500000, 1000000, 1000000, 3500000, 'PGDPGD', '2020-08-19 07:53:11', '2020-08-19 07:55:53'),
(36, 1000000, 800000, 800000, 2600000, 'QLNS', '2020-08-19 07:58:00', '2020-08-19 07:58:52'),
(37, 1000000, 800000, 800000, 2600000, 'QLMKT', '2020-08-19 08:01:29', '2020-08-19 08:01:40'),
(38, 1000000, 800000, 800000, 2600000, 'QLKTTC', '2020-08-19 08:03:26', '2020-08-19 08:03:38'),
(39, 800000, 500000, 500000, 1800000, 'NVNS', '2020-08-19 08:04:38', '2020-08-19 08:04:50'),
(40, 800000, 500000, 500000, 1800000, 'NVMKT', '2020-08-19 08:05:40', '2020-08-19 08:05:50'),
(41, 800000, 500000, 500000, 1800000, 'NVKTTC', '2020-08-19 08:06:16', '2020-08-19 08:06:25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_phuluc`
--

CREATE TABLE `tbl_phuluc` (
  `id_phuluc` varchar(255) NOT NULL,
  `id_hopdong` varchar(255) NOT NULL,
  `nguoi_lap_phu_luc` varchar(250) NOT NULL,
  `id_loaiphuluc` int(11) NOT NULL,
  `id_chitiet` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_phuluc`
--

INSERT INTO `tbl_phuluc` (`id_phuluc`, `id_hopdong`, `nguoi_lap_phu_luc`, `id_loaiphuluc`, `id_chitiet`, `created_at`, `updated_at`) VALUES
('1_H??L??-ABC', '14-HDLD-ABC', 'Nguy???n Thanh Nh??', 3, 61, '2020-08-19 18:50:55', '2020-08-19 18:50:55'),
('2_H??L??-ABC', '14-HDLD-ABC', 'Nguy???n Thanh Nh??', 1, 62, '2020-08-19 19:00:19', '2020-08-19 19:00:19'),
('3_H??L??-ABC', '16-HDLD-ABC', 'Nguy???n Thanh Nh??', 1, 66, '2020-08-29 08:03:01', '2020-08-29 08:03:01'),
('4_H??L??-ABC', '16-HDLD-ABC', 'Nguy???n Thanh Nh??', 2, 67, '2020-08-29 08:03:23', '2020-08-29 08:03:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quyetdinhthoiviec`
--

CREATE TABLE `tbl_quyetdinhthoiviec` (
  `id` int(11) NOT NULL,
  `noi_dung` longtext DEFAULT NULL,
  `ngay_quyet_dinh` date NOT NULL,
  `ngay_nghi_viec` date NOT NULL,
  `nguoi_lap_quyet_dinh` varchar(255) NOT NULL,
  `loai` int(11) NOT NULL,
  `anh_minh_chung` varchar(255) DEFAULT NULL,
  `trang_thai` int(1) DEFAULT NULL,
  `id_nhanvien` varchar(20) CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_quyetdinhthoiviec`
--

INSERT INTO `tbl_quyetdinhthoiviec` (`id`, `noi_dung`, `ngay_quyet_dinh`, `ngay_nghi_viec`, `nguoi_lap_quyet_dinh`, `loai`, `anh_minh_chung`, `trang_thai`, `id_nhanvien`, `created_at`, `updated_at`) VALUES
(21, 'Gia ????nh c?? vi???c ?????t xu???t, ko th??? tham gia ti???p', '2020-08-26', '2020-09-27', 'Nguy???n Thanh Nh??', 2, 'mAOF_Tuy???n-t???p-h??nh-n???n-4K-d??nh-cho-m??y-t??nh-?????p-7.jpg', 2, 'QLNS.Cuong.4', NULL, '2020-08-28 12:22:02'),
(22, 'Xin l???i, t??i kh??ng th??? ti???p t???c l??m vi???c...', '2020-08-30', '2020-09-30', 'Nguy???n Thanh Nh??', 2, NULL, NULL, 'QLNS.A.7', '2020-08-30 09:49:52', '2020-08-30 09:49:52'),
(23, NULL, '2020-08-30', '2020-09-30', 'Nguy???n Thanh Nh??', 1, NULL, 0, 'QLKTTC.Dat.6', '2020-08-30 10:00:57', '2020-08-30 10:00:57');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tangca`
--

CREATE TABLE `tbl_tangca` (
  `id_tangca` int(11) NOT NULL,
  `check_in` datetime DEFAULT NULL,
  `thoi_gian_lam` double DEFAULT NULL,
  `ghi_nhan` int(11) DEFAULT 0,
  `ly_do` varchar(255) DEFAULT NULL,
  `id_nhanvien` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_tangca`
--

INSERT INTO `tbl_tangca` (`id_tangca`, `check_in`, `thoi_gian_lam`, `ghi_nhan`, `ly_do`, `id_nhanvien`, `created_at`, `updated_at`) VALUES
(4, '2020-07-18 00:00:00', 1, 1, NULL, 'GDGD.Nha.01', '2020-07-28 01:07:31', '2020-07-28 02:44:34'),
(16, '2020-08-21 00:00:00', NULL, 0, '123', 'GDGD.Nha.01', '2020-08-20 03:11:47', '2020-08-20 03:11:47'),
(17, '2020-08-20 00:00:00', NULL, 1, 'drgdf', 'GDGD.Nha.01', '2020-08-20 05:44:07', '2020-08-30 06:25:26'),
(18, '2020-08-30 00:00:00', NULL, 1, '1234', 'GDGD.Nha.01', '2020-08-30 07:29:27', '2020-08-30 07:37:47');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_thongtinchinh`
--

CREATE TABLE `tbl_thongtinchinh` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten_cong_ty` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Hinh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Fax` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nguoi_dai_dien` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `chuc_vu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_thongtinchinh`
--

INSERT INTO `tbl_thongtinchinh` (`id`, `ten_cong_ty`, `Hinh`, `dia_chi`, `sdt`, `Fax`, `website`, `nguoi_dai_dien`, `chuc_vu`, `mail`, `created_at`, `updated_at`) VALUES
(8, 'C??NG NGH??? S??I G??N', 'jGXb_STU_Logo_Letters.png', '180 Cao l???, Ph?????ng 4, Qu???n 8, TP HCM', '0365998998', '123456789', 'https://www.stu.edu.vn', 'Nh?? and Thanh', 'Gi??m ?????c', 'ahn.krb1@gmail.com', '2020-08-09 18:04:14', '2020-08-20 06:03:09');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_thongtingioithieu`
--

CREATE TABLE `tbl_thongtingioithieu` (
  `id` int(10) UNSIGNED NOT NULL,
  `Ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Hinh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NoiDung` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_thongtingioithieu`
--

INSERT INTO `tbl_thongtingioithieu` (`id`, `Ten`, `Hinh`, `NoiDung`, `created_at`, `updated_at`) VALUES
(1, 'T???m nh??n', 'd670e9075195f02eceeabe5919e4eb28.png', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>', '2020-08-17 08:00:55', '2020-08-30 04:34:54'),
(2, 'S??? m???nh', 'YHLmAqm9eM5AYKb1hLufTTf7jK42L8g2.jpeg', '<p>?????i H???c C&ocirc;ng Ngh??? S&agrave;i G&ograve;n (STU) ??&agrave;o t???o ??a ng&agrave;nh, ??a l??nh v???c v???i c&aacute;c tr&igrave;nh ?????:&nbsp;Cao ?????ng, ?????i h???c, Th???c s?? v&agrave; Ti???n s??;Cung c???p ngu???n nh&acirc;n l???c ch???t l?????ng cao theo h?????ng c&ocirc;ng ngh???, c&oacute; ph???m ch???t ?????o ?????c t???t, c&oacute; v??n h&oacute;a, ngo???i ng??? v&agrave; chuy&ecirc;n m&ocirc;n nghi???p v??? gi???i ph&ugrave; h???p ng&agrave;y c&agrave;ng cao nhu c???u c???a s??? ph&aacute;t tri???n kinh t??? x&atilde; h???i, c???a ?????t n?????c, c???a c???ng ?????ng v&agrave; nhu c???u h???c t???p c???a nh&acirc;n d&acirc;n.</p>', '2020-05-06 16:50:11', '2020-08-30 04:28:34');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_thuecanhan`
--

CREATE TABLE `tbl_thuecanhan` (
  `id_thuecanhan` int(11) NOT NULL,
  `thue_bhxh` double NOT NULL,
  `thue_bhyt` double NOT NULL,
  `thue_bhtn` double NOT NULL,
  `thue_thu_nhap` double NOT NULL,
  `tong_tien_thue` double NOT NULL,
  `id_bangluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tinh`
--

CREATE TABLE `tbl_tinh` (
  `id_tinh` int(20) NOT NULL,
  `maso_tinh` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten_tinh` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_tinh`
--

INSERT INTO `tbl_tinh` (`id_tinh`, `maso_tinh`, `ten_tinh`) VALUES
(1, '1', 'H?? N???i'),
(2, '2', 'TP. H??? Ch?? Minh'),
(3, '3', 'H???i Ph??ng'),
(4, '4', '???? N???ng'),
(5, '5', 'H?? Giang'),
(6, '6', 'Cao B???ng'),
(7, '7', 'Lai Ch??u'),
(8, '8', 'L??o Cai'),
(9, '9', 'Tuy??n Quang'),
(10, '10', 'L???ng S??n'),
(11, '11', 'B???c K???n'),
(12, '12', 'Th??i Nguy??n'),
(13, '13', 'Y??n B??i'),
(14, '14', 'S??n La'),
(15, '15', 'Ph?? Th???'),
(16, '16', 'V??nh Ph??c'),
(17, '17', 'Qu???ng Ninh'),
(18, '18', 'B???c Giang'),
(19, '19', 'B???c Ninh'),
(20, '21', 'H???i D????ng'),
(21, '22', 'H??ng Y??n'),
(22, '23', 'Ho?? B??nh'),
(23, '24', 'H?? Nam'),
(24, '25', 'Nam ?????nh'),
(25, '26', 'Th??i B??nh'),
(26, '27', 'Ninh B??nh'),
(27, '28', 'Thanh Ho??'),
(28, '29', 'Ngh??? An'),
(29, '30', 'H?? T??nh'),
(30, '31', 'Qu???ng B??nh'),
(31, '32', 'Qu???ng Tr???'),
(32, '33', 'Th???a Thi??n -Hu???'),
(33, '34', 'Qu???ng Nam'),
(34, '35', 'Qu???ng Ng??i'),
(35, '36', 'Kon Tum'),
(36, '37', 'B??nh ?????nh'),
(37, '38', 'Gia Lai'),
(38, '39', 'Ph?? Y??n'),
(39, '40', '?????k L???k'),
(40, '41', 'Kh??nh Ho??'),
(41, '42', 'L??m ?????ng'),
(42, '43', 'B??nh Ph?????c'),
(43, '44', 'B??nh D????ng'),
(44, '45', 'Ninh Thu???n'),
(45, '46', 'T??y Ninh'),
(46, '47', 'B??nh Thu???n'),
(47, '48', '?????ng Nai'),
(48, '49', 'Long An'),
(49, '50', '?????ng Th??p'),
(50, '51', 'An Giang'),
(51, '52', 'B?? R???a-V??ng T??u'),
(52, '53', 'Ti???n Giang'),
(53, '54', 'Ki??n Giang'),
(54, '55', 'C???n Th??'),
(55, '56', 'B???n Tre'),
(56, '57', 'V??nh Long'),
(57, '58', 'Tr?? Vinh'),
(58, '59', 'S??c Tr??ng'),
(59, '60', 'B???c Li??u'),
(60, '61', 'C?? Mau'),
(61, '62', '??i???n Bi??n'),
(62, '63', '????k N??ng'),
(63, '64', 'H???u Giang'),
(64, '65', 'C???c nh?? tr?????ng'),
(65, '-1', 'N??i sinh kh??c ( c??c t???nh c???)');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tintuyendung`
--

CREATE TABLE `tbl_tintuyendung` (
  `id` int(10) UNSIGNED NOT NULL,
  `vi_tri` varchar(10) CHARACTER SET utf8 NOT NULL,
  `muc_luong` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `han_nop` date NOT NULL,
  `Hinh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NoiDung` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_tintuyendung`
--

INSERT INTO `tbl_tintuyendung` (`id`, `vi_tri`, `muc_luong`, `han_nop`, `Hinh`, `NoiDung`, `created_at`, `updated_at`) VALUES
(10, 'GDGD', '78tr-8tr', '2020-09-18', 'yWws_115777478_743350246492105_4490654208291039648_n.jpg', '<p><strong>I. B???N S??? L&Agrave;M G&Igrave;?</strong></p>\r\n\r\n<ul>\r\n	<li>Ch???u tr&aacute;ch nhi???m ho???t ?????ng v???n h&agrave;nh c???a c???a h&agrave;ng.</li>\r\n	<li>Qu???n l&yacute; ?????i ng?? nh&acirc;n vi&ecirc;n l&agrave;m vi???c hi???u qu??? bao g???m ho???t ?????ng ??&agrave;o t???o, tuy???n d???ng, ph&acirc;n c&ocirc;ng c&ocirc;ng vi???c.</li>\r\n	<li>?????m b???o ho???t ?????ng ch??m s&oacute;c kh&aacute;ch h&agrave;ng ??&uacute;ng ti&ecirc;u chu???n c&ocirc;ng ty ????? ra.</li>\r\n	<li>Ch???u tr&aacute;ch nhi???m v??? doanh s??? b&aacute;n h&agrave;ng c???a c???a h&agrave;ng.</li>\r\n</ul>\r\n\r\n<p><strong>II. B???N C???N G&Igrave;?</strong></p>\r\n\r\n<ul>\r\n	<li>??u ti&ecirc;n ti???ng Anh giao ti???p.</li>\r\n	<li>Nhanh nh???n, linh ho???t, ch??? ?????ng trong c&ocirc;ng vi???c.</li>\r\n	<li>C&oacute; tinh th???n tr&aacute;ch nhi???m v&agrave; c???u ti???n.</li>\r\n</ul>\r\n\r\n<p><strong>III. TH???I GIAN L&Agrave;M VI???C C???A B???N</strong></p>\r\n\r\n<ul>\r\n	<li>08h00 &ndash; 17h00.</li>\r\n</ul>\r\n\r\n<p><strong>IV. T???I SAO B???N N&Ecirc;N L&Agrave;M T???I VI???C T???I ??&Acirc;Y?</strong></p>\r\n\r\n<ul>\r\n	<li>12 ng&agrave;y ph&eacute;p/n??m.</li>\r\n	<li>BHXH, BHYT, BHTN ?????y ?????.</li>\r\n	<li>C?? h???i th??ng ti???n r&otilde; r&agrave;ng.</li>\r\n	<li>L&agrave;m vi???c trong m&ocirc;t tr?????ng tr???, n??ng ?????ng, th&acirc;n thi???n.</li>\r\n</ul>', '2020-08-17 10:09:31', '2020-08-30 10:33:45'),
(12, 'NVKTTC', '10tr-20tr', '2020-09-16', '', '<p>Y&ecirc;u c???u c&ocirc;ng vi???c:</p>\r\n\r\n<p>C&oacute; kinh nghi???m v??? l???p tr&igrave;nh PHP, s??? d???ng th&agrave;nh th???o &iacute;t nh???t 1 PHP framework</p>\r\n\r\n<p>C&oacute; kinh nghi???m s??? d???ng h??? qu???n tr??? c?? s??? d??? li???u: MySQL ??u ti&ecirc;n c&oacute; ki???n th???c v??? l???p tr&igrave;nh Web ( HTML, CSS, Javascript, jQuery, XML)</p>\r\n\r\n<p>??u ti&ecirc;n c&oacute; kinh nghi???m v??? Ph???n M???m Qu???n l&yacute; Kh&aacute;ch H&agrave;ng</p>\r\n\r\n<p>C&oacute; k??? n??ng v??? h??? ??i???u h&agrave;nh Linux Ti???ng Anh ?????c hi???u t&agrave;i li???u</p>\r\n\r\n<p>C&oacute; t?? duy l???p tr&igrave;nh t???t, t?? duy l???p tr&igrave;nh h?????ng ?????i t?????ng, kh??? n??ng t??? h???c h???i v&agrave; t&igrave;m hi???u c&aacute;c c&ocirc;ng ngh??? m???i tr&ecirc;n n???n t???ng web.</p>\r\n\r\n<p>C&oacute; k??? n??ng l&agrave;m vi???c theo nh&oacute;m, ch???u ???????c &aacute;p l???c trong c&ocirc;ng vi???c v&agrave; tinh th???n tr&aacute;ch nhi???m cao.</p>', '2020-08-19 19:28:04', '2020-08-30 10:32:41'),
(13, 'NVNS', '10tr-12tr', '2020-10-21', '', '<p>V??? TR&Iacute;: IT HELPDESK (7.000.000??/th&aacute;ng - th???a thu???n theo kh??? n??ng)</p>\r\n\r\n<p>Apply ngay h&ocirc;m nay v&agrave; b???n s???:</p>\r\n\r\n<p>&nbsp;L&agrave;m vi???c trong m&ocirc;i tr?????ng tr??? trung, n??ng ?????ng, ?????ng nghi???p th&acirc;n thi???n, th&acirc;n thi???t nh?? gia ??&igrave;nh.</p>\r\n\r\n<p>???????c h?????ng ?????y ????? c&aacute;c ph&uacute;c l???i h???p d???n c???a LiV Vacation Club.</p>\r\n\r\n<p>Nhi???u c?? h???i ???????c ??&agrave;o t???o n&acirc;ng cao n??ng l???c chuy&ecirc;n m&ocirc;n, c&oacute; c?? h???i th??ng ti???n trong s??? nghi???p.</p>\r\n\r\n<p>Y&Ecirc;U C???U C?? B???N:</p>\r\n\r\n<p>T???t nghi???p cao ?????ng tr??? l&ecirc;n chuy&ecirc;n ng&agrave;nh c&ocirc;ng ngh??? th&ocirc;ng tin</p>\r\n\r\n<p>Kinh nghi???m t??? 0 ?????n 1 n??m.</p>\r\n\r\n<p>C&oacute; ki???n th???c v??? h??? th???ng m???ng LAN, ph???n c???ng m&aacute;y t&iacute;nh, h??? ??i???u h&agrave;nh Windows v&agrave; c&aacute;c ph???n m???m ???ng d???ng office.</p>', '2020-08-19 19:29:12', '2020-08-19 19:29:12'),
(14, 'NVMKT', '8tr-15tr', '2020-08-31', '', '<p>- T?? v???n, b&aacute;n h&agrave;ng cho kh&aacute;ch</p>\r\n\r\n<p>- S???p x???p tr??ng b&agrave;y h&agrave;ng h&oacute;a</p>\r\n\r\n<p>- L&agrave;m fulltime( th??? 7, ch??? nh???t ngh??)</p>\r\n\r\n<p>- C&ocirc;ng vi???c s??? trao ?????i c??? th??? khi ph???ng v???n.</p>\r\n\r\n<p>- ?????a ??i???m l&agrave;m vi???c : c&aacute;c qu???n trong TPHCM</p>', '2020-08-20 06:01:07', '2020-08-30 10:31:01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_trinhdo`
--

CREATE TABLE `tbl_trinhdo` (
  `id_trinhdo` int(11) NOT NULL,
  `muc_trinh_do` varchar(50) NOT NULL,
  `nganh_dao_tao` varchar(50) NOT NULL,
  `noi_dao_tao` varchar(50) NOT NULL,
  `chuyen_nganh` varchar(50) NOT NULL,
  `nam_tot_nghiep` year(4) NOT NULL,
  `xep_loai` varchar(50) NOT NULL,
  `chung_chi_khac` varchar(50) NOT NULL,
  `id_nhanvien` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_trinhdo`
--

INSERT INTO `tbl_trinhdo` (`id_trinhdo`, `muc_trinh_do`, `nganh_dao_tao`, `noi_dao_tao`, `chuyen_nganh`, `nam_tot_nghiep`, `xep_loai`, `chung_chi_khac`, `id_nhanvien`, `created_at`, `updated_at`) VALUES
(1, '?????i h???c', 'CNTT', 'STU', 'CNTT', 2020, 'Gi???i', 'kh??ng', 'GDGD.Nha.01', NULL, '2020-07-27 06:44:57'),
(24, '?????i h???c', 'C??ng Ngh??? Th??ng Tin', 'C??ng Ngh??? S??i G??n', 'C??ng Ngh??? Th??ng Tin', 2020, 'Trung B??nh Kh??', 'kh??ng', 'PGDPGD.Nha.2', '2020-08-19 08:40:51', '2020-08-19 08:40:51'),
(25, '?????i h???c', 'C??ng ngh??? th??ng tin', 'C??ng Ngh??? S??i G??n', 'C??ng ngh??? th??ng tin', 2020, 'Kh??', 'kh??ng', 'PGDPGD.Thanh.3', '2020-08-19 09:02:31', '2020-08-19 09:02:31'),
(26, '?????i h???c', 'C??ng ngh??? th??ng tin', 'C??ng Ngh???  S??i G??n', 'C??ng ngh??? th??ng tin', 2020, 'Kh??', 'kh??ng', 'QLNS.Cuong.4', '2020-08-19 09:07:00', '2020-08-19 09:07:00'),
(27, '?????i h???c', 'C??ng ngh??? th??ng tin', 'C??ng Ngh??? S??i G??n', 'C??ng ngh??? th??ng tin', 2020, 'Kh??', 'Kh??ng', 'QLMKT.Dai.5', '2020-08-19 09:12:27', '2020-08-19 09:12:27'),
(28, '?????i h???c', 'C??ng ngh??? th??ng tin', 'C??ng Ngh??? S??i G??n', 'C??ng ngh??? th??ng tin', 2020, 'Gi???i', 'kh??ng', 'QLKTTC.Dat.6', '2020-08-19 09:21:01', '2020-08-19 09:21:01'),
(33, '?????i h???c', 'C??ng ngh??? th??ng tin', 'STU', 'L???p tr??nh web', 2020, 'Gi???i', 'kh??ng', 'QLNS.A.7', '2020-08-29 08:02:23', '2020-08-29 08:02:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ykien`
--

CREATE TABLE `tbl_ykien` (
  `id_ykien` int(11) NOT NULL,
  `loai_y_kien` varchar(255) NOT NULL,
  `chi_tiet` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_ykien`
--

INSERT INTO `tbl_ykien` (`id_ykien`, `loai_y_kien`, `chi_tiet`, `created_at`, `updated_at`) VALUES
(1, '????? Xu???t Ngh??? Ph??p', '0,2,4,5', NULL, NULL),
(2, 'Xin Ngh??? Ph??p V?? V??? S???p Sinh', '0,2,5,6', NULL, NULL),
(3, 'Xin Ngh??? Ph??p Vi???c Ri??ng', '0,2,5,6', NULL, NULL),
(4, 'Xin Ngh??? Ph??p V?? L?? Do B???nh T???t', '7', NULL, NULL),
(5, '????? Xu???t ???ng L????ng', '0,2,3', NULL, NULL),
(6, '????? Xu???t T??ng L????ng', '0,2,3', NULL, NULL),
(7, '????? Xu???t T??ng Ca', '2,5,0', NULL, NULL),
(8, 'B??? sung mi???n tr??? gia c???nh', '3,6,0', NULL, NULL),
(9, '????? Xu???t Khen Th?????ng', '1,2,0', NULL, NULL),
(10, '????? Xu???t K??? Lu???t', '1,2,0', NULL, NULL),
(11, 'Xin ph??p ngh??? vi???c', '2,5,0', '2020-08-13 08:08:10', '2020-08-13 08:08:10'),
(12, '????? Xu???t Kh??c', '2,0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE `tintuc` (
  `id` int(10) UNSIGNED NOT NULL,
  `TieuDe` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TieuDeKhongDau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TomTat` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `NoiDung` longtext COLLATE utf8_unicode_ci NOT NULL,
  `Hinh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NoiBat` int(11) NOT NULL DEFAULT 0,
  `SoLuotXem` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tintuc`
--

INSERT INTO `tintuc` (`id`, `TieuDe`, `TieuDeKhongDau`, `TomTat`, `NoiDung`, `Hinh`, `NoiBat`, `SoLuotXem`, `created_at`, `updated_at`) VALUES
(1039, 'Lorem Ipsum', 'lorem-ipsum', NULL, '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '16220_Tech.jpg', 1, NULL, '2020-08-21 09:25:26', '2020-08-21 09:25:26'),
(1040, 'Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC', 'section-1-10-32-of-de-finibus-bonorum-et-malorum-written-by-cicero-in-45-bc', NULL, '<h2>Where does it come from?</h2>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n\r\n<h2>Where can I get some?</h2>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', '142536_AI-and-robotics.jpg', 1, NULL, '2020-08-21 09:26:53', '2020-08-21 09:43:28'),
(1041, 'Lorem Ipsum2', 'lorem-ipsum2', NULL, '<h3>The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n\r\n<h3>Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</h3>\r\n\r\n<p>&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>', 'va5h_unnamed.jpg', 1, NULL, '2020-08-21 09:27:27', '2020-08-21 09:31:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `quyen` int(11) NOT NULL DEFAULT 1,
  `code` varchar(255) DEFAULT NULL,
  `time_code` datetime DEFAULT NULL,
  `id_nhanvien` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `quyen`, `code`, `time_code`, `id_nhanvien`, `created_at`, `updated_at`) VALUES
(1, 'Nh?? - Thanh', 'admin@gmail.com', '$2y$10$A78K7pC.gAPo0HzPnFlrseirKoitWye3eaG9cuVTWzPz5.cdupOcO', 1, NULL, NULL, 'GDGD.Nha.01', NULL, '2020-08-19 05:24:45'),
(29, 'Nh?? ?????i Ca', 'thanhnha22081998@gmail.com', '$2y$10$aXbYPFn/mxXz2Xf5MJjEy.FSwiY/zPwEKXHefUWxAjh3o13rwxR4i', 1, '$2y$10$nDdx3XkCff865B1RJ1IFdeckAJygJWWB.WdYnMUw0THYJHmOQi3B6', '2020-08-26 14:27:20', 'PGDPGD.Nha.2', '2020-08-19 08:40:51', '2020-08-26 07:27:41'),
(30, 'Thanh B??i', 'PGDPGD.Thanh.3@cty.com.vn', '$2y$10$WH/25Ap1mZd4fVJZBgwhX.HBW6.y2X0gNxGCm.mmgyQVzp/Ot4Rka', 1, NULL, NULL, 'PGDPGD.Thanh.3', '2020-08-19 09:02:31', '2020-08-19 09:02:31'),
(31, 'C?????ng CV', 'QLNS.Cuong.4@cty.com.vn', '$2y$10$A78K7pC.gAPo0HzPnFlrseirKoitWye3eaG9cuVTWzPz5.cdupOcO', 0, NULL, NULL, 'QLNS.Cuong.4', '2020-08-19 09:07:00', '2020-08-28 12:17:39'),
(32, 'Kan Nguy???n', 'QLMKT.Dai.5@cty.com.vn', '$2y$10$A78K7pC.gAPo0HzPnFlrseirKoitWye3eaG9cuVTWzPz5.cdupOcO', 1, NULL, NULL, 'QLMKT.Dai.5', '2020-08-19 09:12:27', '2020-08-19 09:12:27'),
(33, '?????t 09', 'QLKTTC.Dat.6@cty.com.vn', '$2y$10$2fcnSnZnQ139W17/7InWzuf5lX8rD1ui.ybdoMp0Lgod/GWXDVS5a', 1, NULL, NULL, 'QLKTTC.Dat.6', '2020-08-19 09:21:01', '2020-08-19 09:21:01'),
(38, 'Thanh Nh??', 'QLNS.A.7@cty.com.vn', '$2y$10$A78K7pC.gAPo0HzPnFlrseirKoitWye3eaG9cuVTWzPz5.cdupOcO', 1, NULL, NULL, 'QLNS.A.7', '2020-08-29 08:02:23', '2020-08-29 08:02:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_anhykien`
--
ALTER TABLE `tbl_anhykien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_ykien` (`id_luuykien`);

--
-- Indexes for table `tbl_bangluong`
--
ALTER TABLE `tbl_bangluong`
  ADD PRIMARY KEY (`id_bangluong`),
  ADD KEY `id_chamcong` (`id_nhanvien`);

--
-- Indexes for table `tbl_chamcong`
--
ALTER TABLE `tbl_chamcong`
  ADD PRIMARY KEY (`id_chamcong`),
  ADD KEY `tbl_chamcong_ibfk_1` (`id_bangluong`),
  ADD KEY `id_tangca` (`id_tangca`);

--
-- Indexes for table `tbl_chitietphuluc`
--
ALTER TABLE `tbl_chitietphuluc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_chucvu_moi` (`id_chucvu_moi`),
  ADD KEY `id_phucap_moi` (`id_phucap_moi`),
  ADD KEY `id_hopdong` (`id_hopdong`),
  ADD KEY `id_loaihopdong_moi` (`id_loaihopdong_moi`);

--
-- Indexes for table `tbl_chucvu`
--
ALTER TABLE `tbl_chucvu`
  ADD PRIMARY KEY (`id_chucvu`),
  ADD KEY `id_phongban` (`id_phongban`);

--
-- Indexes for table `tbl_chucvu_permission`
--
ALTER TABLE `tbl_chucvu_permission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_chucvu` (`id_chucvu`),
  ADD KEY `id_permission` (`id_permission`);

--
-- Indexes for table `tbl_dantoc`
--
ALTER TABLE `tbl_dantoc`
  ADD PRIMARY KEY (`id_dantoc`);

--
-- Indexes for table `tbl_hopdong`
--
ALTER TABLE `tbl_hopdong`
  ADD PRIMARY KEY (`id_hopdong`),
  ADD KEY `tbl_hopdong_ibfk_2` (`id_nhanvien`),
  ADD KEY `id_loai_hop_dong` (`id_loaihopdong`),
  ADD KEY `id_phucap` (`id_phucap`);

--
-- Indexes for table `tbl_hoso`
--
ALTER TABLE `tbl_hoso`
  ADD PRIMARY KEY (`id_hoso`);

--
-- Indexes for table `tbl_hosonhanvien`
--
ALTER TABLE `tbl_hosonhanvien`
  ADD PRIMARY KEY (`id_nhanvien`),
  ADD KEY `id_chucvu` (`id_chucvu`),
  ADD KEY `id_dantoc` (`id_dantoc`);

--
-- Indexes for table `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  ADD PRIMARY KEY (`id_lienhe`),
  ADD KEY `id_nhanvien` (`id_nhanvien`),
  ADD KEY `id_tinh_tam_tru` (`id_tinh_tam_tru`),
  ADD KEY `id_tinh_thuong_tru` (`id_tinh_thuong_tru`);

--
-- Indexes for table `tbl_loaihopdong`
--
ALTER TABLE `tbl_loaihopdong`
  ADD PRIMARY KEY (`id_loaihopdong`);

--
-- Indexes for table `tbl_loaiphuluc`
--
ALTER TABLE `tbl_loaiphuluc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_luuykien`
--
ALTER TABLE `tbl_luuykien`
  ADD PRIMARY KEY (`id_luuykien`),
  ADD KEY `id_nhanvien` (`id_nhanvien`),
  ADD KEY `id_ykien` (`id_ykien`);

--
-- Indexes for table `tbl_mientrugiacanh`
--
ALTER TABLE `tbl_mientrugiacanh`
  ADD PRIMARY KEY (`id_mientrugiacanh`),
  ADD KEY `id_nhanvien` (`id_nhanvien`);

--
-- Indexes for table `tbl_permissions`
--
ALTER TABLE `tbl_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_phongban`
--
ALTER TABLE `tbl_phongban`
  ADD PRIMARY KEY (`id_phongban`);

--
-- Indexes for table `tbl_phucap`
--
ALTER TABLE `tbl_phucap`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_chuvu` (`id_chucvu`);

--
-- Indexes for table `tbl_phuluc`
--
ALTER TABLE `tbl_phuluc`
  ADD PRIMARY KEY (`id_phuluc`),
  ADD KEY `id_hopdong` (`id_hopdong`),
  ADD KEY `id_loaiphuluc` (`id_loaiphuluc`),
  ADD KEY `id_chitiet` (`id_chitiet`);

--
-- Indexes for table `tbl_quyetdinhthoiviec`
--
ALTER TABLE `tbl_quyetdinhthoiviec`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_nhanvien` (`id_nhanvien`);

--
-- Indexes for table `tbl_tangca`
--
ALTER TABLE `tbl_tangca`
  ADD PRIMARY KEY (`id_tangca`),
  ADD KEY `id_nhanvien` (`id_nhanvien`);

--
-- Indexes for table `tbl_thongtinchinh`
--
ALTER TABLE `tbl_thongtinchinh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_thongtingioithieu`
--
ALTER TABLE `tbl_thongtingioithieu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_thuecanhan`
--
ALTER TABLE `tbl_thuecanhan`
  ADD PRIMARY KEY (`id_thuecanhan`),
  ADD KEY `id_bangluong` (`id_bangluong`);

--
-- Indexes for table `tbl_tinh`
--
ALTER TABLE `tbl_tinh`
  ADD PRIMARY KEY (`id_tinh`);

--
-- Indexes for table `tbl_tintuyendung`
--
ALTER TABLE `tbl_tintuyendung`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vi_tri` (`vi_tri`);

--
-- Indexes for table `tbl_trinhdo`
--
ALTER TABLE `tbl_trinhdo`
  ADD PRIMARY KEY (`id_trinhdo`),
  ADD KEY `id_nhanvien` (`id_nhanvien`);

--
-- Indexes for table `tbl_ykien`
--
ALTER TABLE `tbl_ykien`
  ADD PRIMARY KEY (`id_ykien`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_nhanvien` (`id_nhanvien`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_anhykien`
--
ALTER TABLE `tbl_anhykien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_bangluong`
--
ALTER TABLE `tbl_bangluong`
  MODIFY `id_bangluong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_chamcong`
--
ALTER TABLE `tbl_chamcong`
  MODIFY `id_chamcong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_chitietphuluc`
--
ALTER TABLE `tbl_chitietphuluc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `tbl_chucvu_permission`
--
ALTER TABLE `tbl_chucvu_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=931;

--
-- AUTO_INCREMENT for table `tbl_dantoc`
--
ALTER TABLE `tbl_dantoc`
  MODIFY `id_dantoc` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `tbl_hoso`
--
ALTER TABLE `tbl_hoso`
  MODIFY `id_hoso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  MODIFY `id_lienhe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_loaihopdong`
--
ALTER TABLE `tbl_loaihopdong`
  MODIFY `id_loaihopdong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_loaiphuluc`
--
ALTER TABLE `tbl_loaiphuluc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_luuykien`
--
ALTER TABLE `tbl_luuykien`
  MODIFY `id_luuykien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `tbl_mientrugiacanh`
--
ALTER TABLE `tbl_mientrugiacanh`
  MODIFY `id_mientrugiacanh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_permissions`
--
ALTER TABLE `tbl_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_phucap`
--
ALTER TABLE `tbl_phucap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tbl_quyetdinhthoiviec`
--
ALTER TABLE `tbl_quyetdinhthoiviec`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_tangca`
--
ALTER TABLE `tbl_tangca`
  MODIFY `id_tangca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_thongtinchinh`
--
ALTER TABLE `tbl_thongtinchinh`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_thongtingioithieu`
--
ALTER TABLE `tbl_thongtingioithieu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_thuecanhan`
--
ALTER TABLE `tbl_thuecanhan`
  MODIFY `id_thuecanhan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tinh`
--
ALTER TABLE `tbl_tinh`
  MODIFY `id_tinh` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `tbl_tintuyendung`
--
ALTER TABLE `tbl_tintuyendung`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_trinhdo`
--
ALTER TABLE `tbl_trinhdo`
  MODIFY `id_trinhdo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_ykien`
--
ALTER TABLE `tbl_ykien`
  MODIFY `id_ykien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1042;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_anhykien`
--
ALTER TABLE `tbl_anhykien`
  ADD CONSTRAINT `tbl_anhykien_ibfk_1` FOREIGN KEY (`id_luuykien`) REFERENCES `tbl_luuykien` (`id_luuykien`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_bangluong`
--
ALTER TABLE `tbl_bangluong`
  ADD CONSTRAINT `tbl_bangluong_ibfk_1` FOREIGN KEY (`id_nhanvien`) REFERENCES `tbl_hosonhanvien` (`id_nhanvien`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_chamcong`
--
ALTER TABLE `tbl_chamcong`
  ADD CONSTRAINT `tbl_chamcong_ibfk_1` FOREIGN KEY (`id_bangluong`) REFERENCES `tbl_bangluong` (`id_bangluong`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_chamcong_ibfk_2` FOREIGN KEY (`id_tangca`) REFERENCES `tbl_tangca` (`id_tangca`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_chitietphuluc`
--
ALTER TABLE `tbl_chitietphuluc`
  ADD CONSTRAINT `tbl_chitietphuluc_ibfk_2` FOREIGN KEY (`id_chucvu_moi`) REFERENCES `tbl_chucvu` (`id_chucvu`),
  ADD CONSTRAINT `tbl_chitietphuluc_ibfk_3` FOREIGN KEY (`id_phucap_moi`) REFERENCES `tbl_phucap` (`id`),
  ADD CONSTRAINT `tbl_chitietphuluc_ibfk_4` FOREIGN KEY (`id_hopdong`) REFERENCES `tbl_hopdong` (`id_hopdong`),
  ADD CONSTRAINT `tbl_chitietphuluc_ibfk_5` FOREIGN KEY (`id_loaihopdong_moi`) REFERENCES `tbl_loaihopdong` (`id_loaihopdong`);

--
-- Constraints for table `tbl_chucvu`
--
ALTER TABLE `tbl_chucvu`
  ADD CONSTRAINT `tbl_chucvu_ibfk_1` FOREIGN KEY (`id_phongban`) REFERENCES `tbl_phongban` (`id_phongban`);

--
-- Constraints for table `tbl_chucvu_permission`
--
ALTER TABLE `tbl_chucvu_permission`
  ADD CONSTRAINT `tbl_chucvu_permission_ibfk_1` FOREIGN KEY (`id_chucvu`) REFERENCES `tbl_chucvu` (`id_chucvu`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_chucvu_permission_ibfk_2` FOREIGN KEY (`id_permission`) REFERENCES `tbl_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_hopdong`
--
ALTER TABLE `tbl_hopdong`
  ADD CONSTRAINT `tbl_hopdong_ibfk_1` FOREIGN KEY (`id_nhanvien`) REFERENCES `tbl_hosonhanvien` (`id_nhanvien`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_hopdong_ibfk_2` FOREIGN KEY (`id_loaihopdong`) REFERENCES `tbl_loaihopdong` (`id_loaihopdong`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_hopdong_ibfk_3` FOREIGN KEY (`id_phucap`) REFERENCES `tbl_phucap` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_hosonhanvien`
--
ALTER TABLE `tbl_hosonhanvien`
  ADD CONSTRAINT `tbl_hosonhanvien_ibfk_1` FOREIGN KEY (`id_chucvu`) REFERENCES `tbl_chucvu` (`id_chucvu`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  ADD CONSTRAINT `tbl_lienhe_ibfk_1` FOREIGN KEY (`id_nhanvien`) REFERENCES `tbl_hosonhanvien` (`id_nhanvien`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_lienhe_ibfk_2` FOREIGN KEY (`id_tinh_tam_tru`) REFERENCES `tbl_tinh` (`id_tinh`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_lienhe_ibfk_3` FOREIGN KEY (`id_tinh_thuong_tru`) REFERENCES `tbl_tinh` (`id_tinh`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_luuykien`
--
ALTER TABLE `tbl_luuykien`
  ADD CONSTRAINT `tbl_luuykien_ibfk_1` FOREIGN KEY (`id_nhanvien`) REFERENCES `tbl_hosonhanvien` (`id_nhanvien`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_luuykien_ibfk_2` FOREIGN KEY (`id_ykien`) REFERENCES `tbl_ykien` (`id_ykien`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_mientrugiacanh`
--
ALTER TABLE `tbl_mientrugiacanh`
  ADD CONSTRAINT `tbl_mientrugiacanh_ibfk_1` FOREIGN KEY (`id_nhanvien`) REFERENCES `tbl_hosonhanvien` (`id_nhanvien`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_phucap`
--
ALTER TABLE `tbl_phucap`
  ADD CONSTRAINT `tbl_phucap_ibfk_1` FOREIGN KEY (`id_chucvu`) REFERENCES `tbl_chucvu` (`id_chucvu`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_phuluc`
--
ALTER TABLE `tbl_phuluc`
  ADD CONSTRAINT `tbl_phuluc_ibfk_1` FOREIGN KEY (`id_loaiphuluc`) REFERENCES `tbl_loaiphuluc` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_phuluc_ibfk_2` FOREIGN KEY (`id_hopdong`) REFERENCES `tbl_hopdong` (`id_hopdong`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_phuluc_ibfk_3` FOREIGN KEY (`id_chitiet`) REFERENCES `tbl_chitietphuluc` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_quyetdinhthoiviec`
--
ALTER TABLE `tbl_quyetdinhthoiviec`
  ADD CONSTRAINT `tbl_quyetdinhthoiviec_ibfk_1` FOREIGN KEY (`id_nhanvien`) REFERENCES `tbl_hosonhanvien` (`id_nhanvien`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_tangca`
--
ALTER TABLE `tbl_tangca`
  ADD CONSTRAINT `tbl_tangca_ibfk_1` FOREIGN KEY (`id_nhanvien`) REFERENCES `tbl_hosonhanvien` (`id_nhanvien`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_tintuyendung`
--
ALTER TABLE `tbl_tintuyendung`
  ADD CONSTRAINT `tbl_tintuyendung_ibfk_1` FOREIGN KEY (`vi_tri`) REFERENCES `tbl_chucvu` (`id_chucvu`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_trinhdo`
--
ALTER TABLE `tbl_trinhdo`
  ADD CONSTRAINT `tbl_trinhdo_ibfk_1` FOREIGN KEY (`id_nhanvien`) REFERENCES `tbl_hosonhanvien` (`id_nhanvien`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_nhanvien`) REFERENCES `tbl_hosonhanvien` (`id_nhanvien`);
--
-- Database: `du_an1`
--
CREATE DATABASE IF NOT EXISTS `du_an1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `du_an1`;

-- --------------------------------------------------------

--
-- Table structure for table `chucvu`
--

CREATE TABLE `chucvu` (
  `maCV` varchar(20) NOT NULL,
  `tenCV` varchar(29) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chucvu`
--

INSERT INTO `chucvu` (`maCV`, `tenCV`) VALUES
('Admin', 'Admin'),
('NV', 'Nh??n vi??n'),
('TP', 'Tr?????ng ph??ng');

-- --------------------------------------------------------

--
-- Table structure for table `diemdanh`
--

CREATE TABLE `diemdanh` (
  `maDD` varchar(20) NOT NULL,
  `maNv` varchar(20) NOT NULL,
  `ngay` date NOT NULL,
  `trangthai` int(1) NOT NULL,
  `giovao` varchar(33) NOT NULL,
  `giora` varchar(33) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `diemdanh`
--

INSERT INTO `diemdanh` (`maDD`, `maNv`, `ngay`, `trangthai`, `giovao`, `giora`, `id`) VALUES
('DD7213', 'NV587', '2022-11-25', 1, '10:9:43', '', 7),
('DD2456', 'NV897', '2022-11-25', 1, '10:10:26', '10:13:13', 8),
('DD3767', 'NV897', '2022-11-25', 1, '10:13:44', '10:13:46', 9),
('DD7838', 'NV897', '2022-11-25', 1, '10:14:29', '10:14:34', 10);

-- --------------------------------------------------------

--
-- Table structure for table `hopdong`
--

CREATE TABLE `hopdong` (
  `maHD` varchar(20) NOT NULL,
  `maNV` varchar(20) NOT NULL,
  `ngaybatdau` date NOT NULL,
  `ngayketthuc` date NOT NULL,
  `thoihan` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hopdong`
--

INSERT INTO `hopdong` (`maHD`, `maNV`, `ngaybatdau`, `ngayketthuc`, `thoihan`) VALUES
('HD624', 'admin', '2022-11-10', '2022-11-04', 5),
('HD911', 'NV587', '2022-11-02', '2022-11-26', 4),
('HD978', 'NV897', '2022-11-10', '2022-12-02', 5);

-- --------------------------------------------------------

--
-- Table structure for table `khenthuong`
--

CREATE TABLE `khenthuong` (
  `maKT` varchar(20) NOT NULL,
  `sotien` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `khenthuong`
--

INSERT INTO `khenthuong` (`maKT`, `sotien`) VALUES
('KT0', 0),
('KT1', 150000),
('KT2', 200000),
('KT3', 300000);

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `maNV` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `luong` int(11) NOT NULL,
  `hoten` varchar(30) NOT NULL,
  `hinhanh` varchar(20) NOT NULL,
  `diachi` varchar(20) NOT NULL,
  `email` varchar(33) NOT NULL,
  `gioitinh` int(1) NOT NULL,
  `trangthai` int(1) NOT NULL,
  `maKT` varchar(20) NOT NULL,
  `maPhongBan` varchar(20) NOT NULL,
  `maChucVu` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`maNV`, `password`, `luong`, `hoten`, `hinhanh`, `diachi`, `email`, `gioitinh`, `trangthai`, `maKT`, `maPhongBan`, `maChucVu`) VALUES
('admin', 'dat123', 99999999, 'admin', 'user1.png', 'Thanh Kh??', 'huydangytam1@gmail.com', 0, 0, 'KT1', 'PCNTT', 'Admin'),
('NV587', 'dat123', 99999999, 'Tr???n V???', 'user2.png', 'Qu???ng tr???', 'trandatyl1@gmail.com', 0, 1, 'KT1', 'PCNTT', 'NV'),
('NV897', 'dat123', 33333333, 'Phu??ng Anh ', 'user4.png', 'Thanh Kh??', 'anhphan26102003@gmail.com', 0, 0, 'KT2', 'PCNTT', 'NV'),
('NV990', 'dat123', 666666666, 'Tr???n ?????t', 'user5.png', 'Thanh Kh??', 'trandatyl1@gmail.com', 0, 0, 'KT0', 'PGD', 'NV');

-- --------------------------------------------------------

--
-- Table structure for table `phongban`
--

CREATE TABLE `phongban` (
  `maPB` varchar(20) NOT NULL,
  `tenPB` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phongban`
--

INSERT INTO `phongban` (`maPB`, `tenPB`) VALUES
('PCNTT', 'Ph??ng c??ng ngh?? th??n'),
('PGD', 'Ph??ng c??ng gi??o d???c'),
('PKT', 'Ph??ng c??ng kinh t???'),
('PMKT', 'Ph??ng c??ng Maketting');

-- --------------------------------------------------------

--
-- Table structure for table `tangca`
--

CREATE TABLE `tangca` (
  `maTC` varchar(20) NOT NULL,
  `ngay` date NOT NULL,
  `maNv` varchar(20) NOT NULL,
  `giora` text NOT NULL,
  `giovao` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chucvu`
--
ALTER TABLE `chucvu`
  ADD PRIMARY KEY (`maCV`);

--
-- Indexes for table `diemdanh`
--
ALTER TABLE `diemdanh`
  ADD PRIMARY KEY (`id`),
  ADD KEY `maNv` (`maNv`);

--
-- Indexes for table `hopdong`
--
ALTER TABLE `hopdong`
  ADD PRIMARY KEY (`maHD`),
  ADD KEY `maNV` (`maNV`);

--
-- Indexes for table `khenthuong`
--
ALTER TABLE `khenthuong`
  ADD PRIMARY KEY (`maKT`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`maNV`),
  ADD KEY `maChucVu` (`maChucVu`),
  ADD KEY `maPhongBan` (`maPhongBan`),
  ADD KEY `maKT` (`maKT`);

--
-- Indexes for table `phongban`
--
ALTER TABLE `phongban`
  ADD PRIMARY KEY (`maPB`);

--
-- Indexes for table `tangca`
--
ALTER TABLE `tangca`
  ADD PRIMARY KEY (`maTC`),
  ADD KEY `maNv` (`maNv`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diemdanh`
--
ALTER TABLE `diemdanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `diemdanh`
--
ALTER TABLE `diemdanh`
  ADD CONSTRAINT `diemdanh_ibfk_1` FOREIGN KEY (`maNv`) REFERENCES `nhanvien` (`maNV`);

--
-- Constraints for table `hopdong`
--
ALTER TABLE `hopdong`
  ADD CONSTRAINT `hopdong_ibfk_1` FOREIGN KEY (`maNV`) REFERENCES `nhanvien` (`maNV`);

--
-- Constraints for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `nhanvien_ibfk_1` FOREIGN KEY (`maKT`) REFERENCES `khenthuong` (`maKT`),
  ADD CONSTRAINT `nhanvien_ibfk_2` FOREIGN KEY (`maPhongBan`) REFERENCES `phongban` (`maPB`),
  ADD CONSTRAINT `nhanvien_ibfk_3` FOREIGN KEY (`maChucVu`) REFERENCES `chucvu` (`maCV`);

--
-- Constraints for table `tangca`
--
ALTER TABLE `tangca`
  ADD CONSTRAINT `tangca_ibfk_1` FOREIGN KEY (`maNv`) REFERENCES `nhanvien` (`maNV`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'duan_1', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"duan1\",\"du_an1\",\"phpmyadmin\",\"test\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"du_an1\",\"table\":\"diemdanh\"},{\"db\":\"du_an1\",\"table\":\"tangca\"},{\"db\":\"du_an1\",\"table\":\"nhanvien\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'du_an1', 'diemdanh', '{\"sorted_col\":\"`diemdanh`.`id` DESC\"}', '2022-11-25 03:13:57');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-11-25 04:01:56', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
