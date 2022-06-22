use case_study;

-- 17.	Cập nhật thông tin những khách hàng có ten_loai_khach từ Platinum lên Diamond, 
-- chỉ cập nhật những khách hàng đã từng đặt phòng với Tổng Tiền thanh toán trong năm 2021 
-- là lớn hơn 10.000.000 VNĐ. 
update khach_hang
set ma_loai_khach = 1
where ma_khach_hang = (
select * from (
select kh.ma_khach_hang from khach_hang kh
join hop_dong hd on hd.ma_khach_hang = kh.ma_khach_hang
join dich_vu dv on dv.ma_dich_vu = hd.ma_dich_vu
join hop_dong_chi_tiet hdct on hdct.ma_hop_dong = hd.ma_hop_dong
join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
join loai_khach lk on lk.ma_loai_khach = kh.ma_loai_khach
where (dv.chi_phi_thue + hdct.so_luong * dvdk.gia) >= 10000000 and lk.ten_loai_khach = 'Platinum') as x);

select ma_khach_hang, ho_ten from khach_hang where status = e;