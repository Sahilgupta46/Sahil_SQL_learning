-- like
use classicmodels;

select * from customers;

select * from customers where customername like "a%";       -- (starting lettr a%) 
select * from customers where customername like "%a%";      -- (middle letter %a%)
select * from customers where customername like "%e";       -- (last letter %e)
select * from customers where customername like "mini%";    

-- top (limit)

select * from customers limit 10;
 
-- order by
select * from customers order by creditlimit asc;
select * from customers order by creditlimit desc;
select * from customers order by customername asc;
select * from customers order by customername desc;

-- distinct keyword     (duplicate name not come from distinct)
select distinct country from customers;  

-- group by 
select country from customers group by country; 
  
-- count()
select country , count(country) as total_count from customers group by country;

-- sum()
select sum(creditlimit) from customers where country = "USA";


 

