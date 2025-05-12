-- Q1 
-- Create the Authors table with appropriate data types and constraints. Make author_id the primary key and ensure first_name and last_name cannot be null.

Create database Sahil03;
Use Sahil03;

Create table Authors (
Authors_Id int primary key, 
First_Name varchar(30) not null,
Last_Name varchar (30) not null,
Birth_Year int,
Nationality varchar (30)
);
select * from Authors;

alter table Authors add Birth_Year int;

-- Q2
-- creating Books table to store Books details.

Create table Books (
Book_Id int primary key,
Title varchar (30),
Authors_Id int,
Publication_Year int,
Genre varchar (30),
Price decimal (10,2) check (Price > 0),
Stock int default 0,
Foreign key (Authors_Id) references Authors (Authors_Id)
);
select * from Books;

-- Q3.
-- inserting data in the table.
insert into Authors (Authors_Id, First_Name, Last_Name, Nationality, Birth_Year)
Values
(1,'Ganesh','Saroj','France',1969),
(2,'Ritik','Gupta','London',1989),
(3,'Vijay','Verma','India',1947);

select * from Authors; 

-- Q4.
insert into Books (Book_Id, Title, Authors_Id, Publication_Year, Genre, Price, Stock)
Values
(1011, 'Hack Your Habits', 2, 2013, 'Productivity', 30, 7),
(1012, 'Life of Human', 3, 2020, 'Philosophy', 20, 10),
(1013, 'Brains at Work', 1, 2015, 'Psychology', 40, 8),
(1014, 'Minimalist Hustle', 1, 2017, 'Self-help', 25, 12),
(1015, 'Rain Between the Pages', 2, 2012, 'Literary Fiction', 50, 10);

select * from Books;

-- Q5
-- Write a query to find all books priced between $15 and $25.

select * from Books where Price between 15 and 25;
select * from Books where Stock between 5 and 10; 
select * from Books where Stock >5 and Stock <10;

-- Q6
-- finding books with either "Python" or "Java" in their titles.
select * from Books where Title like 'Python%' or 'Java';
-- here in this table,"Python" or "Java" does not exist so, 
-- finding books with either "Human" or "Rain" in their titles.
select * from Books where Title like '%Human%' or '%Rain%';

-- Q7
-- List all authors who were born after 1980 AND are either American or British.
select * from Authors where Birth_Year > 1980 and Nationality in ('American' , 'British');

-- here in this table,American or British does not exist so, 
-- listing authors who were born after 1980 and either indian or french
select * from Authors where Birth_Year > 1980 and Nationality in ('India','France');

-- Q8.
-- Display all customers who joined in 2023 but haven't placed any orders.

CREATE TABLE Customers (
    Customer_id INT PRIMARY KEY,
    First_name VARCHAR(30) ,
    Last_name VARCHAR(30) ,
    Email VARCHAR(30) UNIQUE ,
    Join_Date DATE 
);
select * from Customers;
Insert into Customers (Customer_id, First_name, Last_name, Email, Join_Date)
Values
(1, 'Ritik', 'Gupta', 'ritik.@gmail.com', '2023-01-10'),
(2, 'Vijay', 'Verma', 'vijay.@gmail.com', '2023-02-05'),
(3, 'Abhi', 'Gupta', 'abhi.@gmail.com', '2022-11-25'),
(4, 'Ganesh', 'Saroj', 'ganesh.@gmail.com', '2023-07-18'),
(5, 'Imran', 'Khan', 'imran.@gmail.com', '2021-09-30');

Create table Orders (
Order_Id int Primary key,
Customer_id int, 
Book_Id int, 
Quantity int check (Quantity > 0),
Total_Amount decimal(18,2) check (Total_Amount > 0),
Foreign key (Customer_id) References Customers (Customer_id),
Foreign key (Book_Id) References Books (Book_Id));

select * from Orders;
insert into Orders ( Order_Id, Customer_id, Book_Id, Quantity, Total_Amount)
values
(101, 1, 1011, 5, 55),
(102, 2, 1012, 4, 95),
(103, 3, 1013, 8, 50),
(104, 4, 1014, 6, 90),
(105, 5, 1015, 3, 30);

select * from Customers where Year(Join_Date) = 2023
and Customer_id not in (
	select Distinct Customer_id from Orders);















