-- Thêm dữ liệu vào bảng TAI_SAN
use pawnshop;

SELECT MA_HOP_DONG FROM HOP_DONG;

INSERT INTO TAI_SAN (MA_TAI_SAN, MA_KHACH_HANG, MA_HOP_DONG, TEN, LOAI, MO_TA, TRANG_THAI) VALUES
('TS001', 'KH001', 'HD001', N'Laptop', N'Điện tử', N'Laptop Dell XPS', N'Cầm cố'),
('TS002', 'KH002', 'HD002', N'Xe máy', N'Xe cộ', N'Xe Honda SH150i', N'Cầm cố'),
('TS003', 'KH003', 'HD003', N'Đồng Hồ', N'Trang sức', N'Đồng hồ Omega', N'Cầm cố'),
('TS004', 'KH004', 'HD004', N'TV', N'Điện tử', N'TV LG OLED 55"', N'Cầm cố'),
('TS005', 'KH005', 'HD005', N'Điện thoại', N'Điện tử', N'Samsung Galaxy S23', N'Cầm cố'),
('TS006', 'KH006', 'HD006', N'Máy ảnh', N'Điện tử', N'Sony Alpha A6400', N'Cầm cố'),
('TS007', 'KH007', 'HD007', N'Vàng', N'Trang sức', N'Lắc vàng 9999 10 chỉ', N'Cầm cố'),
('TS008', 'KH001', 'HD008', N'Loa', N'Điện tử', N'Loa Marshall Stanmore', N'Cầm cố'),
('TS009', 'KH002', 'HD009', N'Xe Đạp', N'Xe cộ', N'Xe đạp thể thao Trek', N'Cầm cố'),
('TS010', 'KH003', 'HD010', N'Máy tính bảng', N'Điện tử', N'iPad Air 5', N'Cầm cố');
