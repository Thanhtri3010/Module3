use case_study;

-- 24.Tạo Stored Procedure sp_them_moi_hop_dong dùng để thêm mới vào bảng hop_dong với yêu cầu
-- sp_them_moi_hop_dong phải thực hiện kiểm tra tính hợp lệ của dữ liệu bổ sung, với nguyên tắc 
-- không được trùng khóa chính và đảm bảo toàn vẹn tham chiếu đến các bảng liên quan. 
delimiter //
create procedure sp_them_moi_hop_dong(ngay_lam_hop_dong datetime, ngay_ket_thuc datetime, 
tien_dat_coc double, ma_nhan_vien int, ma_khach_hang int, ma_dich_vu int)
begin
	insert into hop_dong (ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc, ma_nhan_vien, ma_khach_hang, ma_dich_vu)
    values (ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc, ma_nhan_vien, ma_khach_hang, ma_dich_vu);
end
// delimiter ;

call sp_them_moi_hop_dong('2020-08-07', '2020-11-08', 0, 1, 4, 2);