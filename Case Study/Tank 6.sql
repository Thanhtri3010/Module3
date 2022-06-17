use case_study;
-- 6.Hiển thị ma_dich_vu, ten_dich_vu, dien_tich, chi_phi_thue, ten_loai_dich_vu 
-- của tất cả các loại dịch vụ chưa từng được khách hàng thực hiện đặt từ quý 1 của năm 2021 (Quý 1 là tháng 1, 2, 3).
select dv.ma_dich_vu, dv.ten_dich_vu, dv.dien_tich, dv.chi_phi_thue, lvd.ten_loai_dich_vu from dich_vu dv
join loai_dich_vu lvd on dv.ma_loai_dich_vu = lvd.ma_loai_dich_vu
join hop_dong hd on dv.ma_dich_vu = hd.ma_dich_vu
group by ma_dich_vu
having dv.ma_dich_vu not in(
select dv1.ma_dich_vu from dich_vu dv1
join loai_dich_vu lvd on dv1.ma_loai_dich_vu = lvd.ma_loai_dich_vu
join hop_dong hd on dv1.ma_dich_vu = hd.ma_dich_vu
where month(ngay_lam_hop_dong) between 1 and 3
)
order by chi_phi_thue asc;
                   