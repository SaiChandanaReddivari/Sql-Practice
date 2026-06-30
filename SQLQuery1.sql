-- 1. Retrieve all columns and all rows from the BikeStores table.
SELECT * FROM BikeStore;
--2 Select only the customer name and city from the BikeStores table.
SELECT customers,city FROM BikeStore;
--3Display distinct states from the table.
SELECT DISTINCT state FROM BikeStore;
--4.Show the first 10 rows from the BikeStores table.
SELECT TOP(10) * FROM BikeStore;

-- 5. Find all orders from the state of California (CA).
SELECT * FROM BikeStore
where State = 'CA';

-- 6.total number of rows in table 
select count(*) as total_rows from BikeStore;

-- 7. Find orders where revenue is greater than 1000.
select * from BikeStore 
Where  revenue > 1000;

-- 8. List all products from the brand "Trek".
select * from BikeStore
where brand_name = 'Trek';


-- 9. Show all orders sorted by revenue in descending order.
select * from BikeStore 
order by revenue DESC;

-- 10. Find the maximum revenue from the table.
select max(revenue) as max_revenue  from BikeStore;

-- 11. Find the minimum revenue from the table.
select min(revenue) as min_revenue  from BikeStore;

-- 12 Calculate the total (sum) revenue across all orders.
SELECT SUM(revenue) as total_revenue from BikeStore;


-- 13.find the average revenue per order.
select AVG(revenue) as average_revenue from BikeStore;

--14. Show all records where the store name is "Baldwin Bikes".
select * from BikeStore
where store_name = 'Baldwin Bikes';

--15 List distinct brand names sold in the store.
select Distinct brand_name from BikeStore;

--16 Count distinct customers in the dataset.
select count(distinct customers) as unique_customers from BikeStore;

-- 17 Find all orders with total_units equal to 2.
select * from BikeStore 
where total_units > 2;

-- 18 Show orders sorted by order_date ascending
select * from BikeStore
order by order_date ASC;
 
 -- 19.  Find all orders where revenue is less than 500.
select * from BikeStore 
where revenue < 500;

-- 20 Display order_id, customers, and revenue only.
select order_id,customers,revenue from BikeStore;


-- 21 Find all products whose product_name starts with "Trek".

select * from BikeStore 
where product_name like 'Trek%';

-- 22 Find customers whose name contains "son".
select * from BikeStore
where customers like '%son%';

-- 23 List all orders from states NY and CA. 
select * from BikeStore
where state in ('NY', 'CA');

-- 24 List all orders NOT from state "TX".
select * from BikeStore
where state != 'TX';

-- 25 Show the top 5 most expensive orders by revenue.
select top 5 * from BikeStore
order by revenue DESC;

-- 26 Find all orders where state is "NY" AND brand is "Electra"
select * from BikeStore
where state = 'NY' and brand_name = 'Electra';
 
-- 27 Find orders from "Santa Cruz Bikes" OR "Baldwin Bikes".
select * from BikeStore
where  store_name = 'Santa Cruz Bikes' or store_name = 'Balwin Bikes';

-- 28  Count how many orders came from each store.
select store_name, count(total_units) as orders from BikeStore
group by store_name;

-- 29 Show total revenue per brand.
select brand_name ,sum(revenue) as total_revenue from BikeStore
Group by brand_name;

-- 30 Find orders where revenue is between 500 and 2000.
select * from BikeStore
where revenue between 500 and 2000;

-- 31 Insert a new order record into the BikeStores table.
insert into BikeStore Values(1001,'john doe','Los Angeles','CA','2024-06-01',3,1500,'Trek Bike','Mountain','Trek','Baldwin Bikes','Jane Smith');

-- 32  Update the revenue to 999.99 for order_id = 1.

update BikeStore set revenue = 999.99 where order_id = 1;

-- 33 Delete all records where state is "TX".
delete from BikeStore where state = 'TX';


-- 34 List all distinct category names available.
select distinct category_name from BikeStore;

-- 35 Show all records where sales_rep is "Mireya Copeland".
select * from BikeStore 
where sales_rep = 'Mireya Copeland';

-- 36 Find all orders where total_units is NOT 1.
select * from BikeStore
where total_units != 1;

-- 37 Show order_id and customer name ordered alphabetically by customer.

select order_id, customers 
from BikeStore
Order by customers ASC;

-- 38 Count the number of distinct product names.
select count(distinct product_name) as unique_products from BikeStore;


-- 39 Find all rows where sales_rep is NULL.
select * from BikeStore 
where sales_rep is NULL;

-- 40  Find all rows where revenue is NOT NULL.
select * from BikeStore 
where sales_rep is NOT NULL;

-- 41  Show total units sold per category.
select category_name,sum(total_units) as tota_units from BikeStore
group by category_name; 

-- 42 Find all records where brand_name is in ("Trek", "Surly", "Electra").
select * from BikeStore
where brand_name in ('Trek','Surly','Electra');

-- 43 Show all records where city ends with "Park".

select * from BikeStore 
where city like '%Park';

-- 44 Add a new column "discount" to the BikeStores table with a default value of 0.
alter table BikeStore add  discount decimal(5,2) default 0;

-- 45 
alter table BikeStore drop column discount;
 
 -- 46  Rename the BikeStores table to BikeOrders.
exec sp_rename 'practiceDB.BikeStore' , 'practiceDB.BikeOrders';


exec sp_helpdb;

-- 47  Show all orders where revenue equals exactly 599.99.
select * from BikeStore
where revenue = 599.99;

-- 48 Delete all rows from BikeStores without removing the table structure
truncate table BikeStore;

-- 49  Completely remove the BikeStores table from the database.
Drop table BikeStore;

exec sp_tables;

-- 50 Completely Delete the Data Base
Drop database practiceDB;













