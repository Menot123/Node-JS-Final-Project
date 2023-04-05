-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2023 at 11:32 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `l2dbt_cinema`
--

-- --------------------------------------------------------

--
-- Table structure for table `combo`
--

CREATE TABLE `combo` (
  `macombo` char(30) NOT NULL,
  `giatien` int(11) DEFAULT NULL,
  `chitiet` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ghe`
--

CREATE TABLE `ghe` (
  `maghe` char(30) NOT NULL,
  `maphong` char(30) NOT NULL,
  `loaighe` varchar(30) DEFAULT NULL,
  `trangthai` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `mahd` char(30) NOT NULL,
  `userid` int(11) NOT NULL,
  `mave` char(30) NOT NULL,
  `macombo` char(30) NOT NULL,
  `makhuyenmai` char(30) NOT NULL,
  `masuatchieu` char(30) NOT NULL,
  `maghe` char(30) NOT NULL,
  `soluong` int(11) DEFAULT NULL,
  `thanhtien` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `makhuyenmai` char(30) NOT NULL,
  `chitiet` text DEFAULT NULL,
  `tenkhuyenmai` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `phanhoi`
--

CREATE TABLE `phanhoi` (
  `idphanhoi` char(30) NOT NULL,
  `hovaten` varchar(50) DEFAULT NULL,
  `email` char(50) DEFAULT NULL,
  `sodienthoai` char(12) DEFAULT NULL,
  `noidung` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `phim`
--

CREATE TABLE `phim` (
  `maphim` char(30) NOT NULL,
  `tenphim` varchar(50) DEFAULT NULL,
  `theloai` varchar(50) DEFAULT NULL,
  `daodien` varchar(50) DEFAULT NULL,
  `diemdanhgia` char(10) DEFAULT NULL,
  `thoiluong` varchar(50) DEFAULT NULL,
  `ngaykhoichieu` date DEFAULT NULL,
  `mota` text DEFAULT NULL,
  `poster` char(200) DEFAULT NULL,
  `dotuoi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phim`
--

INSERT INTO `phim` (`maphim`, `tenphim`, `theloai`, `daodien`, `diemdanhgia`, `thoiluong`, `ngaykhoichieu`, `mota`, `poster`, `dotuoi`) VALUES
('daotoiac', 'ĐẢO TỘI ÁC', 'Kinh dị', 'Eu Ho', '7.6', '112 phút', '2023-03-31', 'Nhóm du khách trẻ vô tình phá bỏ phong ấn của con quái vật khát máu khi đến tham quan một hòn đảo cấm không dân địa phương nào dám đặt chân đến. Liệu họ có thể bình an thoát khỏi hay đó sẽ là nơi chôn vùi tất cả?', 'daotoiac.jpg', 18),
('demoslayer', 'THANH GƯƠM DIỆT QUỶ', 'Hoạt Hình, Giả Tưởng, Phiêu Lưu', 'Haruo Sotozaki', '6.6', '110 phút', '2023-03-22', 'Sau trận chiến khốc liệt với anh em quỷ Thượng Huyền Lục Gyuutarou và Daki tại Phố Đèn Đỏ, Tanjiro cùng các kiếm sĩ diệt quỷ đều bị thương nặng và được đưa trở về trụ sở của Đội Diệt Quỷ để dưỡng thương và phục hồi. Sau trận chiến, thanh gươm của Tanjiro cũng bị hư hỏng nặng và lúc này, cậu cần một thanh gươm mới để tiếp tục lên đường làm nhiệm vụ. Cậu được đưa đến Làng Rèn Gươm, nơi phụ trách rèn vũ khí cho các kiếm sĩ của Đội Diệt Quỷ và chuẩn bị cho trận chiến mới với các thành viên mạnh nhất trong hàng Thượng Huyền của Thập Nhị Quỷ Nguyệt.\r\n', 'demonslayer.jpg', 13),
('sieulay', 'SIÊU LỪA GẶP SIÊU LẦY', 'Hài', 'Võ Thanh Hòa', '8.1', '112 phút', '2023-03-01', 'Thuộc phong cách hành động – hài hước với các “cú lừa” thông minh và lầy lội đến từ bộ đôi Tú (Anh Tú) và Khoa (Mạc Văn Khoa), Siêu Lừa Gặp Siêu Lầy của đạo diễn Võ Thanh Hòa theo chân của Khoa – tên lừa đảo tầm cỡ “quốc nội” đến đảo ngọc Phú Quốc với mong muốn đổi đời.\r\n\r\nTại đây, Khoa gặp Tú – tay lừa đảo “hàng real” và cùng Tú thực hiện các phi vụ từ nhỏ đến lớn. Cứ ngỡ sự ranh mãnh của Tú và sự may mắn trời cho của Khoa sẽ giúp họ trở thành bộ đôi bất khả chiến bại, nào ngờ lại đối mặt với nhiều tình huống dở khóc – dở cười. Nhất là khi băng nhóm của bộ đôi nhanh chóng mở rộng vì sự góp mặt của ông Năm (Nhất Trung) và bé Mã Lai (Ngọc Phước).\r\n', 'sieulua.jpg', 16),
('songsot', 'SỐNG SÓT', 'Tâm Lý, Giật Gân', 'Dmitriy Suvorov', '7.8', '96 phút', '2023-03-29', 'Vào ngày 24 tháng 8 năm 1981, đôi vợ chồng mới cưới Larisa và Vladimir Savitsky lên chuyến bay Komsomolsk-on-Amur - Blagoveshchensk. 30 phút sau khi hạ cánh, máy bay dân sự AN-24 va chạm với một máy bay khác và bị vỡ thành mảnh vụn ở độ cao hơn 5 km so với mặt đất. Không ai được dự đoán sống sót... nhưng một phép màu đã xảy ra. Larisa Savitskaya tỉnh dậy giữa đống đổ nát của chiếc máy bay tại một khu rừng rậm rạp. Bây giờ, cô phải tạo ra một phép màu thật sự, điều mà chỉ một người có ý chí mạnh mẽ mới có thể làm được… sống sót!\r\nXem thêm tại: https://www.galaxycine.vn/dat-ve/the-one', 'songsot.jpg', 16),
('tomandjerry', 'TOM & JERRY: QUẬY TUNG NEW YORK', 'Hài, Gia Đình, Hoạt Hình', 'Tim Story', '9.2', '101 phút', '2023-03-10', 'Sau bao năm rượt đuổi, Tom và Jerry đã làm hòa, chia tay nhau để rời khỏi ngôi nhà gắn bó bấy lâu và bắt đầu cuộc phiêu lưu riêng. Chuột Jerry tìm đến \"định cư\" tại một khách sạn sang trọng sắp tổ chức đám cưới thế kỷ.\r\n\r\nĐược giao nhiệm vụ tống cổ Jerry, cô nhân viên khách sạn Kayla đem mèo tới bắt chuột. Đó không ai khác, chính là Tom.\r\n', 'tomjerry.jpg', 0),
('trinhcongson', 'TRỊNH CÔNG SƠN', 'Tình Cảm, Lãng Mạn', 'Phan Gia Nhật Linh', '7.4', '95 phút', '2023-03-31', 'Bộ phim khắc họa chân dung Trịnh Công Sơn từ một chàng thư sinh đa tài lãng tử trở thành “người nhạc sĩ viết tình ca hay nhất thế kỷ” với hàng trăm ca khúc về tình yêu và thân phận con người. Bộ phim “Trịnh Công Sơn” tràn đầy cảm hứng và nhiệt huyết của tuổi trẻ về người nhạc sĩ vĩ đại, đã sống, yêu và sáng tác trong một giai đoạn lịch sử của đất nước với tình yêu cứu rỗi, vượt lên mọi tan vỡ, khổ đau.\r\n', 'trinhcongson.jpg', 13);

-- --------------------------------------------------------

--
-- Table structure for table `phong`
--

CREATE TABLE `phong` (
  `maphong` char(30) NOT NULL,
  `tenphong` varchar(30) DEFAULT NULL,
  `soluongghe` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `suatchieu`
--

CREATE TABLE `suatchieu` (
  `masuatchieu` char(30) NOT NULL,
  `maphim` char(30) NOT NULL,
  `maphong` char(30) NOT NULL,
  `ngaychieu` date DEFAULT NULL,
  `giochieu` time DEFAULT NULL,
  `giave` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE `tintuc` (
  `matin` int(11) NOT NULL,
  `tieude` varchar(50) DEFAULT NULL,
  `noidung` text DEFAULT NULL,
  `hinhanh` char(200) DEFAULT NULL,
  `luotxem` int(11) DEFAULT NULL,
  `luotdanhgia` int(11) DEFAULT NULL,
  `category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tintuc`
--

INSERT INTO `tintuc` (`matin`, `tieude`, `noidung`, `hinhanh`, `luotxem`, `luotdanhgia`, `category`) VALUES
(1, 'Siêu Lừa Gặp Siêu Lầy: Phi Vụ Hoàn Hảo Của Điện Ản', 'Siêu Lừa Gặp Siêu Lầy là một cuốn phim tốt về mọi mặt, nếu mong muốn có những giây phút giải trí thư giãn', './img/rv1.jpg', 3107, 8, 'binhluan'),
(2, 'Ant-Man And The Wasp Quantumania: Cú Lừa Xuất S', 'Ai nghĩ rằng trailer Ant-Man And The Wasp: Quantumania đã tóm tắt bộ phim thì lầm to rồi.', './img/rv2.jpg', 8113, 9, 'binhluan'),
(3, 'M3GAN: Khi \"Cúp Bế\" Trỗi Dậy Làm Chủ Con Người', 'Vừa hấp dẫn, vừa giải trí, M3GAN hoàn toàn xứng đáng với những lời khen từ đại chúng và các nhà phê bình.', './img/rv3.jpg', 3752, 9, 'binhluan'),
(4, 'Chị Chị Em Em 2: Ngọc Trinh Hoàn Hảo, Minh Hă', 'Đạo diễn Vũ Ngọc Đãng thành công vừa làm nổi bật Ngọc Trinh bốc lửa vừa tôn được nét đẹp đằm thắm của Minh Hằng.', './img/rv4.jpg', 10023, 9, 'binhluan'),
(5, 'Oscar 2023: Những Chuyện Hậu Trường Đầy Bất ', 'Những điều thú vị đằng sau sự kiện điện ảnh lớn nhất năm! Hãy cùng xem ai sẽ là người chiến thắng!', './img/blog1.jpg', 3255, 0, 'blog'),
(6, 'Bóc Trứng Phục Sinh Ant-Man And The Wasp: Quantuma', 'Những bộ phim thuộc vũ trụ điện ảnh Marvel luôn “chôn” rất nhiều Trứng Phục Sinh để các fan trung thành khám phá.', './img/blog2.jpg', 967, 0, 'blog'),
(7, 'Fast X: Vin Diesel Rủ Dàn Siêu Anh Hùng Đua Xe?', 'Fast X – phần mở đầu cho “cuộc đua cuối” của đại gia đình Toretto vừa tung ra trailer siêu hấp dẫn vào 10.02 vừa qua.', './img/blog3.jpg', 158, 0, 'blog'),
(8, 'Luật Điện Ảnh Mới Có Gì Mới?', 'So với Luật Điện ảnh 2006 trước đây, Luật Điện ảnh 2022 (có hiệu lực từ ngày 01.01.2023) thay đổi một số điểm', './img/blog4.jpg', 488, 0, 'blog');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `hoten` varchar(50) NOT NULL,
  `namsinh` int(11) DEFAULT NULL,
  `gioitinh` varchar(10) DEFAULT NULL,
  `email` char(50) DEFAULT NULL,
  `sodienthoai` char(12) NOT NULL,
  `matkhau` char(50) NOT NULL,
  `role` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ve`
--

CREATE TABLE `ve` (
  `mave` char(30) NOT NULL,
  `maphim` char(30) NOT NULL,
  `giave` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `combo`
--
ALTER TABLE `combo`
  ADD PRIMARY KEY (`macombo`);

--
-- Indexes for table `ghe`
--
ALTER TABLE `ghe`
  ADD PRIMARY KEY (`maghe`),
  ADD KEY `maphong` (`maphong`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`mahd`),
  ADD KEY `userid` (`userid`),
  ADD KEY `mave` (`mave`),
  ADD KEY `macombo` (`macombo`),
  ADD KEY `makhuyenmai` (`makhuyenmai`),
  ADD KEY `masuatchieu` (`masuatchieu`),
  ADD KEY `maghe` (`maghe`);

--
-- Indexes for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`makhuyenmai`);

--
-- Indexes for table `phanhoi`
--
ALTER TABLE `phanhoi`
  ADD PRIMARY KEY (`idphanhoi`);

--
-- Indexes for table `phim`
--
ALTER TABLE `phim`
  ADD PRIMARY KEY (`maphim`);

--
-- Indexes for table `phong`
--
ALTER TABLE `phong`
  ADD PRIMARY KEY (`maphong`);

--
-- Indexes for table `suatchieu`
--
ALTER TABLE `suatchieu`
  ADD PRIMARY KEY (`masuatchieu`),
  ADD KEY `maphim` (`maphim`),
  ADD KEY `maphong` (`maphong`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`matin`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `ve`
--
ALTER TABLE `ve`
  ADD PRIMARY KEY (`mave`),
  ADD KEY `maphim` (`maphim`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `matin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ghe`
--
ALTER TABLE `ghe`
  ADD CONSTRAINT `ghe_ibfk_1` FOREIGN KEY (`maphong`) REFERENCES `phong` (`maphong`);

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`),
  ADD CONSTRAINT `hoadon_ibfk_2` FOREIGN KEY (`mave`) REFERENCES `ve` (`mave`),
  ADD CONSTRAINT `hoadon_ibfk_3` FOREIGN KEY (`macombo`) REFERENCES `combo` (`macombo`),
  ADD CONSTRAINT `hoadon_ibfk_4` FOREIGN KEY (`makhuyenmai`) REFERENCES `khuyenmai` (`makhuyenmai`),
  ADD CONSTRAINT `hoadon_ibfk_5` FOREIGN KEY (`masuatchieu`) REFERENCES `suatchieu` (`masuatchieu`),
  ADD CONSTRAINT `hoadon_ibfk_6` FOREIGN KEY (`maghe`) REFERENCES `ghe` (`maghe`);

--
-- Constraints for table `suatchieu`
--
ALTER TABLE `suatchieu`
  ADD CONSTRAINT `suatchieu_ibfk_1` FOREIGN KEY (`maphim`) REFERENCES `phim` (`maphim`),
  ADD CONSTRAINT `suatchieu_ibfk_2` FOREIGN KEY (`maphong`) REFERENCES `phong` (`maphong`);

--
-- Constraints for table `ve`
--
ALTER TABLE `ve`
  ADD CONSTRAINT `ve_ibfk_1` FOREIGN KEY (`maphim`) REFERENCES `phim` (`maphim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
