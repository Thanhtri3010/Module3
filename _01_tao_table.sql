CREATE DATABASE student_management;

use student_management;

CREATE TABLE class (
id int not null,
`name` varchar(50) null
) ; 

CREATE TABLE teacher(
id int not null,
`name` varchar(50) null,
age date null,
country varchar(50) null
);