drop database if exists demo;
create database demo;

use demo;

create table products(
id int auto_increment primary key,
product_code varchar(10),
product_name varchar(30),
product_price double,
product_amount int,
product_description varchar(100),
product_status bit(1) 
);

insert into products
value(1,'Apple','Iphone 13',2000,1,'Máy mới',1),
	 (2,'oppo','Reno',900,2,'Máy cũ',1),
     (3,'SamSung', 'A20',1200,5,'Máy mới',0),
     (4,'Xiaomi','Remi 1',800,4,'Máy cũ',1),
     (5,'Nokia','1100i',700,8,'Máy cũ',0);
     
-- Tạo Unique Index trên bảng Products (sử dụng cột productCode để tạo chỉ mục)
create index products_code_index on products(product_code);
-- Tạo Composite Index trên bảng Products (sử dụng 2 cột productName và productPrice)
create index product_index on products(product_name,product_price);
-- Sử dụng câu lệnh EXPLAIN để biết được câu lệnh SQL của bạn thực thi như nào
explain select * from products where product_code = 'Apple' ;

-- Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products.
create view product_view as
select p.product_code, p.product_name, p.product_price, p.product_status from products p;
 
-- Tiến hành sửa đổi view
update product_view set product_name ='A21' where product_code ='SamSung';

-- Tiến hành xoá view
drop view product_view;

-- Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product
delimiter //
create procedure view_product()
begin
select * from products;
end
// delimiter ;

call view_product();
-- Tạo store procedure thêm một sản phẩm mới
delimiter // 
create procedure add_product(
product_code varchar(10),
product_name varchar(30),
product_price double,
product_amount int,
product_description varchar(100))
begin
insert into products(product_code, product_name, product_price, product_amount, product_description)
value(product_code, product_name, product_price, product_amount, product_description);
end
// delimiter ;

call add_product('nokia','8800',2500,3,'Máy mới');

-- Tạo store procedure sửa thông tin sản phẩm theo id
delimiter //
create procedure edit_product(edit_product_id int)
begin

end
// delimiter ;
-- Tạo store procedure xoá sản phẩm theo id
delimiter //
create procedure delete_product(delete_product_id int)
begin
	delete from product where id = delete_product_id;
end
// delimiter ;
call delete_product(2);