-- Date : 03 May 2025

use classicmodels;
 
select distinct country from customers;

select count(distinct country) from customers;

-- Constraints

create database Ganesh_Mandal;
use Ganesh_Mandal;
CREATE TABLE Student420 (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50)
);

-- Inserting records into the "Customers_45" and "Orders" tables
insert into Student420 (CustomerId, FirstName, LastName)
values
(1, 'Sahil', 'Gupta'),
(2, 'Ritik', 'Gupta');

select*from Student420;
 
Create table Orders (
OrderId int Primary key, 
CustomerId int,
OrderDate date, 
Foreign key (CustomerID) References Student420 (CustomerID)
);
select*from Orders;

insert into Orders (OrderId, CustomerId, OrderDate)
values
(101, 1, '2023-01-15'),	
(102, 2, '2023-02-20');		

-- uniouns claus
CREATE TABLE Customers1 (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100)
);

CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY,
    CompanyName VARCHAR(100),
    Email VARCHAR(100)
);

INSERT INTO Customers1 (CustomerID, FirstName, LastName, Email)
VALUES
    (1, 'Pankaj', 'Sharma', 'pankaj@codeswithpankaj.com'),
    (2, 'Nishant', 'Patel', 'nishant@codeswithpankaj.com'),
    (3, 'Kiran', 'Desai', 'kiran@codeswithpankaj.com'),
    (4, 'Tanvi', 'Mehta', 'tanvi@codeswithpankaj.com'),
    (5, 'Kritek', 'Singh', 'kritek@codeswithpankaj.com');

INSERT INTO Suppliers (SupplierID, CompanyName, Email)
VALUES
    (101, 'ABC Inc.', 'abc@codeswithpankaj.com'),
    (102, 'XYZ Ltd.', 'xyz@codeswithpankaj.com'),
    (103, 'Company A', 'companya@p4n.in');
    
select email from customers1
union
select email from Suppliers;

-- truncate table

truncate table customers1;
select * from customers1;

    
    
 