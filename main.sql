CREATE DATABASE pawnshop;

use pawnshop;

create table KHACH_HANG
(
    MA_KHACH_HANG nvarchar(10) not null,
    CCCD          nvarchar(12) not null,
    HO_TEN        nvarchar(30) not null,
    DIEN_THOAI    nvarchar(10) not null,
    DIA_CHI       nvarchar(50) not null,
    EMAIL         nvarchar(20) not null,

    primary key (MA_KHACH_HANG),
    unique (CCCD)
);

CREATE TABLE NHAN_VIEN
(
    MA_NHAN_VIEN nvarchar(10) not null,
    CCCD         nvarchar(12) not null,
    HO_TEN       nvarchar(12) not null,
    DIEN_THOAI   nvarchar(10) not null,
    DIA_CHI      nvarchar(50) not null,
    EMAIL        nvarchar(20) not null,
    CHUC_VU      nvarchar(20) not null,
    LUONG        int          not null,
    primary key (MA_NHAN_VIEN),
    unique (CCCD)
);

create table HOP_DONG
(
    MA_HOP_DONG      nvarchar(10)  not null,
    MA_NHAN_VIEN     nvarchar(10)  not null,
    MA_KHACH_HANG    nvarchar(10)  not null,
    NGAY_CAM         date          not null,
    NGAY_CHUOC       date          not null,
    LAI_SUAT         DECIMAL(5, 2) not null,
    GIA_TRI_CAM_CO   int           not null,
    GIA_TRI_UOC_TINH int           not null,

    primary key (MA_HOP_DONG),

    foreign key (MA_KHACH_HANG) references KHACH_HANG (MA_KHACH_HANG),
    foreign key (MA_NHAN_VIEN) references NHAN_VIEN (MA_NHAN_VIEN),

    CHECK (NGAY_CHUOC > NGAY_CAM)
);

create table TAI_SAN
(
    MA_TAI_SAN    nvarchar(10)  not null,
    MA_KHACH_HANG nvarchar(10)  not null,
    MA_HOP_DONG   nvarchar(10)  not null,
    TEN           nvarchar(20)  not null,
    LOAI          nvarchar(10)  not null,
    MO_TA         nvarchar(255) null,
    TRANG_THAI    nvarchar(10)  not null,

    primary key (MA_TAI_SAN),

    foreign key (MA_KHACH_HANG) references KHACH_HANG (MA_KHACH_HANG),
    foreign key (MA_HOP_DONG) references HOP_DONG (MA_HOP_DONG)
);

create table HOA_DON
(
    MA_HOA_DON    nvarchar(10) not null,
    MA_KHACH_HANG nvarchar(10) not null,
    MA_NHAN_VIEN  nvarchar(10) not null,
    MA_HOP_DONG   nvarchar(10) not null,
    SO_TIEN_TRA   int          not null,
    NGAY_XUAT     date         not null,

    primary key (MA_HOA_DON),

    foreign key (MA_KHACH_HANG) references KHACH_HANG (MA_KHACH_HANG),
    foreign key (MA_NHAN_VIEN) references NHAN_VIEN (MA_NHAN_VIEN),
    foreign key (MA_HOP_DONG) references HOP_DONG (MA_HOP_DONG)
);
