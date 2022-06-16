use quan_ly_sinh_vien;

-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất
select * from `subject` 
where credit = (select max(credit)  from `subject`);

-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
select s.* from `subject` s 
join mark m on s.sub_id = m.sub_id
where m.mark= (select max(mark) from mark);

-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
select s.student_id, s.student_name, avg(mark) as DTB from student s
join mark m on s.student_id = m.student_id
group by s.student_id, s.student_name
order by mark desc;
SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));