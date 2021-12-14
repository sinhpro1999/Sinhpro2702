-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 24, 2021 lúc 01:52 PM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `thietbi`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `tenkhachhang` varchar(200) NOT NULL,
  `sodienthoai` int(15) NOT NULL,
  `email` varchar(200) NOT NULL,
  `diachi` varchar(500) NOT NULL,
  `trangthai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `tenkhachhang`, `sodienthoai`, `email`, `diachi`, `trangthai`) VALUES
(58, 'tran van bang', 35468462, 'bang@gmail.com', 'khai thai, phu xuyen, ha noi', ' Đã thanh toán'),
(59, 'nguyen duc trung', 359357950, 'trunglua20091109@gmail.com', 'minh tan, phu xuyen, ha noi', 'Chưathanh toán'),
(60, 'nguyen van tien', 359365780, 'tien@gmail.com', 'minh tan, phu xuyen, ha noi', 'Chưa thanh toán'),
(61, 'nguyen duc trung', 359357950, 'trung@gmail.com', 'ha noi', 'Chưa thanh toán'),
(62, 'nguyen van a', 32466525, 'a@gmail.com', 'ha noi', 'da thanh toán');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhangchitiet`
--

CREATE TABLE `donhangchitiet` (
  `id` int(11) NOT NULL,
  `madonhang` int(11) NOT NULL,
  `masanpham` int(11) NOT NULL,
  `tensanpham` varchar(10000) NOT NULL,
  `giasanpham` int(11) NOT NULL,
  `soluongsanpham` int(11) NOT NULL,
  `ngay` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `donhangchitiet`
--

INSERT INTO `donhangchitiet` (`id`, `madonhang`, `masanpham`, `tensanpham`, `giasanpham`, `soluongsanpham`, `ngay`) VALUES
(43, 53, 22, 'Vertu Signature S Clous De Paris Black', 165000000, 1, '8/18/21 3:34:43 PM'),
(44, 54, 24, 'ASUS ROG Strix G15 G513QC-HN015T', 57800000, 2, '8/18/21 4:02:57 PM'),
(45, 55, 20, 'MacBook Pro 16\" 2019 Touch Bar 2.6GHz Core i7 512GB', 59900000, 1, '8/18/21 4:12:36 PM'),
(46, 56, 20, 'MacBook Pro 16\" 2019 Touch Bar 2.6GHz Core i7 512GB', 59900000, 1, '8/18/21 4:13:30 PM'),
(47, 57, 24, 'ASUS ROG Strix G15 G513QC-HN015T', 28900000, 1, '8/18/21 5:17:26 PM'),
(48, 58, 24, 'ASUS ROG Strix G15 G513QC-HN015T', 28900000, 1, '8/18/21 5:19:29 PM'),
(49, 59, 1, 'Vertu Signature S Vàng Khối 2017', 2000000000, 10, '8/19/21 3:20:13 PM'),
(50, 60, 19, 'Laptop HP Pavilion Gaming 15 dk1086TX i7 10750H', 27900000, 1, '8/19/21 3:55:35 PM'),
(51, 61, 5, 'Sony Xperia 1 II ( Mark 2 )', 62400000, 3, '8/19/21 4:35:31 PM'),
(52, 62, 23, 'Xiaomi Redmi Note 10 5G 4GB-128GB', 5000000, 1, '8/19/21 4:35:58 PM');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `id` int(11) NOT NULL,
  `tenloaisanpham` varchar(200) NOT NULL,
  `hinhanhloaisanpham` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`id`, `tenloaisanpham`, `hinhanhloaisanpham`) VALUES
