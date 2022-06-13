create database if not exists quan_ly_ban_hang;

use quan_ly_ban_hang;

create table customer(
c_id int not null auto_increment primary key,
c_name varchar(30) not null,
c_age int not null
);

create table `order`(
o_id int not null auto_increment primary key,
c_id int not null,
o_data datetime,
o_total_price double,
foreign key (c_id) references customer (c_id) 
);

create table product(
p_id int not null auto_increment primary key,
p_name varchar(30),
p_price double
);
 
 create table order_detail(
 o_id int not null,
 p_id int not null,
 foreign key (o_id) references `order`(o_id),
 foreign key (p_id) references product (p_id),
 odQTY int
 );