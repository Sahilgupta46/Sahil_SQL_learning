-- Date : 06 May 2025

-- left join

use Sahil03;

Create table Customers (
	CustomerID int primary key,
    FirstName varchar (20),
    LastName varchar (20),
    Email varchar (50)
    );
    
Create table Orders (
	OrderID int primary key,
    CustomerID int,
    OrderDate date,
    TotalAmount decimal(10,2)
    );
    
Insert into Customers (CustomerID, FirstName, LastName, Email)
Values
	(1, 'Pankaj', 'Sharma', 'pankaj@codeswithpankaj.com'),
    (2, 'Nishant', 'Patel', 'nishant@codeswithpankaj.com'),
    (3, 'Kiran', 'Desai', 'kiran@codeswithpankaj.com'),
    (4, 'Tanvi', 'Mehta', 'tanvi@codeswithpankaj.com'),
    (5, 'Kritek', 'Singh', 'kritek@codeswithpankaj.com'),
    (8, 'Yash', 'Jain', 'jain@codeswithpankaj.com'),
    (10, 'Pooja', 'Roy', 'roy@codeswithpankaj.com');

Insert into Orders (OrderId, CustomerId, OrderDate, TotalAmount)
Values
	(101, 1, '2023-01-15', 250.00),
    (102, 2, '2023-02-20', 120.50),
    (103, 3, '2023-03-10', 320.75),
    (111, 11, '2023-05-12', 210.00),
    (109, 4, '2023-05-15', 260.00),
    (112, 9, '2023-05-18', 280.00);
    
select*from Customers;
select*from Orders;

-- left join
select Customers.FirstName , Customers.Email , Orders.OrderDate , Orders.TotalAmount
from Customers left join Orders
on Customers.CustomerID = Orders.CustomerID;

-- right join
select Customers.FirstName , Customers.Email , Orders.OrderDate , Orders.TotalAmount
from Customers right join Orders
on Customers.CustomerID = Orders.CustomerID;

-- inner join
select Customers.FirstName , Customers.Email , Orders.OrderDate , Orders.TotalAmount
from Customers inner join Orders
on Customers.CustomerID = Orders.CustomerID;

-- full join
select Customers.FirstName , Customers.Email , Orders.OrderDate , Orders.TotalAmount
from Customers left join Orders
on Customers.CustomerID = Orders.CustomerID
union
select Customers.FirstName , Customers.Email , Orders.OrderDate , Orders.TotalAmount
from Customers right join Orders
on Customers.CustomerID = Orders.CustomerID;

-- Date
select now();
select curdate();
select curtime();
select current_timestamp();

select orderdate , year(orderdate) from orders;
select orderdate , month(orderdate) from orders;
select orderdate , day(orderdate) from orders;

-- Date_Add (+)
select orderdate , Date_Add(orderdate , interval 10 Day) as new_date from orders;
select orderdate , Date_Add(orderdate , interval 10 Year) as new_date from orders;
select orderdate , Date_Add(orderdate , interval 10 Month) as new_date from orders;

-- Date_Sub (-)
select orderdate , Date_Add(orderdate , interval 10 Day) as new_date from orders;
select orderdate , Date_Add(orderdate , interval 10 Year) as new_date from orders;
select orderdate , Date_Add(orderdate , interval 10 Month) as new_da

-- CONCAT
select*from Customers;

-- CONCAT
select * , concat(FirstName," ", LastName) as Full_Name from Customers;
select * , concat(CustomerID," ", Email) as New_Email from Customers;

-- LENGTH

select * , LENGTH(concat(FirstName," ",LastName)) as full_lenght from customers;
select * , UPPER(concat(FirstName," ", LastName)) as full_name from Customers;

-- SUBSTRING

select FirstName , SUBSTRING(FirstName,1,4) from Customers;

-- REPLACE
 select Email , Replace(Email,'codeswithpankaj.com','codeswithsahil.com') as New_Email
 from Customers;
 
 select Email , Replace(Email,'codeswithsahil.com','codeswithpankaj.com') as New_Email
 from Customers where CustomerID = 1;

















