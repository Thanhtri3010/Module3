use case_study;

-- Hiển thị thông tin ho_ten khách hàng có trong hệ thống, với yêu cầu ho_ten không trùng nhau.
select kh.ho_ten from khach_hang kh
group by ho_ten
having count(ho_ten) >1