use pawnshop;

# Liệt kê các hợp đồng có giá trị cầm cố trên 20 triệu
SELECT *
FROM HOP_DONG
WHERE GIA_TRI_CAM_CO > 20000000;

# Tìm nhân viên có số hợp đồng thực hiện nhiều nhất
SELECT NV.MA_NHAN_VIEN, NV.HO_TEN, COUNT(HD.MA_HOP_DONG) AS SO_HOP_DONG
FROM NHAN_VIEN NV
         JOIN HOP_DONG HD ON NV.MA_NHAN_VIEN = HD.MA_NHAN_VIEN
GROUP BY NV.MA_NHAN_VIEN, NV.HO_TEN
HAVING COUNT(HD.MA_HOP_DONG) >= ALL (SELECT COUNT(*) FROM HOP_DONG GROUP BY MA_NHAN_VIEN);