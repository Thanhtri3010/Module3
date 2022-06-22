use case_study;

-- 18.Xóa những khách hàng có hợp đồng trước năm 2021 (chú ý ràng buộc giữa các bảng). 
update khach_hang set `status` =1
where khach_hang.ma_khach_hang in (
select * from(
select kh.ma_khach_hang from khach_hang kh 
join hop_dong hd on kh.ma_khach_hang = hd.ma_hop_dong
where year(hd.ngay_lam_hop_dong)<2021) temp);
select ma_khach_hang, ho_ten from khach_hang where `status` = 1;