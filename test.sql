use pawnshop;

# Tính doanh thu từ các hợp đồng đã thực hiện
SELECT SUM(HD.SO_TIEN_TRA) - SUM(HDONG.GIA_TRI_CAM_CO) AS DOANH_THU
FROM HOA_DON HD
         JOIN HOP_DONG HDONG ON HD.MA_HOP_DONG = HDONG.MA_HOP_DONG;
