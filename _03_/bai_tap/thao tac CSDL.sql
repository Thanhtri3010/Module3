use quan_ly_ban_hang;

-- Thêm dữ liệu vào trong 4 bảng 
 insert into customer
 value (1,'Minh Quan',10),
	   (2,'Ngoc Oanh',20),
       (3,'Hong Ha', 50);
insert into `order`
value (1,1,'2006-03-21',null),
	  (2,2,'2006-03-23',null),
      (3,1,'2006-03-16',null);
insert into product
value (1,'May Giac',3),
	  (2,'Tu Lanh',5),
      (3,'Dieu Hoa',7),
      (4,'Quat',1),
      (5,'Bep Dien',2);
insert into order_detail
value (1,1,3),
	  (1,3,7),
	  (1,4,2),
	  (2,1,1),
	  (3,1,8),
	  (2,5,4),
	  (2,3,3);
      
-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order 
select o_id, o_date, o_total_price from `order`;

-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
select  customer.c_name, product.p_name from customer
join `order` on customer.c_id =`order`.c_id
join order_detail on `order`.o_id = order_detail.o_id
join product on order_detail.p_id = product.p_id;

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
select customer.*, count(`order`.c_id) as so_luong from customer
left join `order` on customer.c_id = `order`.c_id
group by c_id having count(`order`.c_id)=0;

-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn. 
-- Giá bán của từng loại được tính = odQTY*pPrice)
 
 select `order`.o_id, `order`.o_date, sum(order_detail.od_qty* product.p_price) from `order`
join order_detail on `order`.o_id = order_detail.o_id
join product on order_detail.p_id = product.p_id
group by o_id;

