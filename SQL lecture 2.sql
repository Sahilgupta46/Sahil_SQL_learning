show databases;
show tables;
create database Sahil03;
use Sahil03;

-- primary key
create table employee(
	id int primary key,
    name varchar(50),
    dept enum('sales','it','hr','mobile development'),
    salary int,
    age int,
    join_date date,
    city varchar(50)
);
select*from employee;

-- insert record into table 
insert into employee (id,name,dept,salary,age,join_date,city) 
value (101,'Joy','sales',45000,56,'2023-11-25','mumbai');

-- WHERE
use classicmodels;

show tables;
select*from customers;

select * from customers where country = "USA";
select customername,phone,creditlimit,city,state, country

from customers where country = "USA";

-- and operator
select customername,phone, creditlimit,city, state, country
from customers where country = "USA";

-- or operator
select customername,phone,creditlimit,city,state,country 
from customers where country = "USA" or creditlimit > 1000000;

-- update query

select customername,phone,creditlimit,city,state,country
from customers where customernumber = 112;

update customers set phone = "9892391043"
where customernumber = 112;

-- delete 
use Sahil03;
select * from employee1;
SET SQL_SAFE_UPDATES=0;
delete from employee1 where id = 101;


