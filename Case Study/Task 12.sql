use case_study;

-- Hiển thị thông tin ma_hop_dong, ho_ten (nhân viên), ho_ten (khách hàng), so_dien_thoai (khách hàng), ten_dich_vu, so_luong_dich_vu_di_kem (được tính dựa trên việc sum so_luong ở dich_vu_di_kem), 
-- tien_dat_coc của tất cả các dịch vụ đã từng được khách hàng đặt vào 3 tháng cuối năm 2020 nhưng chưa từng được khách hàng đặt vào 6 tháng đầu năm 2021 
 select hd.ma_hop_dong, nv.ho_ten as ho_ten_nhan_vien, kh.ho_ten as ho_ten_khach_hang,
 kh.so_dien_thoai as sdt_khach_hang, dv.ten_dich_vu,ifnull(sum(hdct.so_luong),0)  as so_luong_dich_vu_di_kem, hd.tien_dat_coc
 from hop_dong hd
 join nhan_vien nv on hd.ma_nhan_vien = nv.ma_nhan_vien
 join khach_hang kh on hd.ma_khach_hang = kh.ma_khach_hang
 join dich_vu dv on hd.ma_dich_vu = dv.ma_dich_vu
 join hop_dong_chi_tiet hdct on hd.ma_hop_dong = hdct.ma_hop_dong
where hd.ngay_lam_hop_dong between '2020-10-01' and '2021-12-30'
having hd.ma_hop_dong not in (select hop_dong.ma_hop_dong from hop_dong
join khach_hang kh on hop_dong.ma_khach_hang = kh.ma_khach_hang
where (month(hop_dong.ngay_lam_hop_dong) between 1 and 6) and year(hop_dong.ngay_lam_hop_dong) = 2021)
order by hd.ma_hop_dong;