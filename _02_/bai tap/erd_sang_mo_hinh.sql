create database erd_sang_mo_hinh;

use erd_sang_mo_hinh;

create table phieu_xuat(
so_px int primary key auto_increment,
ngay_xuat date
);
create table vat_tu(
ma_vtu int primary key auto_increment,
ten_vtu varchar(20)
);
create table phieu_nhap(
so_pn int primary key auto_increment,
ngay_nhap date
);
create table ncc_sdt(
sdt varchar(10) primary key 
);
create table nha_cc(
ma_ncc int primary key auto_increment,
ten_ncc varchar(30),
dia_chi varchar(50),
id_sdt varchar(10),
foreign key (id_sdt) references ncc_sdt(sdt)
);
create table don_dh(
so_dh int primary key auto_increment,
ngay_dh date,
ma_ncc int,
foreign key(ma_ncc) references nha_cc(ma_ncc)
);
create table chi_tiet_phieu_xuat(
dg_xuat int,
sl_xuat int,
so_px int,
ma_vtu int,
primary key(so_px, ma_vtu),
foreign key(so_px) references phieu_xuat(so_px),
foreign key(ma_vtu) references vat_tu(ma_vtu)
);
create table ct_phieu_nhap(
dg_nhap int,
sl_nhap int,
ma_vtu int,
so_pn int,
primary key(ma_vtu,so_pn),
foreign key(ma_vtu) references vat_tu(ma_vtu),
foreign key(so_pn) references phieu_nhap(so_pn)
);
create table ct_don_dh(
ma_vtu int,
so_dh int,
primary key(ma_vtu, so_dh),
foreign key(ma_vtu) references vat_tu(ma_vtu),
foreign key(so_dh) references don_dh(so_dh)
);
