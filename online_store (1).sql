-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 23, 2023 lúc 06:24 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `online_store`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_muc_gio_hang`
--

CREATE TABLE `chi_muc_gio_hang` (
  `id` bigint(20) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `ma_gio_hang` bigint(20) DEFAULT NULL,
  `ma_san_pham` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_tiet_don_hang`
--

CREATE TABLE `chi_tiet_don_hang` (
  `id` bigint(20) NOT NULL,
  `don_gia` bigint(20) NOT NULL,
  `so_luong` int(11) DEFAULT NULL,
  `ma_don_hang` bigint(20) DEFAULT NULL,
  `ma_san_pham` bigint(20) DEFAULT NULL,
  `so_luong_dat` int(11) NOT NULL,
  `so_luong_nhan_hang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chi_tiet_don_hang`
--

INSERT INTO `chi_tiet_don_hang` (`id`, `don_gia`, `so_luong`, `ma_don_hang`, `ma_san_pham`, `so_luong_dat`, `so_luong_nhan_hang`) VALUES
(1, 13980000, 2, 32, 62, 0, 0),
(2, 25990000, 1, 32, 57, 0, 0),
(3, 22490000, 1, 32, 54, 0, 0),
(4, 52430000, NULL, 35, 64, 7, 0),
(5, 22490000, NULL, 35, 54, 1, 0),
(6, 5490000, NULL, 35, 60, 1, 0),
(7, 49980000, NULL, 35, 56, 2, 0),
(8, 6990000, NULL, 35, 62, 1, 0),
(9, 13980000, NULL, 36, 62, 2, 0),
(10, 7490000, NULL, 36, 64, 1, 0),
(11, 15000000, NULL, 37, 85, 1, 0),
(12, 21000000, NULL, 37, 145, 1, 0),
(13, 33990000, NULL, 38, 5, 1, 0),
(14, 3455555, NULL, 38, 63, 1, 0),
(15, 7490000, NULL, 38, 64, 1, 0),
(16, 42000000, NULL, 38, 145, 2, 0),
(17, 23990000, NULL, 39, 3, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danh_muc`
--

CREATE TABLE `danh_muc` (
  `id` bigint(20) NOT NULL,
  `ten_danh_muc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `danh_muc`
--

INSERT INTO `danh_muc` (`id`, `ten_danh_muc`) VALUES
(1, 'Laptop'),
(2, 'PC ĐỒNG BỘ & PC GAMING'),
(3, 'TB NGHE NHÌN & GIẢI TRÍ'),
(4, 'LINH KIỆN MÁY TÍNH'),
(5, 'THIẾT BỊ LƯU TRỮ'),
(6, 'THIẾT BỊ MẠNG'),
(7, 'CAMERA QUAN SÁT'),
(8, 'PHỤ KIỆN CÁC LOẠI'),
(9, 'THIẾT BỊ VĂN PHÒNG');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `don_hang`
--

CREATE TABLE `don_hang` (
  `id` bigint(20) NOT NULL,
  `dia_chi_nhan` varchar(255) DEFAULT NULL,
  `ghi_chu` varchar(255) DEFAULT NULL,
  `ho_ten_nguoi_nhan` varchar(255) DEFAULT NULL,
  `ngay_dat_hang` datetime DEFAULT NULL,
  `ngay_giao_hang` datetime DEFAULT NULL,
  `ngay_nhan_hang` datetime DEFAULT NULL,
  `sdt_nhan_hang` varchar(255) DEFAULT NULL,
  `trang_thai_don_hang` varchar(255) DEFAULT NULL,
  `ma_nguoi_dat` bigint(20) DEFAULT NULL,
  `ma_shipper` bigint(20) DEFAULT NULL,
  `tong_gia_tri` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `don_hang`
--

INSERT INTO `don_hang` (`id`, `dia_chi_nhan`, `ghi_chu`, `ho_ten_nguoi_nhan`, `ngay_dat_hang`, `ngay_giao_hang`, `ngay_nhan_hang`, `sdt_nhan_hang`, `trang_thai_don_hang`, `ma_nguoi_dat`, `ma_shipper`, `tong_gia_tri`) VALUES
(31, 'bd', 'asdf', 'aaa', '2018-12-01 14:38:26', NULL, NULL, 'dsf', 'Đang chờ duyệt', NULL, NULL, 0),
(32, 'fadf', 'asdf', 'aaa', '2018-12-05 21:58:24', NULL, NULL, '13', 'created', 2, NULL, 0),
(33, 'ssdsd', NULL, 'sdsd', '2022-11-20 16:23:29', NULL, NULL, '5322', 'Đang chờ giao', NULL, NULL, 7490000),
(34, 'ssdsd', NULL, 'sdsd', '2022-11-20 16:27:36', NULL, NULL, '5322', 'Đang chờ giao', NULL, NULL, 7490000),
(35, 'Đà Nẵng', NULL, 'Thị Ly', '2022-11-20 20:04:22', NULL, NULL, '047827812', 'Đang chờ giao', 2, NULL, 137380000),
(36, 'Quảng Nam', NULL, 'Hòa', '2022-11-24 21:29:32', NULL, NULL, '0937811', 'Đang chờ giao', NULL, NULL, 21470000),
(37, 'qqqww', NULL, 'saa', '2023-01-04 16:21:10', NULL, NULL, 'wqq', 'Đang chờ giao', 1, NULL, 36000000),
(38, 'Dà Nẵng', NULL, 'hu', '2023-01-07 08:03:26', NULL, NULL, '383792', 'Đang chờ giao', NULL, NULL, 86935555),
(39, '282801', NULL, 'thị ly ', '2023-01-07 08:27:45', NULL, NULL, '039393', 'Đang chờ giao', NULL, NULL, 23990000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gio_hang`
--

CREATE TABLE `gio_hang` (
  `id` bigint(20) NOT NULL,
  `tong_tien` varchar(255) DEFAULT NULL,
  `ma_nguoi_dung` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `gio_hang`
--

INSERT INTO `gio_hang` (`id`, `tong_tien`, `ma_nguoi_dung`) VALUES
(1, NULL, 2),
(2, NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hang_san_xuat`
--

CREATE TABLE `hang_san_xuat` (
  `id` bigint(20) NOT NULL,
  `ten_hang_san_xuat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hang_san_xuat`
--

INSERT INTO `hang_san_xuat` (`id`, `ten_hang_san_xuat`) VALUES
(2, 'Apple'),
(3, 'Asus'),
(4, 'Acer'),
(5, 'Dell'),
(6, 'HP'),
(7, 'Lenovo'),
(8, 'MSI'),
(9, 'Masstel'),
(10, 'Haier'),
(11, 'Macbook');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lien_he`
--

CREATE TABLE `lien_he` (
  `id` bigint(20) NOT NULL,
  `email_lien_he` varchar(255) DEFAULT NULL,
  `ngay_lien_he` datetime DEFAULT NULL,
  `ngay_tra_loi` datetime DEFAULT NULL,
  `noi_dung_lien_he` varchar(255) DEFAULT NULL,
  `noi_dung_tra_loi` varchar(255) DEFAULT NULL,
  `trang_thai` varchar(255) DEFAULT NULL,
  `ma_nguoi_tra_loi` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung_vaitro`
--

CREATE TABLE `nguoidung_vaitro` (
  `ma_nguoi_dung` bigint(20) NOT NULL,
  `ma_vai_tro` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nguoidung_vaitro`
--

INSERT INTO `nguoidung_vaitro` (`ma_nguoi_dung`, `ma_vai_tro`) VALUES
(1, 1),
(1, 2),
(2, 2),
(3, 3),
(4, 2),
(5, 3),
(6, 2),
(7, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoi_dung`
--

CREATE TABLE `nguoi_dung` (
  `id` bigint(20) NOT NULL,
  `dia_chi` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ho_ten` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `so_dien_thoai` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nguoi_dung`
--

INSERT INTO `nguoi_dung` (`id`, `dia_chi`, `email`, `ho_ten`, `password`, `so_dien_thoai`) VALUES
(1, 'Đà Nẵng', 'admin@gmail.com', 'Nguyễn Thị Ly', '$2a$10$/VFMNUPBKNVRMjxPFCYKZ.lKahoLQda0EaAxdqoun1w3DqwNLa2me', '123456789'),
(2, NULL, 'member@gmail.com', NULL, '$2a$10$j7Upgupou72GBmukz0G6pOATk3wlCAgaoFCEqAhSvLToD/V/1wlpu', NULL),
(3, NULL, 'shipper@gmail.com', NULL, '$2a$10$u2B29HDxuWVYY3fUJ8R2qunNzXngfxij5GpvlFAEtIz3JpK/WFXF2', NULL),
(4, 'Ha Noi', 'jvgiveup@gmail.com', 'Pham Tuan', '$2a$10$ZCqCO9gSWt8A8HNXAWq8luqfNbJm0uG3PsUlzry0aRLwO3VHQZTmy', '123456'),
(5, 'Đà Nẵng', 'ly@gmail.com', 'Nguyễn Thị Ly', '$2a$10$a/NBlVsfd4aTjlD/66dCmeyLzHdaJEIaPvDnv743L8p3Tghkn2iRC', '0375013432'),
(6, 'Quảng Nam', 'ly123@gmail.com', 'Nguyễn Thị Ly', '$2a$10$n3yZDa/cV9Icgw4rMtajFenLdmo1sPNRqnM/Rsf1kCqqhRsYSsyzm', '0379402832'),
(7, 'Tam Kỳ', 'hi@gmail.com', 'Thị Ly', '$2a$10$zkVCNKJHlJ6yEmg4HdJL4OiYok1ZX21BV70LgXyKGh9uWGPz4G9am', '2938381');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_pham`
--

CREATE TABLE `san_pham` (
  `id` bigint(20) NOT NULL,
  `cpu` varchar(255) DEFAULT NULL,
  `don_gia` bigint(20) NOT NULL,
  `don_vi_ban` int(11) NOT NULL,
  `don_vi_kho` int(11) NOT NULL,
  `dung_luong_pin` varchar(255) DEFAULT NULL,
  `he_dieu_hanh` varchar(255) DEFAULT NULL,
  `man_hinh` varchar(255) DEFAULT NULL,
  `ram` varchar(255) DEFAULT NULL,
  `ten_san_pham` varchar(255) DEFAULT NULL,
  `thiet_ke` varchar(255) DEFAULT NULL,
  `thong_tin_bao_hanh` varchar(255) DEFAULT NULL,
  `thong_tin_chung` varchar(255) DEFAULT NULL,
  `ma_danh_muc` bigint(20) DEFAULT NULL,
  `ma_hang_sx` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `san_pham`
--

INSERT INTO `san_pham` (`id`, `cpu`, `don_gia`, `don_vi_ban`, `don_vi_kho`, `dung_luong_pin`, `he_dieu_hanh`, `man_hinh`, `ram`, `ten_san_pham`, `thiet_ke`, `thong_tin_bao_hanh`, `thong_tin_chung`, `ma_danh_muc`, `ma_hang_sx`) VALUES
(3, 'Intel, Core i5, 1.8 Ghz', 23990000, 0, 100, '5800mAh', ' Mac Os', ' 13.3 inch LED-backlit', '8 GB, LPDDR3, 1600 Mhz', 'Macbook Air 13 128GB MQD32SA/A (2017)', 'thiết kế không thay đổi, vỏ nhôm sang trọng, siêu mỏng và siêu nhẹ', '12 tháng', 'hiệu năng được nâng cấp, thời lượng pin cực lâu, phù hợp cho nhu cầu làm việc văn phòng nhẹ nhàng, không cần quá chú trọng vào hiển thị của màn hình', 1, 2),
(4, ' Intel, Core i5, 1.8 Ghz', 28990000, 0, 100, '6000mAh', 'Mac Os', '13.3 inch LED-backlit', ' 8 GB, LPDDR3, 1600 Mhz', 'Macbook Air 13 256GB MQD42SA/A (2017)', 'thiết kế không thay đổi, vỏ nhôm sang trọng, siêu mỏng và siêu nhẹ', '12 tháng', 'hiệu năng được nâng cấp, thời lượng pin cực lâu, phù hợp cho nhu cầu làm việc văn phòng nhẹ nhàng, không cần quá chú trọng vào hiển thị của màn hình', 1, 2),
(5, 'Intel, Core M3, 1.2 GHz', 33990000, 0, 150, '6000mAh', 'Mac Os', ' 12 inch LED-backlit', '8 GB, LPDDR3, 1866 MHz', 'Macbook 12 256GB (2017)', 'thiết kế không có thay đổi so với phiên bản 2016 nhưng Apple đã nâng cấp thêm bộ nhớ và giới thiệu bộ vi xử lý Intel thế hệ thứ 7', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 2),
(6, ' Intel, Core i5, 2.3 GHz', 33990000, 0, 200, '6000mAh', 'Mac Os', ' 13.3 inch LED-backlit', ' 8 GB, LPDDR3, 2133MHz', 'Macbook Pro 13 inch 128GB (2017)', 'thiết kế không thay đổi, vỏ nhôm sang trọng, siêu mỏng và siêu nhẹ', '12 tháng', 'hiệu năng được nâng cấp, thời lượng pin cực lâu, phù hợp cho nhu cầu làm việc văn phòng nhẹ nhàng, không cần quá chú trọng vào hiển thị của màn hình', 1, 2),
(7, 'Intel, Core i5, 2.3GHz', 44990000, 0, 100, '7000mAh', 'Mac Os', '13.3 inch, Retina (2560 x 1600 pixels)', '8 GB, LPDDR3, 2133 MHz', 'Macbook Pro 13 Touch Bar 256 GB (2018)', 'thiết kế không thay đổi, vỏ nhôm sang trọng, siêu mỏng và siêu nhẹ', '12 tháng', 'hiệu năng được nâng cấp, thời lượng pin cực lâu, phù hợp cho nhu cầu làm việc văn phòng nhẹ nhàng, không cần quá chú trọng vào hiển thị của màn hình', 1, 2),
(8, 'Intel, Core i5, 2.3GHz', 49990000, 0, 150, '7000mAh', 'Mac Os', '13.3 inch, Retina (2560 x 1600 pixels)', '8 GB, LPDDR3, 2133 MHz', 'Macbook Pro 13 Touch Bar 512 GB (2018)', 'thiết kế không thay đổi, vỏ nhôm sang trọng, siêu mỏng và siêu nhẹ', '12 tháng', 'hiệu năng được nâng cấp, thời lượng pin cực lâu, phù hợp cho nhu cầu làm việc văn phòng nhẹ nhàng, không cần quá chú trọng vào hiển thị của màn hình', 1, 2),
(11, ' Intel Celeron N3350', 5490000, 0, 100, '7000', 'Windows 10', '14 inch HD LED Glare', ' 4 GB DDR3', 'Asus E402NA-GA034T', 'thiết kế với lớp vỏ bằng nhựa giúp cho máy trở nên nhẹ nhàng hơn', '12 tháng', 'Bàn phím chiclet cùng Touchpad thông minh', 1, 3),
(12, 'Intel Celeron N3060', 5490000, 0, 200, '7000', 'Windows 10', '14.0 inch HD Ultra Slim 200nits', '2 GB DDR3L 1600 MHz', 'Asus Vivobook E406SA-BV001T', 'thiết kế với lớp vỏ bằng nhựa giúp cho máy trở nên nhẹ nhàng hơn', '12 tháng', 'Bàn phím chiclet cùng Touchpad thông minh', 1, 3),
(13, 'Intel Celeron N3060', 5490000, 0, 200, '7000', 'Windows 10', '14.0 inch HD Ultra Slim 200nits', '2 GB DDR3 1600 MHz', 'Asus Vivobook E406SA-BV043T', 'thiết kế với lớp vỏ bằng nhựa giúp cho máy trở nên nhẹ nhàng hơn', '12 tháng', 'gọn,nhẹ, độ bền cao', 1, 3),
(14, 'Intel Celeron N4000', 6690000, 0, 120, '7000', ' Windows 10', '15.6 inch Anti-Glare LED Backlit', ' 4 GB DDR4 2400 MHz', 'Asus Vivobook X507MA-BR208T/Celeron N4000', 'thiết kế với lớp vỏ bằng nhựa giúp cho máy trở nên nhẹ nhàng hơn', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 3),
(16, 'Intel, Core i3-6100U', 8990000, 0, 130, '7000', 'Windows 10 Home', '15.6 inch LED Backlight', '4 GB DDR4 2133 MHz', 'Asus X541UA-XX272T/Core i3 6100U', 'thiết kế với lớp vỏ bằng nhựa giúp cho máy trở nên nhẹ nhàng hơn', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 3),
(17, ' Intel, Core i3, 2.0 GHz', 8990000, 0, 200, '7000', ' Free DOS', '15.6 inchHD LED backlight', '4 GB, DDR4, 2400MHz', 'Asus X541UA-GO1345', 'thiết kế với lớp vỏ bằng nhựa giúp cho máy trở nên nhẹ nhàng hơn', '12 tháng', 'tinh tế đến từng chi tiết', 1, 3),
(18, ' Intel, Core i3, 2.0 GHz', 10490000, 0, 300, '7000', 'Window 10', ' 15.6 inchLED Backlight', ' 4 GB, DDR4, 2400MHz', 'Asus X541UJ-DM544T/Core i3-6006U', 'thiết kế không thay đổi, vỏ nhôm sang trọng, siêu mỏng và siêu nhẹ', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 3),
(19, ' Intel, Celeron, 1.10 GHz', 5990000, 0, 300, '7000', ' Linux', '5.6 inchAcer CineCrystal LED', ' 4 GB DDR3L 1333 MHz', 'Acer AS A315-31-C8GB', 'thiết kế không thay đổi, vỏ nhôm sang trọng, siêu mỏng và siêu nhẹ', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 4),
(20, ' Intel Celeron N4000', 6090000, 0, 100, '8000', 'Linux', ' 15.6 inchs HD LED Backlight', '4 GB DDR4 2133 MHz', 'Acer A315-32-C9A4 ', 'thiết kế không thay đổi, vỏ nhôm sang trọng, siêu mỏng và siêu nhẹ', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 4),
(21, ' Intel Core i3-7020U', 8990000, 0, 100, '8000', ' Linux', '14.0 inchs HD LED', '4 GB DDR4 2400 MHz', 'Acer E5-476-33BQ', 'thiết kế không thay đổi, vỏ nhôm sang trọng, siêu mỏng và siêu nhẹ', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 4),
(22, ' Intel Core i3-6006U', 8990000, 0, 50, '5000', 'Linux', '15.6 inch HD', ' 4 GB DDR4 2133MHz', 'Acer A315-51-3932/Core i3-6006U', 'thiết kế không thay đổi, vỏ nhôm sang trọng, siêu mỏng và siêu nhẹ', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 4),
(23, 'Intel Core i3-7020U', 9390000, 0, 300, '6000', 'Linux', '15.6 inchs HD LED Backlight', '4 GB DDR4 2133 MHz', 'Acer AS A315-51-325E', 'thiết kế không thay đổi, vỏ nhôm sang trọng, siêu mỏng và siêu nhẹ', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 4),
(24, ' Intel Core i3', 9990000, 0, 130, '5000', 'Linux', '15.6 inch  HD', ' 4 GB DDR4 2133 MHz', 'Acer A315-51-364W', 'thiết kế không thay đổi, vỏ nhôm sang trọng, siêu mỏng và siêu nhẹ', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 4),
(25, ' Intel, Core i3, 2.4 Ghz', 10690000, 0, 120, '5000', 'Free DOS', ' 15.6 inchFull HD', ' 4 GB, DDR4, 2133 MHz', 'Acer Aspire E5-575G-39QW', 'thiết kế không thay đổi, vỏ nhôm sang trọng, siêu mỏng và siêu nhẹ', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 4),
(26, ' Intel Core i5-8250U', 16990000, 0, 130, '6000', ' Windows 10 Home', '14.0 inchs FHD IPS LCD', ' 4 GB DDR4 2133 MHz', 'Acer Swift SF314-52-55UF', 'thiết kế không thay đổi, vỏ nhôm sang trọng, siêu mỏng và siêu nhẹ', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 4),
(27, ' Intel Pentium N3710', 6990000, 0, 110, '5000', ' Ubuntu', '15.6 inchs HD Truelife', ' 4 GB DDR3 1600 MHz', 'Dell Inspiron N3552', 'Thiết kế gọn gàng để di chuyển', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 5),
(29, 'Intel, Core i3, 2.0 GHz', 9990000, 0, 100, '6000', 'Ubuntu 16.04', '14 inchHD Anti-Glare LED', '4 GB, DDR4, 2400MHz', 'Dell Inspiron N3467', 'Thiết kế gọn gàng để di chuyển', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 5),
(30, ' Intel Core i3-6006U', 10890000, 0, 120, '7000', 'Linux', '15.6 inchs', ' 4 GB DDR4 2400 MHz', 'Dell Vostro 3568', 'Thiết kế gọn gàng để di chuyển', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 5),
(31, ' Intel, Core i3, 2.0 GHz', 11190000, 0, 90, '6000', ' Free DOS', ' 15.6 inchHD LED', ' 4 GB, DDR3L, 1600 Mhz', 'Dell Ins N3567', 'Thiết kế gọn gàng để di chuyển', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 5),
(32, ' Intel Core i3-7020U', 11590000, 0, 80, '7000', ' Ubuntu', '15.6 inch HD Anti Glare LED', '4 GB DDR4 2400 MHz', 'Dell Inspiron N3576', 'Thiết kế gọn gàng để di chuyển', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 5),
(33, 'Intel Core i3-7020U', 11890000, 0, 110, '8000', ' Windows 10 Home', '15.6 inches Anti-Glare LED', ' 4 GB DDR4 2400 MHz', 'Dell Vostro 3568', 'Thiết kế gọn gàng để di chuyển', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 5),
(34, ' Intel, Core i3, 2.40 GHz', 12490000, 0, 100, '8000', 'Free DOS', '14 inchHD Anti-Glare LED', '4 GB, DDR4, 2133 MHz', 'Dell Vostro V5468/i3', 'Thiết kế gọn gàng để di chuyển', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 5),
(35, ' Intel Celeron', 5990000, 0, 100, '5000', 'Linux', ' 15.6 inchs', ' 4 GB DDR3L 1600 MHz', 'HP 15-bs644TU/Celeron-N3060', 'Thiết kế gọn gàng để di chuyển', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 6),
(36, ' Intel Celeron N4000', 6190000, 0, 70, '7000', ' Windows 10 Home', ' 15.6 inchs HD HD SVA ', ' 4 GB DDR4 2400 MHz', 'HP 15-da0107TU/Celeron', 'Thiết kế gọn gàng để di chuyển', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 6),
(37, ' Intel Penitum N3710', 6990000, 0, 120, '8000', 'Windows 10', '15.6 inch', ' 4GB DDR4', 'HP 15-bs648TU', 'Thiết kế gọn gàng để di chuyển', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 6),
(38, ' Intel, Core i3, 2.0 GHz', 8990000, 0, 80, '8000', ' Free Dos', '15.6 inch LED-backlit', ' 4GB, DDR4, 2133 MHz', 'HP 15-bs555TU', 'Thiết kế gọn gàng để di chuyển', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 6),
(39, ' Intel, Core i3, 2.0 GHz', 10490000, 0, 90, '7000', ' Free DOS', ' 15.6 inchHD SVA BrightView', ' 4 GB, DDR4, 2133 MHz', 'HP 15-bs637TX', 'Thiết kế gọn gàng để di chuyển', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 6),
(40, ' Intel Core i3-7100U', 11490000, 0, 90, '6000', ' Free DOS', ' 15.6 inch', ' 4GB DDR4', 'HP Pavilion 15-cc043TU', 'Thiết kế gọn gàng để di chuyển', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 6),
(41, ' Intel, Core i5, 2.50 GHz', 12190000, 0, 100, '8000', 'Free DOS', '15.6 inchHD SVA BrightView', ' 4 GB, DDR4, 2133 MHz', 'HP 15-bs559TU', 'Thiết kế gọn gàng để di chuyển', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 6),
(42, ' Intel Core i3-7100U', 12990000, 0, 150, '7000', 'Windows 10 Home Single', ' 11.6 inch HD', ' 4 GB DDR4 2133 MHz', 'HP Pavilion X360 11', 'Thiết kế gọn gàng để di chuyển', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 6),
(43, 'Intel, Celeron, 1.10 GHz', 4990000, 0, 100, '6000', ' Windows 10 EM', ' 11.6 inchHD LED', ' 2 GB, LPDDR4, 2400MHz', 'Lenovo Ideapad 120S-11IAP', 'Thiết kế gọn gàng để di chuyển', '6 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 7),
(44, ' Intel, Pentium, 1.60 GHz', 5490000, 0, 120, '5000', ' Free DOS', '14 inchHD LED backlight', ' 4 GB, DDR3L, 1600 MHz', 'Lenovo IdeaPad 110', 'Thiết kế gọn gàng để di chuyển', '6 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 7),
(45, ' Intel, Pentium, 1.10 GHz', 7490000, 0, 80, '7000', ' Windows 10', ' 11.6 inchHD TN AG TOUCH', ' 4 GB, DDR3L, 1600 MHz', 'Lenovo Yoga 310-11IAP', 'Thiết kế gọn gàng để di chuyển', '6 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 7),
(46, 'Intel Core i3-6006U', 8990000, 0, 120, '7000', 'FreeDOS', ' 14.0 inchs HD LED', ' 4 GB DDR4 2133 MHz', 'Lenovo Ideapad 320-14ISK ', 'Thiết kế gọn gàng để di chuyển', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 7),
(47, 'Intel Core i5-8250U', 10990000, 0, 130, '5000', ' Windows 10 Home', ' 14.0 inchs HD LED', '4 GB DDR4 2133 MHz', 'Lenovo Ideapad 330-14IKBR', 'Thiết kế gọn gàng để di chuyển', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 7),
(48, ' Intel, Core i5, 2.50 GHz', 11290000, 0, 120, '5000', 'Linux', ' 15.6 inchFull HD', ' 4 GB, DDR4, 2133 MHz', 'Lenovo IdeaPad 310-15IKB', 'Thiết kế gọn gàng để di chuyển', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 7),
(49, ' Intel Core i5-8250U', 13490000, 0, 130, '6000', 'Linux', ' 14.0 inchs FHD IPS', '4 GB DDR4 2400 MHz', 'Lenovo Ideapad 330S-14IKBR', 'Thiết kế gọn gàng để di chuyển', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 7),
(50, ' Intel, Core i5, 2.50 GHz', 15990000, 0, 200, '7000', 'Windows 10 Single', ' 15.6 inchAnti-Glare LED', ' 4 GB, DDR4, 2133 MHz', 'Lenovo ThinkPad E570', 'Thiết kế gọn gàng để di chuyển', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 7),
(51, ' Intel, Core i5, 2.50 GHz', 18990000, 0, 300, '7000', ' Free DOS', ' 15.6 inchWide-View', '4 GB, DDR4, 2133 MHz', 'MSI GL62M 7RDX – 1036XVN', 'Sỡ hữu phong cách thiết kế truyền thống của MSI', '12 tháng', 'Lớp vỏ đen nhám được phủ cao su mềm đặc trưng đem đến trải nghiệm cầm nắm tốt hơn. Các thành phần của nắp máy bao gồm vỏ, màn hình và viền màn hình đều được ép chặt để tối ưu trọng lượng chỉ còn 2.2 kg', 1, 8),
(52, ' Intel Core i5-8250U', 20990000, 0, 120, '8000', 'Windows 10 Home', '14.0 inchs FHD IPS 72%', ' 8 GB DDR4 2666 MHz', 'MSI PS42 8M-296VN/i5-8250U', 'Sỡ hữu phong cách thiết kế truyền thống của MSI', '12 tháng', 'Lớp vỏ đen nhám được phủ cao su mềm đặc trưng đem đến trải nghiệm cầm nắm tốt hơn. Các thành phần của nắp máy bao gồm vỏ, màn hình và viền màn hình đều được ép chặt để tối ưu trọng lượng chỉ còn 2.2 kg', 1, 8),
(53, ' Intel Core i5-8300H', 21590000, 0, 130, '7000', ' Windows 10 Home', '15.6 inchs Wideview 94%NTS', '8 GB DDR4 2400MHz', 'Asus ROG Zephyrus G14 GA401QM', 'Sỡ hữu phong cách thiết kế truyền thống của MSI', '12 tháng', 'Thiết kế mặt A dạng lỗ ma trận trên nắp lưng được tạo nhờ quy trình cắt CNC chính xác với hơn 6000 lỗ nhỏ có khoảng cách hoàn hảo đã tạo nên một Asus ROG Zenphyrus G14 trở nên nổi bật nhất trong những thứ nổi bật.\r\n\r\n ', 1, 3),
(54, ' Intel Core i5-8300H', 22490000, 0, 140, '7000', 'Windows 10', '15.6 inchs FullHD IPS 45% ', ' 8 GB DDR4 2666 MHz', 'MSI GF63 8RC-203VN/I5-8300H', 'Sỡ hữu phong cách thiết kế truyền thống của MSI', '12 tháng', 'Lớp vỏ đen nhám được phủ cao su mềm đặc trưng đem đến trải nghiệm cầm nắm tốt hơn. Các thành phần của nắp máy bao gồm vỏ, màn hình và viền màn hình đều được ép chặt để tối ưu trọng lượng chỉ còn 2.2 kg', 1, 8),
(55, ' Intel, Core i7, 2.8 GHz', 23990000, 0, 150, '8000', '  DOS', '  17.3 inch', ' 8 GB, DDR4, 2400 MHz', 'MSI GL72M 7REX - 1427XVN', 'Sỡ hữu phong cách thiết kế truyền thống của MSI', '12 tháng', 'Lớp vỏ đen nhám được phủ cao su mềm đặc trưng đem đến trải nghiệm cầm nắm tốt hơn. Các thành phần của nắp máy bao gồm vỏ, màn hình và viền màn hình đều được ép chặt để tối ưu trọng lượng chỉ còn 2.2 kg', 1, 8),
(56, ' Intel, Core i7, 2.80 GHz', 24990000, 0, 110, '7000', ' Free DOS', ' 15.6 inchWide-View', ' 8 GB, DDR4, 2400MHz', 'MSI GF62 7RE-1818XVN', 'Sỡ hữu phong cách thiết kế truyền thống của MSI', '12 tháng', 'Lớp vỏ đen nhám được phủ cao su mềm đặc trưng đem đến trải nghiệm cầm nắm tốt hơn. Các thành phần của nắp máy bao gồm vỏ, màn hình và viền màn hình đều được ép chặt để tối ưu trọng lượng chỉ còn 2.2 kg', 1, 8),
(57, ' Intel Core i7-8750H', 25990000, 0, 110, '7000', 'Windows 10 Home', '15.6 inchs FullHD IPS 45%', ' 8 GB DDR4 2666 MHz', 'MSI GF63 8RD-218VN/i7-8750H', 'Sỡ hữu phong cách thiết kế truyền thống của MSI', '12 tháng', 'Lớp vỏ đen nhám được phủ cao su mềm đặc trưng đem đến trải nghiệm cầm nắm tốt hơn. Các thành phần của nắp máy bao gồm vỏ, màn hình và viền màn hình đều được ép chặt để tối ưu trọng lượng chỉ còn 2.2 kg', 1, 8),
(59, 'Intel Celeron N3350 1.10 GHz', 4990000, 0, 100, '5000', 'Windows 10', '13.3 inch FullHD IPS', '3 GB LPDDR3 1600 MHz', 'Masstel L133', 'Thiết kế gọn gàng để di chuyển', '6 tháng', 'thiết kế để giúp bạn làm việc hiệu quả suốt cả ngày dài, kể cả khi bạn đang di chuyển. Máy tính xách tay 13.3 inchs nhỏ gọn và có mức giá hợp lý, trọng lượng chỉ 1.2 Kg và thời lượng pin bền bỉ, phù hợp với những bạn trẻ năng động', 1, 9),
(60, 'Intel Celeron N3350 1.10 GHz', 5490000, 0, 100, '5000', 'Windows 10', '13.3 inch FullHD IPS', '3 GB LPDDR3 1600 MHz', ' Masstel L133/Celeron N3350', 'Thiết kế gọn gàng để di chuyển', '6 tháng', 'thiết kế để giúp bạn làm việc hiệu quả suốt cả ngày dài, kể cả khi bạn đang di chuyển. Máy tính xách tay 13.3 inchs nhỏ gọn và có mức giá hợp lý, trọng lượng chỉ 1.2 Kg và thời lượng pin bền bỉ, phù hợp với những bạn trẻ năng động', 1, 9),
(61, ' Intel Celeron N3350 1.10 GHz', 5990000, 0, 100, '4000', 'Windows 10', ' 13.3 inch FullHD IPS', ' 3 GB LPDDR3 1600 MHz', 'Masstel L133 Celeron N3350', 'Thiết kế gọn gàng để di chuyển', '6 tháng', 'thiết kế để giúp bạn làm việc hiệu quả suốt cả ngày dài, kể cả khi bạn đang di chuyển. Máy tính xách tay 13.3 inchs nhỏ gọn và có mức giá hợp lý, trọng lượng chỉ 1.2 Kg và thời lượng pin bền bỉ, phù hợp với những bạn trẻ năng động', 1, 9),
(62, 'Intel Celeron N4100', 6990000, 0, 50, '4000', 'Windows 10', '13.3 inchs FullHD IPS', '4 GB LPDDR4', 'Masstel L133 Pro/Celeron N4100', 'Thiết kế siêu mỏng nhẹ', '6 tháng', 'thiết kế để giúp bạn làm việc hiệu quả suốt cả ngày dài, kể cả khi bạn đang di chuyển. Máy tính xách tay 13.3 inchs nhỏ gọn và có mức giá hợp lý, trọng lượng chỉ 1.2 Kg và thời lượng pin bền bỉ, phù hợp với những bạn trẻ năng động', 1, 9),
(63, ' Intel Celeron N3350', 3455555, 0, 50, '5000', 'FreeDOS', '13.3 inchs IPS LCD', ' 3 GB DDR3L 1600 MHz', 'Haier S1 HR-13M/Celeron ', 'Thiết kế siêu mỏng nhẹ', '6 tháng', 'Một chiếc laptop đời mới thời trang, siêu mỏng nhẹ phục vụ tối ưu cho công việc nhưng lại trong tầm giá rất rẻ', 1, 10),
(64, ' Intel Pentium N4200', 7490000, 0, 60, '4000', 'FreeDOS', '13.3 inchs IPS LCD', ' 6 GB DDR3L 1600 MHz', 'Haier S1 HR-13MZ/Pentium N4200', 'Thiết kế siêu mỏng nhẹ', '6 tháng', 'Một chiếc laptop đời mới thời trang, siêu mỏng nhẹ phục vụ tối ưu cho công việc nhưng lại trong tầm giá rất rẻ', 1, 10),
(65, NULL, 10300999, 0, 100, NULL, NULL, NULL, NULL, 'PC Acer Aspire TC-780 DT.B89SV.012 i5 7400/4G/1TB/DVDRW/WL/K+M/Dos', NULL, '12 tháng', '-	Bộ vi xử lý Core i5-7400 (3.00GHz,6MB) \r\n-	RAM 4 GB DDR4 2133MHz UDIMM \r\n-	Ổ cứng 1TB 3.5 inch 7200rpm \r\n-	VGA Intel HD Graphics 530', 2, 4),
(66, NULL, 9800000, 0, 80, NULL, NULL, NULL, NULL, 'PC Acer Aspire XC-885 DT.BAQSV.001 i3 8100/4G/1TB/DVDRW/WL/K+M/Dos', NULL, '6 tháng', '-	Bộ vi xử lý : Intel Core i5-7400 (3.00 GHz/6MB) \r\n-	RAM : 4 GB DDR4 2400 MHz \r\n-	Ổ cứng : 1TB SATA 3.5\" 7200RPM \r\n-	VGA : Nvidia GT720 2GB Graphics', 2, 4),
(67, NULL, 90, 0, 90, NULL, NULL, NULL, NULL, 'PC Acer Aspire TC-780 DT.B89SV.009 G4560/4G/1TB/DVDRW/WL/K+M/Dos', NULL, '6 tháng', '-	Bộ vi xử lý Pentium G4560(3.50 GHz,3MB) \r\n-	RAM 4 GB DDR4 2133MHz UDIMM \r\n-	Ổ cứng 1TB 3.5 inch 7200rpm \r\n-	VGA Intel HD Graphics', 2, 4),
(68, NULL, 190, 0, 100, NULL, NULL, NULL, NULL, 'PC Acer Aspire TC-780 DT.B89SV.008 i3 7100/4G/1TB/DVDRW/WL/K+M/Dos', NULL, '6 tháng', '-	Bộ vi xử lý Core i3-7100 (3.90 GHz,3MB) \r\n-	RAM 4 GB DDR4 2133MHz UDIMM \r\n-	Ổ cứng 1TB 3.5 inch 7200rpm \r\n-	VGA Intel HD Graphics', 2, 4),
(69, NULL, 10067840, 0, 90, NULL, NULL, NULL, NULL, 'PC Acer Aspire M230 UX.B1JSI.H72 i3 7100/4G/1TB/DVDRW/WL/K+M/Dos', NULL, ' 6 tháng', 'CPU i3-7100 \r\nRAM 4GB \r\nHDD 1TB', 2, 4),
(70, NULL, 19000345, 0, 90, NULL, NULL, NULL, NULL, 'PC Acer Aspire XC-885 DT.BAQSV.002 i5 8400/4G/1TB/DVDRW/WL/K+M/Dos', NULL, '6 tháng', 'CPU i5-8400(6*2.80) \r\nRAM 4G \r\nHDD 1TB \r\nDOS', 2, 4),
(71, NULL, 10000012, 0, 300, NULL, NULL, NULL, NULL, 'PC Dell Optilex 3060SFF-8400-1TBKHDD i5 8400/4GB/1TB/DVDRW/K+M/DOS', NULL, '6 tháng', 'PC Dell Optilex 3060SFF-8400-1TBKHDD i5 8400/4GB/1TB/DVDRW/K+M/DOS\r\n', 2, 5),
(72, NULL, 15000500, 0, 200, NULL, NULL, NULL, NULL, 'PC Dell Vostro 3670 J84NJ2 i7 8700/8GB/1TB/DVDRW/K+M/WL/DOS', NULL, '6 tháng', 'Intel Core i5-8400 Processor (9MB, 6T, 2.8GHz, up to 4.0, 65W) \r\nHDD 1TB 7200 rpm SATA \r\n4GB 2666 MHz DDR4', 2, 5),
(73, NULL, 13000000, 0, 100, NULL, NULL, NULL, NULL, 'PC Dell Vostro 3670 J84NJ21 i7 8700/8GB/1TB/GTX1050 2G/DVDRW/K+M/WL/DOS', NULL, '6 tháng', 'Sức mạnh xử lý: Đảm đương khối lượng công việc của bạn một cách nhanh chóng và hiệu quả với bộ vi xử lý i7-8700 thế hệ thứ 8, bộ nhớ lên đến 8GB DDR4, và card đồ họa GTX 1050. \r\nMở rộng dễ dàng: 1TB dung lượng lưu trữ HDD ', 2, 5),
(74, NULL, 12000000, 0, 50, NULL, NULL, NULL, NULL, 'PC Dell Vostro 3670 MTI79016 i7 8700/8G/1TB/GTX1050 2G/DVDRW/K+M/WL/DOS', NULL, '6 tháng', 'Sức mạnh xử lý: Đảm đương khối lượng công việc của bạn một cách nhanh chóng và hiệu quả với bộ vi xử lý i7-8700 thế hệ thứ 8, bộ nhớ lên đến 8GB DDR4, và card đồ họa GTX 1050. \r\nMở rộng dễ dàng: 1TB dung lượng lưu trữ HDD', 2, 5),
(75, NULL, 12000000, 0, 70, NULL, NULL, NULL, NULL, 'PC Dell Optilex 3050SFF-7500-1TBKHDD i5 7500/4GB/1TB/DVDRW/K+M/DOS', NULL, '6 tháng', 'Intel Core i5-7500 Processor (6MB, 4T, 3.4GHz, 65W) \r\nHDD 1TB 7200 rpm SATA \r\n4GB 2400MHz DDR4', 2, 5),
(76, NULL, 12500600, 0, 70, NULL, NULL, NULL, NULL, 'PC Dell All in One 3277B Pentium 4415U/4GB/1TB/21.5\" FHD/K+M/WL/Win10', NULL, '6 tháng', 'Intel Pentium 4415U (2.30GHz, 3MB), \r\n4GB DDR4 2400MHz, \r\nHDD 1TB, Intel HD Graphics 620 , \r\n21.5 inch Full HD IPS LED Backlit \r\nWin 10', 2, 5),
(77, NULL, 13400000, 0, 100, NULL, NULL, NULL, NULL, 'PC HP Pavilion 590-p0055d 4LY13AA i5 8400/4GB/1TB/DVDRW/K+M/Win10', NULL, '6 tháng', 'Bộ Vi xử lý: Core i5-8400(2.80 GHz,9MB) \r\nRAM: 4GB DDR4 \r\nỔ cứng: 1TB HDD \r\nHệ điều hành: Win 10 Home 64', 2, 6),
(78, NULL, 12000670, 0, 100, NULL, NULL, NULL, NULL, 'PC HP 280 G4 MT i7 8700/8GB/1TB/DVDRW/K+M/DOS ( 4LU27PA )', NULL, '6 tháng', 'Máy tính để bàn HP 280 G4 Microtower - 4LU27PA \r\nBộ vi xử lý Core i7-8700(3.20 GHz,12MB) \r\n8GB RAM DDR4, 1TB HDD, DVDRW \r\nĐồ họa Intel UHD Graphics, Keyboard, USB Mouse,FreeDos', 2, 6),
(79, NULL, 12000500, 0, 70, NULL, NULL, NULL, NULL, 'PC HP ProDesk 400 G5 SFF i5 8500/4GB/500GB/DVDRW/K+M/DOS ( 4TT16PA )', NULL, '6 tháng', 'PC HP ProDesk 400 G5 SFF - 4TT16PA \r\nBộ vi xử lý Intel Core i5 8500 3.0Ghz \r\nRAM 4GB / 500GB / DVDRW', 2, 6),
(80, NULL, 14500500, 0, 80, NULL, NULL, NULL, NULL, 'PC HP 280 G4 MT 4LU29PA i3 8100/4GB/1TB/DVDRW/K+M/DOS', NULL, '6 tháng', 'Máy tính để bàn HP 280 G4 Microtower - 4LU29PA \r\nBộ vi xử lý Intel Core i3-8100(3.60 GHz,6MB) \r\n4GB RAM DDR4, 1TB HDD, DVDRW \r\nIntel UHD Graphics, Keyboard, USB Mouse, FreeDos', 2, 6),
(81, NULL, 11600000, 0, 90, NULL, NULL, NULL, NULL, 'PC HP 270-p010d i5 7400T/4GB/1TB/AMD R5 435 2GB/DVDRW/K+M/WL/Win10 (3JT58AA )', NULL, '6 tháng', 'Máy tính để bàn HP 280 G4 Microtower - 4LU29PA \r\nBộ vi xử lý Intel Core i3-8100(3.60 GHz,6MB) \r\n4GB RAM DDR4, 1TB HDD, DVDRW \r\nIntel UHD Graphics, Keyboard, USB Mouse, FreeDos', 2, 6),
(82, NULL, 13500000, 0, 80, NULL, NULL, NULL, NULL, 'PC Lenovo ThinkCentre V520 10NKA00EVA i3 7100/4GB/1TB/DVDRW/K+M/Dos', NULL, '6 tháng', 'PC Lenovo V530S - 10TXA001VA \r\nBộ vi xử lý Intel Celeron G4900 3.1Ghz \r\nRAM 4GB/ HDD 500GB/ K+M/ WL/ DOS', 2, 7),
(83, NULL, 12700500, 0, 70, NULL, NULL, NULL, NULL, 'PC Lenovo IdeaCentre 510s-08IKL 90GB00EVVN i3 7100/4GB/1TB/DVDRW/WL/K+M/Win10', NULL, '6 tháng', '-	Bộ vi xử lý : Intel Core i3-7100 Processor (2 x 3.90GHz) \r\n-	RAM : 4GB DDR4/ 2400MHz \r\n-	Ổ cứng : 1TB SATA3 (7200rpm) \r\n-	VGA : Intel HD Graphics 630', 2, 7),
(84, NULL, 10400000, 0, 90, NULL, NULL, NULL, NULL, 'PC Lenovo ThinkCentre V520 10NKA00DVA G4560 /4GB/500GB/DVDRW/K+M/Dos', NULL, '6 tháng', 'Bộ vi xử lý	Intel G4560 \r\nChipset	Intel B250 Chipset \r\nBộ nhớ trong	4GB DDR4 \r\nSố khe cắm	2 \r\nDung lượng tối đa	32GB \r\nVGA	Intel® HD 610 \r\nỔ cứng	500GB 7200RPM \r\nỔ quang	DVDRW', 2, 7),
(85, NULL, 15000000, 0, 80, NULL, NULL, NULL, NULL, 'PC Lenovo ThinkCentre V520 10NKA00TVA i7 7700/4GB/1TB/DVDRW/K+M/Dos', NULL, '6 tháng', 'CPU i7-7700(3.6GHz/8MB) \r\nRAM 4GB DDR4 \r\nHDD 1TB 7200RPM, \r\nDVDRW, \r\nUSB Calliope Keyboard,USB Mouse', 2, 7),
(86, NULL, 10500000, 0, 90, NULL, NULL, NULL, NULL, 'PC Lenovo IdeaCentre 510-15IKL 90G800HEVN Pentium G4560/4GB/1TB/DVDRW/WL/K+M/Win10', NULL, '6 tháng', '-	Bộ vi xử lý: Intel Core i3-7100 ( 3.90 GHz / 3MB cache ) \r\n-	RAM: 4GB DDR4 2400UDIMM \r\n-	Ổ cứng: 1TB SATA 7200RPM \r\n-	VGA: Intel® HD Graphics 630', 2, 7),
(87, NULL, 10500000, 0, 90, NULL, NULL, NULL, NULL, 'PC Lenovo V530S-07ICB i3 8100/4GB/1TB/K+M/WL/Win10 ( 10TXA000VN )', NULL, '6 tháng', 'PC Lenovo V530S-07ICB - 10TXA000VN \r\nBộ vi xử lý Intel Core i3 8100 3.6Ghz \r\nRAM 4GB/ HDD 1TB/ K+M/ WL/ Win10', 2, 7),
(88, NULL, 124000000, 0, 80, NULL, NULL, NULL, NULL, 'PC Lenovo ThinkCentre V520 10NKA00TVA i7 7700/4GB/1TB/DVDRW/K+M/Dos', NULL, '6 tháng', 'CPU i7-7700(3.6GHz/8MB) \r\nRAM 4GB DDR4 \r\nHDD 1TB 7200RPM, \r\nDVDRW, \r\nUSB Calliope Keyboard,USB Mouse', 2, 7),
(89, NULL, 2800500, 0, 100, NULL, NULL, NULL, NULL, 'Tai nghe ASUS ROG Strix Fusion 300 Surround 7.1', NULL, '6 tháng', 'Tai nghe chơi game cao cấp từ ASUS ROG \r\nMàng loa dài 50mm \r\nGiả lập âm thanh vòm 7.1 \r\nThiết kế trùm tai cho độ thoải mái tối đa \r\nHệ thống Led màu đỏ nổi bật \r\nCó thể sử dụng 3,5mm và USB linh hoạt', 3, 3),
(90, NULL, 3200000, 0, 120, NULL, NULL, NULL, NULL, 'Tai nghe ASUS ROG Strix Fusion Wireless', NULL, '6 tháng', 'Tai nghe chơi game cao cấp từ ASUS ROG \r\nMàng loa dài 50mm \r\nGiả lập âm thanh vòm 7.1 \r\nThiết kế trùm tai cho độ thoải mái tối đa \r\nKết nối không dây No-Lag qua USB Receiver', 3, 3),
(91, NULL, 10000000, 0, 90, NULL, NULL, NULL, NULL, 'Tai nghe ASUS ROG Strix Fusion 500', NULL, '6 tháng', 'Tai nghe chơi game cao cấp từ ASUS ROG \r\nMàng loa dài 50mm \r\nGiả lập âm thanh vòm 7.1 \r\nThiết kế trùm tai cho độ thoải mái tối đa \r\nHệ thống Led RGB 16,8 triệu màu \r\nCó thể sử dụng 3,5mm và USB linh hoạt \r\nĐiều chỉnh qua bề mặt cảm ứng của củ tai', 3, 3),
(92, NULL, 4200123, 0, 100, NULL, NULL, NULL, NULL, 'Tai nghe Asus STRIX 2.0- ROG Gaming Headset', NULL, '6 tháng', 'Tai nghe chơi game cao cấp từ ASUS ROG \r\nMàng loa dài 50mm \r\nGiả lập âm thanh vòm 7.1 \r\nThiết kế trùm tai cho độ thoải mái tối đa \r\nHệ thống Led RGB 16,8 triệu màu \r\nCó thể sử dụng 3,5mm và USB linh hoạt \r\nĐiều chỉnh qua bề mặt cảm ứng của củ tai', 3, 3),
(93, NULL, 3200000, 0, 50, NULL, NULL, NULL, NULL, 'Tai nghe Asus Centurion - ROG Gaming Headset', NULL, '6 tháng', 'Tai nghe chơi game cao cấp từ ASUS ROG \r\nMàng loa dài 50mm \r\nGiả lập âm thanh vòm 7.1 \r\nThiết kế trùm tai cho độ thoải mái tối đa \r\nKết nối không dây No-Lag qua USB Receiver', 3, 3),
(94, NULL, 1002356, 0, 60, NULL, NULL, NULL, NULL, 'Tai Nghe Asus CERBERUS V2 - Red / Black', NULL, '6 tháng', 'Tai nghe chơi game cao cấp từ ASUS ROG \r\nMàng loa dài 50mm \r\nGiả lập âm thanh vòm 7.1 \r\nThiết kế trùm tai cho độ thoải mái tối đa \r\nKết nối không dây No-Lag qua USB Receiver', 3, 3),
(95, NULL, 2500000, 0, 70, NULL, NULL, NULL, NULL, 'Tai nghe Asus Gaming Asus Strix Pro', NULL, '6 tháng', 'Tai nghe chơi game cao cấp từ ASUS ROG \r\nMàng loa dài 50mm \r\nGiả lập âm thanh vòm 7.1 \r\nThiết kế trùm tai cho độ thoải mái tối đa \r\nKết nối không dây No-Lag qua USB Receiver', 3, 3),
(96, NULL, 3000000, 0, 100, NULL, NULL, NULL, NULL, 'Tai nghe Asus gaming ROG Strix Wireless', NULL, '6 tháng', 'Tai nghe chơi game cao cấp từ ASUS ROG \r\nMàng loa dài 50mm \r\nGiả lập âm thanh vòm 7.1 \r\nThiết kế trùm tai cho độ thoải mái tối đa \r\nKết nối không dây No-Lag qua USB Receiver', 3, 3),
(97, NULL, 43000000, 0, 100, NULL, NULL, NULL, NULL, 'Màn hình Acer Nitro 23.8\"VG240Y LED IPS', NULL, '6 tháng', 'Kích Thước Màn Hình	23.8 INCH \r\nĐộ Sáng Màn Hình	250 cd/m² \r\nTỉ Lệ Tương Phản Động MEGA	100,000,000:1 \r\nĐộ Phân Giải Màn Hình	1920*1080 \r\nThời Gian Đáp Ứng	1ms \r\nHỗ trợ màu	16.7 million colours \r\nGóc nhìn	178/178', 4, 4),
(98, NULL, 50000000, 0, 200, NULL, NULL, NULL, NULL, 'Monitor Acer 21.5\"R221Q LED IPS', NULL, '6 tháng', 'Kích Thước Màn Hình	23.8 INCH \r\nĐộ Sáng Màn Hình	250 cd/m² \r\nTỉ Lệ Tương Phản Động MEGA	100,000,000:1 \r\nĐộ Phân Giải Màn Hình	1920*1080 \r\nThời Gian Đáp Ứng	1ms \r\nHỗ trợ màu	16.7 million colours \r\nGóc nhìn	178/178', 4, 4),
(99, NULL, 5200000, 0, 100, NULL, NULL, NULL, NULL, 'Màn hình Acer 19.5\"K202HQL LED', NULL, '6 tháng', 'Kích Thước Màn Hình	27\'\' \r\nĐộ Sáng Màn Hình	350 cd/m² \r\nĐộ Phân Giải Màn Hình	2560 x 1440 \r\nThời Gian Đáp Ứng	1ms \r\nHỗ trợ màu	16,7 Triệu Màu \r\nGóc nhìn	178°/178° \r\nTín hiệu đầu vào	HDMI, DP \r\nMức Tiêu Thụ̣ Điện	26W', 4, 4),
(100, NULL, 2000000, 0, 100, NULL, NULL, NULL, NULL, 'Màn hình Acer Nitro 27\"VG270 LED IPS', NULL, '6 tháng', 'Size	27” \r\nĐộ phân giải	Full HD (1920 x 1080) \r\nTỷ lệ khung hình	16:9 \r\nThời gian đáp ứng: 1 ms \r\nRefresh Rate	75 Hz \r\nHỗ trợ màu	16.7 million \r\nĐộ sáng	250 cd/m² \r\nBacklight	LED', 4, 4),
(101, NULL, 1200000, 0, 12, NULL, NULL, NULL, NULL, ' Acer 18.5\"EB192Q LED', NULL, '6 tháng', 'Kích Thước Màn Hình	23.8 INCH \r\nĐộ Sáng Màn Hình	250 cd/m² \r\nTỉ Lệ Tương Phản Động MEGA	100,000,000:1 \r\nĐộ Phân Giải Màn Hình	1920*1080 \r\nThời Gian Đáp Ứng	1ms \r\nHỗ trợ màu	16.7 million colours \r\nGóc nhìn	178/178', 4, 4),
(102, NULL, 12000000, 0, 123, NULL, NULL, NULL, NULL, 'Màn hình Acer 27\"KG271 LED IPS', NULL, '6 tháng', 'Kích Thước Màn Hình	23.8 INCH \r\nĐộ Sáng Màn Hình	250 cd/m² \r\nTỉ Lệ Tương Phản Động MEGA	100,000,000:1 \r\nĐộ Phân Giải Màn Hình	1920*1080 \r\nThời Gian Đáp Ứng	1ms \r\nHỗ trợ màu	16.7 million colours \r\nGóc nhìn	178/178', 4, 4),
(103, NULL, 300000, 0, 123, NULL, NULL, NULL, NULL, 'Bàn Phím Asus ROG Claymore Ultimate RGB Aura Sync Cherry Red switch', NULL, '6 tháng', 'Bàn Phím Asus ROG Claymore Ultimate RGB Aura Sync Cherry Red switch', 4, 3),
(104, NULL, 4000000, 0, 123, NULL, NULL, NULL, NULL, 'Keyboard ASUS ROG Strix Flare Cherry Blue switch', NULL, '6 tháng', 'Keyboard ASUS ROG Strix Flare Cherry Blue switch', 4, 3),
(105, NULL, 5432584, 0, 123, NULL, NULL, NULL, NULL, 'Keyboard ASUS Strix Tactic Pro Mechanical Blue', NULL, '6 tháng', 'Keyboard ASUS Strix Tactic Pro Mechanical Blue', 4, 3),
(106, NULL, 1200000, 0, 123, NULL, NULL, NULL, NULL, 'Mouse ASUS ROG Strix Impact', NULL, '2 tháng', 'Mouse ASUS ROG Strix Impact', 4, 3),
(107, NULL, 100000, 0, 123, NULL, NULL, NULL, NULL, 'Mouse ASUS ROG Gladius II', NULL, '2 tháng', 'Chuột chơi game cho game thủ chuyên nghiệp của Asus ROG \r\nHệ thống led RGB tích hợp công nghệ Aura Sync với Mainboard và VGA \r\nThiết kế Ergonomics phù hợp với kiểu cầm chuột Palm Grip và Claw Grip \r\n', 4, 3),
(108, NULL, 3000000, 0, 123, NULL, NULL, NULL, NULL, 'Mouse Asus ROG Spatha - Super MMO Gaming Mouse', NULL, '2 tháng', 'Mouse Asus ROG Spatha - Super MMO Gaming Mouse\r\n', 4, 3),
(109, NULL, 200000, 0, 1000, NULL, NULL, NULL, NULL, 'MicroSDHC SILICON POWER UHS-I 32GB W/A', NULL, '2 tháng', 'MicroSDHC SILICON POWER UHS-I 32GB W/A', 5, 2),
(110, NULL, 30000, 0, 100, NULL, NULL, NULL, NULL, 'HDD Western Caviar Black 500GB 7200Rpm, SATA3 6Gb/s, 64MB Cache', NULL, '2 tháng', 'HDD Western Caviar Black 500GB 7200Rpm, SATA3 6Gb/s, 64MB Cache\r\n', 5, 2),
(111, NULL, 1230000, 0, 100, NULL, NULL, NULL, NULL, 'SSD Kingston Furry RGB 240GB Sata3 2.5\" (Doc 550MB/s, Ghi 480MB/s) - SHFR200/240G', NULL, '2 tháng', 'SSD Kingston Furry RGB 240GB Sata3 2.5\" (Doc 550MB/s, Ghi 480MB/s) - SHFR200/240G', 5, 3),
(112, NULL, 1230000, 0, 1000, NULL, NULL, NULL, NULL, 'SSD AVEXIR S100 White 120GB SATA3 6Gb/s 2.5\" (Read 550MB/s, Write 275MB/s)', NULL, '2 tháng', 'SSD AVEXIR S100 White 120GB SATA3 6Gb/s 2.5\" (Read 550MB/s, Write 275MB/s)', 5, 2),
(113, NULL, 1200000, 0, 100, NULL, NULL, NULL, NULL, 'Handy Kingston 32GB DATA TRAVELER DT SWIVL USB 3.0', NULL, '2 tháng', 'Handy Kingston 32GB DATA TRAVELER DT SWIVL USB 3.0', 5, 2),
(114, NULL, 100000, 0, 100, NULL, NULL, NULL, NULL, 'Handy Kingston 16GB DATA TRAVELER DT SWIVL USB 3', NULL, '2 tháng', 'Handy Kingston 16GB DATA TRAVELER DT SWIVL USB 3', 5, 2),
(115, NULL, 1200000, 0, 123, NULL, NULL, NULL, NULL, 'USB3.0 SILICON POWER Marvel M50 16GB', NULL, '2 tháng', 'USB3.0 SILICON POWER Marvel M50 16GB', 5, 2),
(116, NULL, 3000000, 0, 100, NULL, NULL, NULL, NULL, 'Router ASUS RT-N14UHP N300 3-in-1 Wi-Fi Router / Access Point / Repeater', NULL, '2 tháng', 'Router ASUS RT-N14UHP N300 3-in-1 Wi-Fi Router / Access Point / Repeater', 6, 3),
(117, NULL, 1200000, 0, 100, NULL, NULL, NULL, NULL, 'Router ASUS RT-N12+ 3-in-1 Router/AP/Range', NULL, '2 tháng', 'Router ASUS RT-N12+ 3-in-1 Router/AP/Range\r\n', 6, 3),
(118, NULL, 100000, 0, 100, NULL, NULL, NULL, NULL, 'Router ASUS RT-N12HP (Black Diamond) N300 3-in-1 Wi-Fi Router / Access Point / Repeater', NULL, '2 tháng', 'Router ASUS RT-N12HP (Black Diamond) N300 3-in-1 Wi-Fi Router / Access Point / Repeater', 6, 3),
(119, NULL, 1000000, 0, 100, NULL, NULL, NULL, NULL, 'Router ASUS RT-AC86U', NULL, '2 tháng', 'Router ASUS RT-AC86U', 6, 3),
(120, NULL, 100000, 0, 100, NULL, NULL, NULL, NULL, 'Router ASUS RT-A1300UHP', NULL, '2 tháng', 'Router ASUS RT-A1300UHP', 6, 3),
(121, NULL, 200000, 0, 100, NULL, NULL, NULL, NULL, 'Router ASUS RT-AC68U', NULL, '2 tháng', 'Router ASUS RT-AC68U', 6, 3),
(122, NULL, 230000, 0, 100, NULL, NULL, NULL, NULL, 'Router ASUS RT-AC58U', NULL, '2 tháng', 'Router ASUS RT-AC58U', 6, 3),
(123, NULL, 1299999, 0, 100, NULL, NULL, NULL, NULL, 'Router ASUS RT-AC53', NULL, '2 tháng', 'Router ASUS RT-AC53', 6, 3),
(124, NULL, 120000, 0, 100, NULL, NULL, NULL, NULL, 'Camera Thân IP HikVision DS-2CD1023G0-I H265+', NULL, '2 tháng', 'Camera Thân IP HikVision DS-2CD1023G0-I H265+', 7, 2),
(125, NULL, 12000000, 0, 100, NULL, NULL, NULL, NULL, 'Camera IP Hikvision Dome HIK -HDIP2820FH 2.0M', NULL, '2 tháng', 'Camera IP Hikvision Dome HIK -HDIP2820FH 2.0M', 7, 2),
(126, NULL, 1200000, 0, 100, NULL, NULL, NULL, NULL, 'Camera Vantech FullHD HD-SDI VP-120HD', NULL, '2 tháng', 'Camera Vantech FullHD HD-SDI VP-120HD', 7, 2),
(127, NULL, 123000, 0, 100, NULL, NULL, NULL, NULL, 'Camera Dome Vantech VP- 4224T VT 1230', NULL, '2 tháng', 'Camera Dome Vantech VP- 4224T', 7, 2),
(128, NULL, 120000, 0, 100, NULL, NULL, NULL, NULL, 'Camera Thân TVI HikVision DS-2CE16C0T-IRP', NULL, '2 tháng', 'Camera Thân TVI HikVision DS-2CE16C0T-IRP', 7, 2),
(129, NULL, 120000, 0, 100, NULL, NULL, NULL, NULL, 'Camera Thân TVI HikVision DS-2CE16C0T-IRP', NULL, '2 tháng', 'Camera Thân TVI HikVision DS-2CE16C0T-IRP', 7, 2),
(130, NULL, 120000, 0, 100, NULL, NULL, NULL, NULL, 'Camera IP Vantech quay quét VT-6300C', NULL, '2 tháng', 'Camera IP Vantech quay quét VT-6300C', 7, 2),
(131, NULL, 100000, 0, 100, NULL, NULL, NULL, NULL, 'Camera IP Thân Hikvision DS-2CD2055FWD-I   H.265+', NULL, '2 tháng', 'Camera IP Thân Hikvision DS-2CD2055FWD-I   H.265+', 7, 3),
(132, NULL, 123000, 0, 100, NULL, NULL, NULL, NULL, 'Mouse Pad Madcatz G.L.I.D.E.7', NULL, '2 tháng', 'Mouse Pad Madcatz G.L.I.D.E.7', 8, 3),
(133, NULL, 120, 0, 100, NULL, NULL, NULL, NULL, 'Đế Làm Mát Laptop Cooling pad N99', NULL, '2 tháng', 'Đế Làm Mát Laptop Cooling pad N99', 8, 2),
(134, NULL, 123000, 0, 100, NULL, NULL, NULL, NULL, 'Mouse Pad Razer Goliathus SKT T1 Edition', NULL, '2 tháng', 'Mouse Pad Razer Goliathus SKT T1 Edition - Soft Gaming Mouse Mat - Medium - Speed  (355mm x 254mm)', 8, 4),
(135, NULL, 120000, 0, 100, NULL, NULL, NULL, NULL, 'Mouse Pad Razer Goliathus Medium 2014 (250x300mm)', NULL, '2 tháng', 'Mouse Pad Razer Goliathus Medium 2014 (250x300mm)', 8, 6),
(136, NULL, 120000, 0, 100, NULL, NULL, NULL, NULL, 'Cable HDMI 15m Vention', NULL, '1 tháng', 'Cable HDMI 15m Vention version 1.4', 9, 2),
(137, NULL, 120000, 0, 100, NULL, NULL, NULL, NULL, 'Cable HDMI dẹt 1.5m Vention ', NULL, '1 tháng', 'Cable HDMI dẹt 1.5m Vention version 1.4', 9, 3),
(138, NULL, 1500000, 0, 100, NULL, NULL, NULL, NULL, 'Cable màn hình VGA ', NULL, '1 tháng', 'Cable màn hình VGA 1m -1.5m (Từ cổng 15 đực sang 15 đực)', 9, 5),
(139, NULL, 120000, 0, 100, NULL, NULL, NULL, NULL, 'Cable HDMI dẹt 10m Vention version 1.4', NULL, '2 tháng', 'Cable HDMI dẹt 10m Vention version 1.4', 9, 5),
(140, NULL, 100000, 0, 100, NULL, NULL, NULL, NULL, 'Bộ chuyển đổi HDMI sang VGA', NULL, '1 tháng', 'Bộ chuyển đổi HDMI sang VGA( có Audio) Vention Black Metal Type', 9, 5),
(141, NULL, 100000, 0, 100, NULL, NULL, NULL, NULL, 'Cáp chuyển HDMI sang VGA ', NULL, '3 tháng', 'Cáp chuyển HDMI sang VGA Hỗ trợ Full HD DHTV-C20 Orico', 9, 5),
(142, NULL, 140000, 0, 100, NULL, NULL, NULL, NULL, 'Cable HDMI 1.5m', NULL, '2 tháng', 'Cable HDMI 1.5m Version 2.0 hỗ trợ 4K 60Mhz', 9, 3),
(143, NULL, 1000000, 0, 100, NULL, NULL, NULL, NULL, 'Cáp chuyển TypeC ', NULL, '2 tháng', 'Cáp chuyển TypeC sang 5 cổng HDMI/TypeC/2*USB 3.0 RCH3A-GD Orico', 9, 6),
(145, 'Intel Core i5 1135G7', 21000000, 0, 50, '9000', 'win11', '15.6 inch', '8GB', 'Dell Inspiron 3511', 'Nhỏ gọn dễ mang theo', '13 tháng', 'Màu đen đẹp phù hợp mọi lứa tuổi', 1, 5),
(146, NULL, 200, 0, 5, NULL, NULL, NULL, NULL, 'Chuột máy tính HP M100 Gaming Mouse', NULL, '3 tháng', 'Thiết kế tiện dụng, vừa vặn với lòng bàn tay mang lại cảm giác thoải mái khi sử dụng thời gian dài.\r\nSử dụng cho game, đồ họa, thiết kế, văn phòng ..v.v...', 4, 2),
(147, NULL, 11092, 0, 3, NULL, NULL, NULL, NULL, 'Bộ Định Tuyến TP-Link Archer AX10 AX1500 Wi-Fi 6 Router', NULL, '18 tháng', 'Wi-Fi 6 Technology (Công Nghệ Wi-Fi 6) - Archer AX10 được trang bị công nghệ không dây mới nhất, Wi-Fi 6, cho tốc độ nhanh hơn, dung lượng lớn hơn và giảm tắc nghẽn mạng.', 6, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vai_tro`
--

CREATE TABLE `vai_tro` (
  `id` bigint(20) NOT NULL,
  `ten_vai_tro` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `vai_tro`
--

INSERT INTO `vai_tro` (`id`, `ten_vai_tro`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_MEMBER'),
(3, 'ROLE_SHIPPER');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chi_muc_gio_hang`
--
ALTER TABLE `chi_muc_gio_hang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK49lmmclnjgb7eck20lwhv0cks` (`ma_gio_hang`),
  ADD KEY `FKkd69a7wiulr4xgohxl0rlhth4` (`ma_san_pham`);

--
-- Chỉ mục cho bảng `chi_tiet_don_hang`
--
ALTER TABLE `chi_tiet_don_hang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK9wl3houbukbxpixsut6uvojhy` (`ma_don_hang`),
  ADD KEY `FK3ry84nmdxgoarx53qjxd671tk` (`ma_san_pham`);

--
-- Chỉ mục cho bảng `danh_muc`
--
ALTER TABLE `danh_muc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKnwjiboxao1uvw1siemkvs1jb9` (`ma_nguoi_dat`),
  ADD KEY `FKgndcrlvetoudr3jaif9b7ay37` (`ma_shipper`);

--
-- Chỉ mục cho bảng `gio_hang`
--
ALTER TABLE `gio_hang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKitverect56puwr47y7tyvy6er` (`ma_nguoi_dung`);

--
-- Chỉ mục cho bảng `hang_san_xuat`
--
ALTER TABLE `hang_san_xuat`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK6jm47uh7f94pc3wix0duvedde` (`ma_nguoi_tra_loi`);

--
-- Chỉ mục cho bảng `nguoidung_vaitro`
--
ALTER TABLE `nguoidung_vaitro`
  ADD PRIMARY KEY (`ma_nguoi_dung`,`ma_vai_tro`),
  ADD KEY `FKig6jxd861mqv02a8pn68r43fr` (`ma_vai_tro`);

--
-- Chỉ mục cho bảng `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKqss6n6gtx6lhb7flcka9un18t` (`ma_danh_muc`),
  ADD KEY `FKchvjvgjnq8lbt9mjtyfn5pksq` (`ma_hang_sx`);

--
-- Chỉ mục cho bảng `vai_tro`
--
ALTER TABLE `vai_tro`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chi_muc_gio_hang`
--
ALTER TABLE `chi_muc_gio_hang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `chi_tiet_don_hang`
--
ALTER TABLE `chi_tiet_don_hang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `danh_muc`
--
ALTER TABLE `danh_muc`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `gio_hang`
--
ALTER TABLE `gio_hang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `hang_san_xuat`
--
ALTER TABLE `hang_san_xuat`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT cho bảng `vai_tro`
--
ALTER TABLE `vai_tro`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chi_muc_gio_hang`
--
ALTER TABLE `chi_muc_gio_hang`
  ADD CONSTRAINT `FK49lmmclnjgb7eck20lwhv0cks` FOREIGN KEY (`ma_gio_hang`) REFERENCES `gio_hang` (`id`),
  ADD CONSTRAINT `FKkd69a7wiulr4xgohxl0rlhth4` FOREIGN KEY (`ma_san_pham`) REFERENCES `san_pham` (`id`);

--
-- Các ràng buộc cho bảng `chi_tiet_don_hang`
--
ALTER TABLE `chi_tiet_don_hang`
  ADD CONSTRAINT `FK3ry84nmdxgoarx53qjxd671tk` FOREIGN KEY (`ma_san_pham`) REFERENCES `san_pham` (`id`),
  ADD CONSTRAINT `FK9wl3houbukbxpixsut6uvojhy` FOREIGN KEY (`ma_don_hang`) REFERENCES `don_hang` (`id`);

--
-- Các ràng buộc cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  ADD CONSTRAINT `FKgndcrlvetoudr3jaif9b7ay37` FOREIGN KEY (`ma_shipper`) REFERENCES `nguoi_dung` (`id`),
  ADD CONSTRAINT `FKnwjiboxao1uvw1siemkvs1jb9` FOREIGN KEY (`ma_nguoi_dat`) REFERENCES `nguoi_dung` (`id`);

--
-- Các ràng buộc cho bảng `gio_hang`
--
ALTER TABLE `gio_hang`
  ADD CONSTRAINT `FKitverect56puwr47y7tyvy6er` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`id`);

--
-- Các ràng buộc cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  ADD CONSTRAINT `FK6jm47uh7f94pc3wix0duvedde` FOREIGN KEY (`ma_nguoi_tra_loi`) REFERENCES `nguoi_dung` (`id`);

--
-- Các ràng buộc cho bảng `nguoidung_vaitro`
--
ALTER TABLE `nguoidung_vaitro`
  ADD CONSTRAINT `FKig6jxd861mqv02a8pn68r43fr` FOREIGN KEY (`ma_vai_tro`) REFERENCES `vai_tro` (`id`),
  ADD CONSTRAINT `FKocavcnspu1wcvp2w0s4usfgbf` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`id`);

--
-- Các ràng buộc cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD CONSTRAINT `FKchvjvgjnq8lbt9mjtyfn5pksq` FOREIGN KEY (`ma_hang_sx`) REFERENCES `hang_san_xuat` (`id`),
  ADD CONSTRAINT `FKqss6n6gtx6lhb7flcka9un18t` FOREIGN KEY (`ma_danh_muc`) REFERENCES `danh_muc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
