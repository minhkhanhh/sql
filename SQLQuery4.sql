create table NHACUNGCAP(
MaNhaCC varchar(20) primary key ,
TenNhaCC varchar(255) not null,
DiaChi varchar(255) not null,
SoDT int not null unique check(SoDT like '0%'),
MaSoThue int
);
create table LOAIDICHVU(
MaLoaiDV varchar(20) primary key,
TenLoaiDV varchar(255) not null
);
create table MUCPHI(
MaMP varchar(20) primary key ,
DonGia decimal(12,4) not null check(DonGia >=0)default 0,
MoTa varchar(255) not null
);
create table DONGXE(
DongXe varchar(255) primary key,
HangXe varchar(20) not null,
SoChoNgoi int not null
);
create table DANGKYCUNGCAP(
MaDKCC int primary key,
MaNhaCC varchar(20) foreign key references NHACUNGCAP(MaNhaCC),
MaLoaiDV varchar(20) foreign key references LOAIDICHVU(MaLoaiDV),
DongXe varchar(255) foreign key references DONGXE(DongXe),
MaMP varchar(20) foreign key references MUCPHI(MaMP),
NgayBatDauCungCap date not null check(NgayBatDauCungCap <= GetDate()),
NgayKetThucCungCap date not null,
SoLuongXeDangKy int not null,
);