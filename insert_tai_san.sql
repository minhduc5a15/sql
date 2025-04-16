-- Thêm dữ liệu vào bảng TAI_SAN
use pawnshop;

SELECT MA_HOP_DONG FROM HOP_DONG;

INSERT INTO TAI_SAN (MA_TAI_SAN, MA_KHACH_HANG, MA_HOP_DONG, TEN, LOAI, MO_TA, TRANG_THAI) VALUES
('TS001', 'KH001', 'HD001', 'Laptop', 'Điện tử', 'Laptop Dell XPS', 'Cầm cố'),
('TS002', 'KH002', 'HD002', 'Xe máy', 'Xe cộ', 'Xe Honda SH150i', 'Cầm cố'),
('TS003', 'KH003', 'HD003', 'Đồng Hồ', 'Trang sức', 'Đồng hồ Omega', 'Cầm cố'),
('TS004', 'KH004', 'HD004', 'TV', 'Điện tử', 'TV LG OLED 55"', 'Cầm cố'),
('TS005', 'KH005', 'HD005', 'Điện thoại', 'Điện tử', 'Samsung Galaxy S23', 'Cầm cố'),
('TS006', 'KH006', 'HD006', 'Máy ảnh', 'Điện tử', 'Sony Alpha A6400', 'Cầm cố'),
('TS007', 'KH007', 'HD007', 'Vàng', 'Trang sức', 'Lắc vàng 9999 10 chỉ', 'Cầm cố'),
('TS008', 'KH001', 'HD008', 'Loa', 'Điện tử', 'Loa Marshall Stanmore', 'Cầm cố'),
('TS009', 'KH002', 'HD009', 'Xe Đạp', 'Xe cộ', 'Xe đạp thể thao Trek', 'Cầm cố'),
('TS010', 'KH003', 'HD010', 'Máy tính bảng', 'Điện tử', 'iPad Air 5', 'Cầm cố');
