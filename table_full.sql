create database student_management;
use student_management;

-- tạo bảng classes
create table classes (
classes_id int not null auto_increment primary key,
name varchar(50) not null,
language varchar(50) null,
description varchar(100) null
);

-- tạo bảng address
create table address (
address_id int not null auto_increment primary key,
address varchar(100) not null
);

-- tạo bảng student
create table students (
student_id int not null primary key auto_increment,
fullname varchar(50),
age int not null,
phone int unique
);


-- tạo bảng course
create table course (
course_id int not null auto_increment primary key,
name varchar(50),
description varchar(100)
);

-- tạo bảng point
create table point (
point_id int not null primary key auto_increment,
point double 
);


