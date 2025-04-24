-- list of database 
show databases;
-- create database 
create database Sahil03;
-- select database
use Sahil03;
-- delete database
-- drop database Sahil03;
-- create table

create table employee (
id int, 
name char(20), 
dept enum('sales','it','hr','mobile develop'),
salary int,
age int,
join_date date,
city char(20)
);

-- show list of table 
show tables;

-- open table and check data
select * from employee;

-- insert record into table
insert into employee (id,name, dept, salary,age,join_date,city)
value (101, 'Joy', 'sales', 55000, 45, '2023-11-25', 'mumbai');

-- multiple
insert into employee (id,name,dept,salary,age,join_date,city) 
values (101,'Joy','sales',55000,45,'2023-11-25','mumbai'),
(101,'Joy','sales',55000,45,'2023-11-25','mumbai'),
(101,'Joy','sales',55000,45,'2023-11-25','mumbai'),
(101,'Joy','sales',55000,45,'2023-11-25','mumbai'),
(101,'Joy','sales',55000,45,'2023-11-25','mumbai'),
(101,'Joy','sales',55000,45,'2023-11-25','mumbai');