(1, 'Điện thoại', 'https://luxuryhanoi.vn/admin/webroot/upload/image/images/Signature/IMG_2239.jpg'),
(2, 'Laptop', 'https://laptopworld.vn/media/product/7672_asus_rog_strix_g17_g713qr_12.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `tensanpham` varchar(200) NOT NULL,
  `giasanpham` int(200) NOT NULL,
  `hinhanhsanpham` varchar(200) NOT NULL,
  `motasanpham` varchar(10000) NOT NULL,
  `idsanpham` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `tensanpham`, `giasanpham`, `hinhanhsanpham`, `motasanpham`, `idsanpham`) VALUES
(1, 'Vertu Signature S Vàng Khối 2017', 200000000, 'https://thongvertu.com/wp-content/uploads/2021/03/vertu-signature-s-vang-khoi-2017.jpg', 'Khung máy được chế tác từ vàng khối\r\nDa bê cao cấp sang trọng da bao phủ phía sau\r\nMàn hình từ Sapphire nguyên khối siêu chống xước\r\nDưới các phím bấm được nâng đỡ bằng 12 viên ruby 4,75 karat\r\nĐược chế tác hoàn toàn thủ công và đạt độ cân bằng tuyệt đối', 1),
(2, 'RAZER BLADE PRO 17', 75000000, 'https://toplap.vn/storage/img/SmLGHGplmTJeAYEN88tkPLri0olmpXMNGVz62C3I.jpeg', 'CPU10th Gen Intel® Core™ i7-10875H 8 core (2.3GHz)\r\nRAM16GB LPDDR3 2933MHz\r\nỔ cứng1T M2 PCIe', 2),
(3, 'ThinkPad X1 Nano 2K - Intel® Core™ i7-1160G7 16GB 512GB', 40700000, 'https://mac24h.vn/images/detailed/48/ThinkPad_X1_Nano_mac24h_z6e2-xr.jpg?t=1616000679', 'CPU: 11th Generation Intel® Core™ i7-1160G7 Processor (2.10GHz, up to 4.40GHz with Turbo Boost, 4 Cores, 12MB Cache)\r\nRAM: 16GB LPDDR4x 4267MHz (Soldered)\r\nĐĩa cứng: 512GB m.2 PCIe\r\nMàn hình: 13″ 2K (2160 x 1350) IPS, glossy with Dolby Vision™, 450 nits, 100% sRGB*\r\nCard đồ họa: Intel® Irs Xe\r\nTrọng Lượng : 900gram', 2),
(4, 'Samsung Galaxy Note 20 ultra 5G Ram 12Gb bộ nhớ 256Gb ', 15700000, 'https://sieuthismartphone.com/data/product/medium/medium_qsb1608076854.jpg', 'Galaxy Note 20 ultra 5G Với hiệu năng đáng kinh ngạc như máy tính, khả năng chỉnh sửa, quay video 8K chuyên nghiệp và định chuẩn trải nghiệm vượt trội dành cho game di động, siêu phẩm Note mới hứa hẹn mang đến những đột phá khác biệt, hoàn hảo cho mọi mục đích sử dụng.', 1),
(5, 'Sony Xperia 1 II ( Mark 2 )', 20800000, 'https://product.hstatic.net/1000370129/product/xperia_1_mark_2_tim_2b91736d019b41aeb5cde2c858ed18db_master.png', 'Sony Xperia 1 Mark II có một sự thay đổi về thiết kế so với phiên bản Sony Xperia 1 trước đó, thay đổi đầu tiên là \"em nó\" mang một cái tên mới \"Mark II\". Theo nguồn tin cho biết, Xperia 1 Mark II vẫn đâu đó mang đến một sự hấp dẫn kì lạ, với thân máy được gia công bằng kim loại phẳng đầy sang trọng và mặt trước, sau đều được phủ kính trong sáng bóng và lấp lánh.', 1),
(6, 'Điện Thoại iPhone XS MAX 512GB ', 13700000, 'https://www.techone.vn/wp-content/uploads/2019/10/Untitled-1.jpg', 'ĐÁNH GIÁ SẢN PHẨM\r\niPhone XS MAX 512GB (1 sim Vật lý) – Chính Hãng\r\n \r\n\r\n1. Thiết kế\r\niPhone Xs Max có cùng ngôn ngữ thiết kế với iPhone Xs và iPhone X, điểm khác biệt duy nhất là màn hình iPhone Xs Max đã được phóng lớn lên đến 6.5 inch. Tuy nhiên khi cầm iPhone Xs Max chỉ tương tự như iPhone 8 Plus, nhờ vào phong cách thiết kế màn hình tràn viền và phần notch (tai thỏ).\r\nBên cạnh kích thước màn hình, iPhone Xs Max có phiên bản màu Vàng khá lạ mắt. Đây là điểm khác biệt lớn thứ hai để phân biệt sản phẩm này với iPhone X hay iPhone Xs.\r\n\r\nMàu Vàng của iPhone Xs Max không giống với các màu Vàng trên smartphone các hãng khác, cũng không giống với màu Rose Gold quen thuộc, nó chỉ hơi Vàng nhẹ nhưng nhờ mặt kính nên khá nổi khi có ánh sáng chiếu vào.\r\n\r\nMàn hình lớn luôn đem đến trải nghiệm xem thoải mái hơn, các nội dung hiển thị sẽ được phóng lớn giúp chúng trông rõ ràng và dễ nhìn. Tuy nhiên, phần tai thỏ trên iPhone Xs Max nói riêng và dòng iPhone X nói chung, đều có một khuyết điểm nhỏ mà chưa thấy Apple thay đổi.\r\n\r\n', 1),
(7, 'Điện Thoại iPhone XS MAX 256GB', 11750000, 'https://www.techone.vn/wp-content/uploads/2019/04/iphone-xs-max-256gb-white.jpg', 'Màu Vàng của iPhone Xs Max không giống với các màu Vàng trên smartphone các hãng khác, cũng không giống với màu Rose Gold quen thuộc, nó chỉ hơi Vàng nhẹ nhưng nhờ mặt kính nên khá nổi khi có ánh sáng chiếu vào.\r\n\r\nMàn hình lớn luôn đem đến trải nghiệm xem thoải mái hơn, các nội dung hiển thị sẽ được phóng lớn giúp chúng trông rõ ràng và dễ nhìn. Tuy nhiên, phần tai thỏ trên iPhone Xs Max nói riêng và dòng iPhone X nói chung, đều có một khuyết điểm nhỏ mà chưa thấy Apple thay đổi.\r\n\r\n', 1),
(8, 'Samsung Galaxy S21 Plus 5G 128GB Violet', 19200000, 'https://phucanhcdn.com/media/product/42063_galaxy_s21_plus_5g_violet_ha1.jpg', 'Dòng Galaxy S21+ 5G mới nhất của Samsung cho phép người dùng dễ dàng bắt trọn khoảnh khắc thú vị, chia sẻ và thể hiện góc nhìn riêng nhờ công nghệ camera chụp ảnh và quay video chuyên nghiệp, thiết kế sành điệu nguyên bản mới và khả năng kết nối dễ dàng nhanh chóng.\r\nVideo 8K là độ phân giải cao nhất bạn có thể tìm thấy trên các dòng điện thoại thông minh. Hãy sẵn sàng để biến những thước phim đời thường trở thành kiệt tác điện ảnh đầy mãn nhãn. Với độ phân giải 8K cực đỉnh cùng tốc độ 24 khung hình/giây, mỗi một vlog bạn quay, mỗi một phút giây đáng nhớ đều trở thành tâm điểm tỏa sáng. Quay lại mọi khoảnh khắc của bạn, tải lên YouTube và thưởng thức ngay video 8K với chất lượng cực nét.', 1),
(9, 'Samsung Galaxy Z Fold2 5G', 50000000, 'https://images.fpt.shop/unsafe/fit-in/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/samsung-galaxy-zfold2.jpg', 'Không giống bất kỳ chiếc điện thoại nào khác, Samsung Galaxy Z Fold 2 5G sở hữu màn hình gập kỳ diệu mà mỗi khi mở màn hình, bạn đã mở ra tương lai của ngành công nghiệp smartphone.\r\nKhông chỉ là một chiếc điện thoại màn hình gập, Galaxy Z Fold 2 5G còn là chiếc điện thoại có tới 2 màn hình. Trong trạng thái gập, màn hình ngoài của máy với kích thước 6,2 inch, viền mỏng cho trải nghiệm smartphone thông thường, nơi bạn có thể thao tác dễ dàng bằng một tay. Còn muốn trải nghiệm một màn hình lớn hơn, tương đương máy tính bảng, bạn có thể mở ra màn hình gập, điều kỳ diệu sẽ xuất hiện.', 1),
(10, 'Samsung Galaxy S21+', 25000000, 'https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/samsung-galaxy-s21-plus-8(1).jpg', 'Samsung Galaxy S21 Plus tiếp tục là một kiệt tác về thiết kế với màn hình viền siêu mỏng tuyệt đẹp, khung kim loại nguyên khối cứng cáp và mặt lưng kính mờ sang trọng. Không chỉ đẹp, Galaxy S21 Plus còn thể hiện sự độc đáo với cụm camera phá cách, nổi bật tạo điểm nhấn trên mặt lưng máy. Trừ phiên bản màu đen nguyên bản, các phiên bản màu khác cụm camera đều được chế tác màu sắc tương phản, cho bạn một vẻ đẹp thời thượng, dẫn đầu xu hướng.\r\nMàn hình của một thiết bị cao cấp đến từ Samsung chưa bao giờ khiến bạn phải thất vọng. Samsung Galaxy S21 Plus sở hữu màn hình hàng đầu thế giới smartphone với tấm nền 6,7 inch, thiết kế dạng vô cực Infinity-O quyến rũ, hỗ trợ HDR10+ và công nghệ Dynamic AMOLED 2X cao cấp.\r\n\r\nBạn sẽ được chiêm ngưỡng những màu sắc sống động, độ tương phản cao và chân thực đến từng chi tiết. Chưa hết, màn hình này còn hỗ trợ tần số quét 120Hz siêu mượt, phản hồi và chuyển cảnh nhanh đến không ngờ, mang đến trải nghiệm hoàn toàn khác biệt.', 1),
(11, 'Samsung Galaxy A32', 6690000, 'https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/galaxy-a32-1.jpg', 'Samsung Galaxy A32 mang trên mình tới 4 camera sau. Nhưng A32 không chỉ có số lượng mà chất lượng mới là điều đáng nói. Nổi bật nhất là camera chính độ phân giải lên tới 64MP, chụp ảnh sắc nét đến từng chi tiết, khả năng chụp thiếu sáng ấn tượng. Bạn có thể ghi lại những khoảnh khắc đáng nhớ thường ngày bằng các bức ảnh, đoạn video chất lượng.\r\n\r\nGiống như tầm mắt người trong thực tế, camera 8MP góc siêu rộng của Samsung Galaxy A32 mang đến khung hình rộng tới 123 độ. Bạn sẽ có thể thu lại nhiều cảnh vật hơn, nhiều người hơn trong một bức hình. Hãy thử khám phá thế giới qua một góc nhìn mới của ống kính camera siêu rộng.', 1),
(12, 'Laptop MSI Modern 14 B11MOL 420VN i3', 13700000, 'https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/msi-modern-14-grey-3.jpg', 'ốc độ là những gì bạn có thể cảm nhận được trên MSI Modern 14 B11MOL 420VN. Dù là một chiếc laptop hướng đến các hoạt động văn phòng, phù hợp cho người làm công sở và doanh nghiệp nhưng Modern 14 B11MOL vẫn có tốc độ cực nhanh ở mọi tác vụ. Sự kết hợp giữa bộ vi xử lý Intel thế hệ thứ 11, 8GB RAM DDR4 3200MHz hiệu năng cao và 256GB SSD chính là vũ khí để tạo nên tốc độ của Modern 14 B11MOL 420VN. Một chiếc máy tính luôn hoạt động nhanh chóng, mượt mà sẽ giúp ích rất nhiều cho công việc của bạn.\r\nThật khó tin khi trong tầm giá 14 triệu đồng, bạn lại có thể sở hữu chiếc laptop đẹp như MSI Modern 14. Phiên bản màu Xám carbon cổ điển kết hợp cùng trọng lượng cực nhẹ chỉ 1,3 kg và độ mỏng vỏn vẹn 1,69 cm tạo nên một sản phẩm đầy nghệ thuật. Cảm giác bạn cầm theo MSI Modern 14 B11MOL nhẹ nhàng như cầm một cuốn sách vậy. Tất cả đường nét trên laptop đều thiết kế tinh tế, thanh lịch nhưng cũng không kém phần mạnh mẽ, đậm chất MSI. Việc sử dụng một chiếc laptop tuyệt đẹp như MSI Modern 14 sẽ mang đến cho bạn thêm rất nhiều cảm hứng để làm việc.', 2),
(13, 'Laptop HP Envy 13 ba1028TU i5 1135G7', 22700000, 'https://phucanhcdn.com/media/product/40903_envy_13_gold_ha4.jpg', 'Cơ chế bản lề nâng mới giúp HP Envy 13 khéo léo “giấu đi” một phần nhỏ cạnh dưới màn hình, mang tới cho bạn trải nghiệm trên màn hình viền mỏng đều cả 4 cạnh vô cùng tuyệt vời. Màn hình tràn viền của HP Envy 13 sẽ hiển thị mọi nội dung một cách tuyệt đẹp, từ văn bản sắc nét, các phần mềm tương thích cho đến những đoạn phim sống động. Chất lượng chuẩn Full HD, góc nhìn rộng 178 độ và đặc biệt màu sắc hết sức chân thực tạo nên hình ảnh xuất sắc. Hãy cùng đắm chìm trong thế giới giải trí đỉnh cao của HP Envy 13 ba1028TU.', 2),
(14, 'Laptop MSI Gaming GF63 10SC 255VN i5 10300H', 19990000, 'https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/msi-gf63-thin-10scxr-9.jpg', 'MSI GF63 sử dụng bộ phần mềm và công nghệ âm thanh Nahimic3, mang đến trải nghiệm âm thanh vòm 3D dành cho các game thủ. Bên cạnh đó thì công nghệ Audio Boost sẽ cho chất âm chi tiết hơn 30% với Audio Power Amplifier bên trong và cổng tai nghe chân vàng.\r\n\r\nNói qua một chút về Nahimic3, công nghệ âm thanh này cho trải nghiệm vô cùng sống động, giống như là bạn đang ở trong trò chơi, đồng thời nó cũng tùy chỉnh theo hoạt động của bạn như nghe nhạc hay xem phim.\r\n\r\nNgoài ra Nahimic3 cũng rất chú trọng cho việc thu âm qua microphone, âm thanh của bạn phát ra sẽ to và rõ ràng hơn. Hầu hết các game online hiện nay đều phải giao tiếp qua micro, chính vì vậy tính năng này khá quan trọng cho trải nghiệm chơi game.', 2),
(15, 'Laptop Acer Nitro Gaming AN515-55-77P9 i7 10750H', 23900000, 'https://www.tncstore.vn/image/cache/catalog/Avata%20Laptop/Nitro%205%202020-500x500.jpg', 'Phiên bản Nitro 5 AN515 55 mới có kiểu dáng hầm hố, “ngầu” và “hiếu chiến” hơn nhờ những đường vát mạnh mẽ, khỏe khoắn. Tông màu đen chủ đạo xen lẫn màu đỏ tạo điểm nhấn, giúp bạn dễ dàng nhận ra đây là chiếc laptop dành riêng cho game thủ. Phần viền màn hình tiếp tục được vát mỏng, góp phần thu gọn kích thước tổng thể, nâng cao trải nghiệm xem và cho một thiết kế thoáng đãng hơn.', 2),
(16, 'MacBook Air 13\" 2020 M1 16GB/256GB', 30990000, 'https://images.fpt.shop/unsafe/fit-in/665x374/filters:quality(100):fill(white)/fptshop.com.vn/Uploads/Originals/2021/3/30/637527199860690600_macbook-air-m1-8.jpg', 'Lần đầu tiên Apple sử dụng con chip do chính hãng này sản xuất cho dòng máy Macbook. Bộ vi xử lý Apple M1 với 16 tỉ bóng bán dẫn, bao gồm 8 nhân cực mạnh, trong đó có 4 nhân hiệu năng cao và 4 nhân tiết kiệm điện, mang đến cho MacBook Air tốc độ xử lý tuyệt vời, đồng thời kéo dài thời lượng pin. Nhờ vậy MacBook Air 13 2020 M1 có hiệu suất nhanh gấp 3,5 lần thế hệ cũ, cho bạn làm việc với cả những công việc chuyên nghiệp, những tác vụ nặng mà không thể chạy được trên MacBook Air trước đây.\r\nMacBook Air 13 M1 có khả năng đồ họa khó tin trên một chiếc laptop siêu nhỏ gọn. GPU tích hợp trên Apple M1 có tới 8 nhân và là GPU tích hợp mạnh nhất thế giới laptop hiện nay. So với thế hệ trước, MacBook Air 13 2020 M1 có khả năng xử lý đồ họa mạnh gấp 5 lần. Giờ đây ngay trên chiếc MacBook Air cực kỳ di động, bạn đã có thể xem và chỉnh sửa video 4K mượt mà, thậm chí là chơi game cũng như chạy các tác vụ đồ họa chuyên sâu.', 2),
(17, 'MacBook Pro 13\" 2020 Touch Bar M1 256GB', 31400000, 'https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/macbook-pro-13-m1-17.jpg', 'pple M1 tích hợp nhân Neural Engine 16 lõi, tối ưu hệ thống trí tuệ nhân tạo Machine Learning. Tốc độ xử lý sẽ nhanh hơn nhờ khả năng tự động hóa cho các hoạt động phân tích video, nhận dạng giọng nói, xử lý hình ảnh và hơn thế nữa. So với thế hệ trước, Machine Learning nhanh hơn tới 11 lần, để bạn hoàn thành công việc trong chớp mắt.\r\nMacBook Pro 13 2020 M1 trang bị quạt tản nhiệt tiên tiến, nhanh chóng làm mát, lưu thông luồng khí để bạn luôn có được hiệu năng ổn định trong thời gian dài. Sẵn sàng cho những công việc cần hoạt động liên tục, những tác vụ đòi hỏi khả năng xử lý cao mà máy vẫn hết sức mượt mà.', 2),
(18, 'Laptop ASUS Gaming TUF FX516PE HN005T i7 11370H', 29900000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/l/a/laptop-asus-tuf-gaming-fx516pe-hn005t-9.jpg', 'Asus TUF Gaming FX516PE trang bị card đồ họa rời RTX 3050, giải pháp đồ họa chuyên nghiệp dành cho các game thủ và người sáng tạo nội dung của NVIDIA. Đây là card đồ họa được xây dựng trên kiến trúc Ampere hoàn toàn mới, tập hợp các lõi CUDA, lõi RT và Tensor nâng cao để tăng hiệu quả tạo bóng, theo dõi tia thời gian thực và AI. Bạn sẽ được trải nghiệm ánh sáng và các hiệu ứng khác trong game chân thực hơn bao giờ hết. Đồng thời những tác vụ đồ họa như chỉnh sửa ảnh và video cũng được hưởng lợi bởi sức mạnh của RTX 3050.', 2),
(19, 'Laptop HP Pavilion Gaming 15 dk1086TX i7 10750H', 27900000, 'https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/hp-pavilion-gaming-15-intel-4.jpg', 'HP Pavilion Gaming 15 dk1086TX trở nên mạnh mẽ đáng kinh ngạc khi mang trên mình bộ vi xử lý Intel Core i7 10750H, con chip thế hệ thứ 10 mà game thủ nào cũng mong muốn. Sức mạnh của i7 10750H được thể hiện ở 6 nhân, 12 luồng, tốc độ 2.60 GHz Turbo Boost lên tối đa tới 5.00 GHz, bộ nhớ đệm 12MB, cho sức mạnh tuyệt vời và “cân” tốt hầu hết mọi tựa game. Bên cạnh đó là 8GB RAM DDR4 băng thông cao 2933MHz, tăng hiệu suất cho cả hoạt động đa nhiệm và chơi game.\r\nHP Pavilion Gaming 15 dk1086TX được nâng cấp mạnh về đồ họa khi sở hữu card màn hình rời NVIDIA GeForce GTX 1650 Ti 4G, mạnh hơn đáng kể so với những sản phẩm dùng GTX 1650 hay GTX 1050 Ti. Thế hệ Turing với đồ họa raytracing kết hợp cùng khả năng tối ưu hóa kiến trúc lõi và bộ nhớ đệm giúp xử lý đồ họa và sử dụng năng lượng hiệu quả hơn. Đặc biệt ở những game eSports phổ biến, tốc độ khung hình cao và ổn định giúp bạn chơi game mượt mà, thao tác chính xác hơn.', 2),
(20, 'MacBook Pro 16\" 2019 Touch Bar 2.6GHz Core i7 512GB', 59900000, 'https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/macbook-pro-16-1.JPG', 'Mọi giới hạn sinh ra là để phá vỡ, MacBook Pro 16 Touch Bar đã nâng cấp kích thước màn hình lên 16 inch và trở thành chiếc MacBook có màn hình lớn nhất từ trước tới nay. Bạn sẽ được tận hưởng màn hình Retina tuyệt đẹp, độ sáng tối đa 500 nits và hiển thị màu đen với độ sâu hoàn hảo. Màu sắc chính xác gần như tuyệt đối, gam màu rộng P3 giúp hình ảnh và video hiển thị chân thực, sống động. Một không gian làm việc lớn hơn, chuyên nghiệp hơn đang chờ đón bạn, đặc biệt là công việc đồ họa vốn đòi hỏi một màn hình chính xác.\r\nBạn cần một chiếc máy tính có thể làm việc với tốc độ nhanh như những ý tưởng chợt hiện lên trong đầu, MacBook Pro 16 Touch Bar chính là sản phẩm bạn đang tìm. Bộ vi xử lý Intel Core i7 với 6 lõi và 12 luồng cho hiệu năng xử lý mạnh mẽ trong thời gian dài. Cho dù bạn đang làm những tác vụ nặng như biên soạn nhạc; hiển thị mô hình 3D; lập trình, … máy tính sẽ làm việc và xử lý ngay lập tức.', 2),
(21, 'iPhone 12 Pro Max 128GB', 29900000, 'https://www.techinn.com/f/13782/137821848/apple-iphone-12-pro-max-6gb-128gb-6.7.jpg', 'iPhone 12 Pro Max sở hữu màn hình kích thước khó tin, lên tới 6,7 inch, cho bạn trải nghiệm hình ảnh cực đã. Chất lượng đến từ một màn hình công nghệ Super Retina XDR, tấm nền OLED cao cấp và độ phân giải siêu cao thực sự quá tuyệt vời.\r\n\r\nMọi thứ đều trở nên sống động trên iPhone 12 Pro Max, đặc biệt khi bạn xem ảnh, xem phim hay chơi game. Còn bất ngờ hơn khi dù màn hình lớn hơn, nhưng iPhone 12 Pro Max vẫn gọn gàng như thế hệ trước nhờ viền màn hình được tối ưu siêu mỏng đầy tinh tế.', 1),
(22, 'Vertu Signature S Clous De Paris Black', 165000000, 'https://didongso.com.vn/wp-content/uploads/2019/12/Vertu-Signature-S-Clous-De-Paris-Black-1.jpg', 'Vertu Signature S Clous De Paris Stainless Steel là đột phá mới của Signature cổ điển với mô hình Clous De Paris – mô hình trang hoàng theo nghệ thuật mẫu mã cơ khí Guilloche từ thế kỷ 16 đặc trưng bởi các họa tiết hình học được lặp đi lặp lại và chạm khắc vào một nguyên liệu cố định duyệt gia công cơ khí chính xác. Chiếc điện thoại vô cùng sang này được chế tác sở hữu 1580 hoa văn hình vuông, được gia công tường tận cộng những đường vân gia  o trâm tinh xảo. Đây được coi là 1 tuyệt bút nghệ thuật của những nghệ nhân bậc thầy người Anh.', 1),
(23, 'Xiaomi Redmi Note 10 5G 4GB-128GB', 5000000, 'https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/xiaomi-redmi-note-10-5g-5.jpg', 'Xiaomi Redmi Note 10 5G trang bị bộ vi xử lý MediaTek Dimensity 700, con chip sản xuất trên tiến trình 7nm tiên tiến. Với 8 nhân CPU tốc độ 2.2GHz cực mạnh và GPU ARM Mali G57 thế hệ mới, Redmi Note 10 5G hoạt động cực nhanh ở mọi tác vụ, mang tới trải nghiệm mượt mà cho người dùng. Bên cạnh đó 128GB bộ nhớ trong UFS 2.0 sẽ giúp bạn tải game trong chớp mắt, không cần phải chờ đợi.\r\n\r\n', 1),
(24, 'ASUS ROG Strix G15 G513QC-HN015T', 28900000, 'https://laptopworld.vn/media/product/8527_', 'Khả năng làm mát đột phá với keo tản nhiệt kim loại lỏng trên CPU, giúp hệ thống hoạt động mát hơn keo tản nhiệt gốm truyền thống. Hệ thống tản nhiệt nâng cấp mạnh lên đến 6 ống đồng và 4 khe tản nhiệt có kích thước lớn. Nhờ đó, ROG Strix series có thể hoạt động mạnh - mát - êm ái. Độ ồn không quá 45dB ở chế độ turbo, yên tĩnh hơn so với các sản phẩm đối thủ.\r\nChiến game mượt mà với màn hình FHD 300Hz/ 2K 165Hz/ FHD 144Hz với Adaptive-Sync giúp triệt tiêu hiện tượng xé hình. Viền mỏng 4,5mm ở 3 cạnh giúp giảm thiểu sự phân tâm cho trải nghiệm đắm chìm.', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(40, 'trungnd', 'trung@gmail.com', 'cfd12d74bca9357022eb7d8367bcab26'),
(41, 'nguyen van quyet', 'quyet220424@gmail.com', '1e015225c909c21dab5a4c2402fd2d35'),
(42, 'nguyen duc trung', 'trunglua@gmail.com', '61fd3d2ebd022a3065699fbd4aa7b3b9'),
(43, 'nguyen duc trung', 'trung@gmail.com', '61fd3d2ebd022a3065699fbd4aa7b3b9');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `donhangchitiet`
--
ALTER TABLE `donhangchitiet`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT cho bảng `donhangchitiet`
--
ALTER TABLE `donhangchitiet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
