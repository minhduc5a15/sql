use pawnshop;

INSERT INTO HOA_DON (MA_HOA_DON, MA_KHACH_HANG, MA_NHAN_VIEN, MA_HOP_DONG, SO_TIEN_TRA, NGAY_XUAT)
SELECT
    CONCAT('HDN', LPAD(ROW_NUMBER() OVER (ORDER BY MA_HOP_DONG), 3, '0')),
    MA_KHACH_HANG,
    MA_NHAN_VIEN,
    MA_HOP_DONG,
    GIA_TRI_CAM_CO + (GIA_TRI_CAM_CO * LAI_SUAT / 100 * TIMESTAMPDIFF(MONTH, NGAY_CAM, NGAY_CHUOC)) AS SO_TIEN_TRA,
    NGAY_CHUOC
FROM HOP_DONG
WHERE MA_HOP_DONG IN ('HD001', 'HD003', 'HD005');