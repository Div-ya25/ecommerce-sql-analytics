create database ecommerce_analytics;
use ecommerce_analytics;

show databases;

####table customers
create table customers(
customer_id int primary key,customer_name varchar(50),city varchar(50),signup_date date);


####table orders
create table orders(
order_id int primary key,customer_id int,order_date date,status varchar(20),
foreign key (customer_id) references customers(customer_id));
alter table orders add amount decimal(10,2);

INSERT INTO customers (customer_id, customer_name, city, signup_date)
VALUES
(1, 'Aarav Sharma', 'Mumbai', '2024-01-15'),
(2, 'Ananya Nair', 'Kochi', '2025-02-10'),
(3, 'Rahul Menon', 'Bangalore', '2024-06-22'),
(4, 'Meera Krishnan', 'Chennai', '2025-01-18'),
(5, 'Arjun Patel', 'Ahmedabad', '2023-11-05'),
(6, 'Diya Thomas', 'Kochi', '2025-03-12'),
(7, 'Vishal Kumar', 'Delhi', '2024-08-19'),
(8, 'Sneha Reddy', 'Hyderabad', '2025-04-25'),
(9, 'Aditya Singh', 'Pune', '2023-09-14'),
(10, 'Kavya Iyer', 'Chennai', '2025-05-08'),
(11, 'Rohan Das', 'Kolkata', '2024-03-30'),
(12, 'Ishita Kapoor', 'Delhi', '2025-06-17'),
(13, 'Nikhil Joshi', 'Mumbai', '2024-10-11'),
(14, 'Pooja Suresh', 'Bangalore', '2025-07-02'),
(15, 'Karan Shah', 'Ahmedabad', '2024-12-20'),
(16, 'Lakshmi Nair', 'Kochi', '2025-08-15'),
(17, 'Siddharth Rao', 'Hyderabad', '2023-07-28'),
(18, 'Neha Verma', 'Pune', '2025-09-05'),
(19, 'Manu George', 'Kochi', '2024-05-16'),
(20, 'Priya Menon', 'Chennai', '2025-10-21'),
(21, 'Akash Gupta', 'Delhi', '2024-02-09'),
(22, 'Amritha Pillai', 'Kochi', '2025-11-03'),
(23, 'Vivek Babu', 'Bangalore', '2023-12-12'),
(24, 'Shreya Roy', 'Kolkata', '2025-03-29'),
(25, 'Harish Kumar', 'Mumbai', '2024-07-07'),
(26, 'Reshma Paul', 'Hyderabad', '2025-01-30'),
(27, 'Sanjay Patel', 'Ahmedabad', '2024-09-18'),
(28, 'Nandini Rao', 'Pune', '2025-02-24'),
(29, 'Abhishek Jain', 'Delhi', '2023-10-06'),
(30, 'Aishwarya Das', 'Kolkata', '2025-12-01');

select* from customers;

INSERT INTO orders (order_id, customer_id, order_date, status, amount)
VALUES
(101, 1, '2025-01-20', 'delivered', 2499.00),
(102, 2, '2025-02-15', 'delivered', 1599.00),
(103, 3, '2025-03-10', 'cancelled', 3200.00),
(104, 4, '2025-03-25', 'delivered', 4599.00),
(105, 5, '2025-04-05', 'shipped', 1899.00),
(106, 6, '2025-04-18', 'delivered', 2799.00),
(107, 7, '2025-05-02', 'delivered', 5999.00),
(108, 8, '2025-05-19', 'pending', 1299.00),
(109, 9, '2025-06-07', 'delivered', 3499.00),
(110, 10, '2025-06-21', 'delivered', 2199.00),
(111, 1, '2025-07-05', 'delivered', 4299.00),
(112, 11, '2025-07-18', 'shipped', 1799.00),
(113, 12, '2025-08-03', 'delivered', 6499.00),
(114, 13, '2025-08-15', 'cancelled', 2399.00),
(115, 14, '2025-08-28', 'delivered', 3299.00),
(116, 15, '2025-09-06', 'delivered', 5499.00),
(117, 16, '2025-09-20', 'pending', 1499.00),
(118, 17, '2025-10-04', 'delivered', 3899.00),
(119, 18, '2025-10-19', 'shipped', 2599.00),
(120, 19, '2025-11-02', 'delivered', 7199.00),
(121, 20, '2025-11-15', 'delivered', 1999.00),
(122, 21, '2025-11-28', 'cancelled', 2899.00),
(123, 22, '2025-12-05', 'delivered', 4599.00),
(124, 23, '2025-12-12', 'shipped', 2399.00),
(125, 24, '2025-12-20', 'delivered', 5799.00),
(126, 25, '2026-01-05', 'delivered', 3199.00),
(127, 26, '2026-01-15', 'pending', 1699.00),
(128, 27, '2026-01-25', 'delivered', 4999.00),
(129, 28, '2026-02-03', 'delivered', 2799.00),
(130, 29, '2026-02-14', 'shipped', 3699.00),
(131, 30, '2026-02-22', 'delivered', 6299.00),
(132, 2, '2026-03-01', 'delivered', 2199.00),
(133, 4, '2026-03-10', 'delivered', 3599.00),
(134, 6, '2026-03-18', 'cancelled', 1899.00),
(135, 8, '2026-03-25', 'delivered', 4299.00),
(136, 10, '2026-04-02', 'shipped', 2799.00),
(137, 12, '2026-04-10', 'delivered', 7499.00),
(138, 14, '2026-04-18', 'delivered', 3199.00),
(139, 16, '2026-04-25', 'pending', 2299.00),
(140, 18, '2026-05-03', 'delivered', 4899.00),
(141, 20, '2026-05-10', 'delivered', 2599.00),
(142, 22, '2026-05-18', 'shipped', 4199.00),
(143, 24, '2026-05-25', 'delivered', 6799.00),
(144, 26, '2026-06-02', 'delivered', 2999.00),
(145, 28, '2026-06-10', 'cancelled', 3599.00),
(146, 30, '2026-06-18', 'delivered', 5199.00),
(147, 1, '2026-06-25', 'delivered', 3899.00),
(148, 3, '2026-07-02', 'shipped', 2499.00),
(149, 5, '2026-07-08', 'delivered', 4599.00),
(150, 7, '2026-07-15', 'delivered', 7299.00),
(151, 9, '2026-07-22', 'pending', 1999.00),
(152, 11, '2026-07-28', 'delivered', 3399.00),
(153, 13, '2026-08-01', 'delivered', 5699.00),
(154, 15, '2026-08-05', 'shipped', 2899.00),
(155, 17, '2026-08-08', 'delivered', 4199.00),
(156, 19, '2026-08-10', 'delivered', 5999.00),
(157, 21, '2026-08-12', 'pending', 1799.00),
(158, 23, '2026-08-15', 'delivered', 4699.00),
(159, 25, '2026-08-18', 'delivered', 3299.00),
(160, 27, '2026-08-20', 'cancelled', 2399.00);

select * from orders;

show tables;
describe customers;
describe orders;
select count(*) as customers_count from customers;
select count(*) as orders_count from orders;
select customer_id,count(*) from customers group by customer_id having count(*)>1;
select order_id,count(*) from orders group by order_id having count(*)>1;
select c.customer_id,c.customer_name,o.order_id,o.order_date,o.status,o.amount 
from customers c join orders o on c.customer_id=o.customer_id limit 10;

####table sellers
CREATE TABLE sellers (seller_id INT PRIMARY KEY,seller_name VARCHAR(100),city VARCHAR(50),rating DECIMAL(2,1));
INSERT INTO sellers (seller_id, seller_name, city, rating)
VALUES
(1, 'TechWorld', 'Mumbai', 4.5),
(2, 'FashionHub', 'Delhi', 4.2),
(3, 'HomeNeeds', 'Bangalore', 4.0),
(4, 'GadgetZone', 'Chennai', 4.6),
(5, 'BeautyMart', 'Hyderabad', 4.3),
(6, 'BookNest', 'Kolkata', 4.1),
(7, 'SportsArena', 'Pune', 4.4),
(8, 'KitchenKart', 'Ahmedabad', 4.0),
(9, 'DailyEssentials', 'Kochi', 4.2),
(10, 'ElectroStore', 'Mumbai', 4.7);

select * from sellers;
describe sellers;
select count(*) as sellers_count from sellers;

###table products
CREATE TABLE products (product_id INT PRIMARY KEY,product_name VARCHAR(100),category VARCHAR(50),price DECIMAL(10,2),seller_id INT,
FOREIGN KEY (seller_id) REFERENCES sellers(seller_id));
INSERT INTO products (product_id, product_name, category, price, seller_id)
VALUES
(1, 'Wireless Headphones', 'Electronics', 2499.00, 1),
(2, 'Smart Watch', 'Electronics', 4599.00, 4),
(3, 'Bluetooth Speaker', 'Electronics', 1899.00, 10),
(4, 'Running Shoes', 'Sports', 3299.00, 7),
(5, 'T-Shirt', 'Fashion', 999.00, 2),
(6, 'Jeans', 'Fashion', 1999.00, 2),
(7, 'Backpack', 'Fashion', 1499.00, 2),
(8, 'Coffee Maker', 'Kitchen', 2799.00, 8),
(9, 'Non-Stick Pan', 'Kitchen', 1599.00, 8),
(10, 'Mixer Grinder', 'Kitchen', 3499.00, 8),
(11, 'Face Wash', 'Beauty', 599.00, 5),
(12, 'Skin Care Kit', 'Beauty', 1299.00, 5),
(13, 'Novel Book', 'Books', 499.00, 6),
(14, 'Data Analytics Book', 'Books', 899.00, 6),
(15, 'Cricket Bat', 'Sports', 2499.00, 7),
(16, 'Yoga Mat', 'Sports', 899.00, 7),
(17, 'LED Bulb Pack', 'Home', 699.00, 3),
(18, 'Bedsheet Set', 'Home', 1599.00, 3),
(19, 'Power Bank', 'Electronics', 1499.00, 1),
(20, 'USB Cable', 'Electronics', 399.00, 10);

select * from products;
describe products;
select count(*) as products_count from products;

##table products
CREATE TABLE payments (payment_id INT PRIMARY KEY,order_id INT,payment_type VARCHAR(30),payment_date DATE,payment_amount DECIMAL(10,2),
FOREIGN KEY (order_id) REFERENCES orders(order_id));
INSERT INTO payments
(payment_id, order_id, payment_type, payment_date, payment_amount)
VALUES
(1, 101, 'UPI', '2025-01-20', 2499.00),
(2, 102, 'Credit Card', '2025-02-15', 1599.00),
(3, 103, 'Debit Card', '2025-03-10', 3200.00),
(4, 104, 'UPI', '2025-03-25', 4599.00),
(5, 105, 'Cash on Delivery', '2025-04-05', 1899.00),
(6, 106, 'Credit Card', '2025-04-18', 2799.00),
(7, 107, 'UPI', '2025-05-02', 5999.00),
(8, 108, 'Debit Card', '2025-05-19', 1299.00),
(9, 109, 'Credit Card', '2025-06-07', 3499.00),
(10, 110, 'UPI', '2025-06-21', 2199.00),
(11, 111, 'UPI', '2025-07-05', 4299.00),
(12, 112, 'Cash on Delivery', '2025-07-18', 1799.00),
(13, 113, 'Credit Card', '2025-08-03', 6499.00),
(14, 114, 'Debit Card', '2025-08-15', 2399.00),
(15, 115, 'UPI', '2025-08-28', 3299.00),
(16, 116, 'Credit Card', '2025-09-06', 5499.00),
(17, 117, 'UPI', '2025-09-20', 1499.00),
(18, 118, 'Debit Card', '2025-10-04', 3899.00),
(19, 119, 'Cash on Delivery', '2025-10-19', 2599.00),
(20, 120, 'UPI', '2025-11-02', 7199.00),
(21, 121, 'Credit Card', '2025-11-15', 1999.00),
(22, 122, 'Debit Card', '2025-11-28', 2899.00),
(23, 123, 'UPI', '2025-12-05', 4599.00),
(24, 124, 'Cash on Delivery', '2025-12-12', 2399.00),
(25, 125, 'Credit Card', '2025-12-20', 5799.00),
(26, 126, 'UPI', '2026-01-05', 3199.00),
(27, 127, 'Debit Card', '2026-01-15', 1699.00),
(28, 128, 'Credit Card', '2026-01-25', 4999.00),
(29, 129, 'UPI', '2026-02-03', 2799.00),
(30, 130, 'Debit Card', '2026-02-14', 3699.00),
(31, 131, 'Credit Card', '2026-02-22', 6299.00),
(32, 132, 'UPI', '2026-03-01', 2199.00),
(33, 133, 'Credit Card', '2026-03-10', 3599.00),
(34, 134, 'Debit Card', '2026-03-18', 1899.00),
(35, 135, 'UPI', '2026-03-25', 4299.00),
(36, 136, 'Cash on Delivery', '2026-04-02', 2799.00),
(37, 137, 'Credit Card', '2026-04-10', 7499.00),
(38, 138, 'UPI', '2026-04-18', 3199.00),
(39, 139, 'Debit Card', '2026-04-25', 2299.00),
(40, 140, 'Credit Card', '2026-05-03', 4899.00),
(41, 141, 'UPI', '2026-05-10', 2599.00),
(42, 142, 'Cash on Delivery', '2026-05-18', 4199.00),
(43, 143, 'Credit Card', '2026-05-25', 6799.00),
(44, 144, 'UPI', '2026-06-02', 2999.00),
(45, 145, 'Debit Card', '2026-06-10', 3599.00),
(46, 146, 'Credit Card', '2026-06-18', 5199.00),
(47, 147, 'UPI', '2026-06-25', 3899.00),
(48, 148, 'Debit Card', '2026-07-02', 2499.00),
(49, 149, 'Credit Card', '2026-07-08', 4599.00),
(50, 150, 'UPI', '2026-07-15', 7299.00),
(51, 151, 'Debit Card', '2026-07-22', 1999.00),
(52, 152, 'UPI', '2026-07-28', 3399.00),
(53, 153, 'Credit Card', '2026-08-01', 5699.00),
(54, 154, 'Cash on Delivery', '2026-08-05', 2899.00),
(55, 155, 'UPI', '2026-08-08', 4199.00),
(56, 156, 'Credit Card', '2026-08-10', 5999.00),
(57, 157, 'Debit Card', '2026-08-12', 1799.00),
(58, 158, 'UPI', '2026-08-15', 4699.00),
(59, 159, 'Credit Card', '2026-08-18', 3299.00),
(60, 160, 'Debit Card', '2026-08-20', 2399.00);

select * from payments;
describe payments;
select count(*) as payments_count from payments;




########questions######33

#1.List all customers who are from Kochi.
select * from customers where city='kochi';

#2.Find all orders that were placed in 2026.
select * from orders where order_date between '2026-01-01' and '2026-12-31';

#3.Find the 10 most expensive orders.
select * from orders order by amount desc limit 10;

#4.Find all customers who signed up in 2025.
select * from customers where signup_date between '2025-01-01' and '2025-12-31';

#5.List all orders with the status delivered. 
select * from orders where status='delivered';

#6.What is the total revenue generated so far? 
select sum(amount) as total_revenue from orders;

#7.Who are the top 5 customers based on their total amount spent? 
select c.customer_id,c.customer_name,sum(o.amount) as total_amount  from customers as c inner join orders as o 
ON c.customer_id = o.customer_id group by customer_id order by total_amount desc limit 5;

#8.Average Order Value by City 
select c.city,avg(o.amount) as average_value from customers as c inner join orders as o
on c.customer_id=o.customer_id group by c.city;

#9.How many orders are there for each order status?
select status,count(*) as order_status_count from orders group by status;

#10.Find customers who have placed more than one order.
select customer_id,count(order_id) as order_count from orders group by customer_id having count(order_id)>1;

#11.Which city generates the highest total revenue from orders? 
select c.city,sum(o.amount) as tot_amount from customers as c inner join orders as o on c.customer_id=o.customer_id
group by c.city order by tot_amount desc limit 1;

#12.Find the total revenue generated for each order status. 
select  status,sum(amount) as tot_amount from orders group by status;

#13.What is the average order amount for each order status? 
select status,avg(amount) as avg_amount from orders group by status;

#14.Find customers whose total spending is greater than ₹10,000. 
select customer_id,sum(amount) from orders group by customer_id having sum(amount)>10000;

#15.Classify each order into three categories based on its amount:
-- High Value → ₹5,000 or more
-- Medium Value → ₹2,500 to ₹4,999
-- Low Value → below ₹2,500
select order_id,amount,
case
when amount>=5000 then 'High Value'
when amount>=2500 then 'Medium Value'
else 'Low Value'
end as 'amount_classification'
from orders;

#16.How many High Value, Medium Value, and Low Value orders are there? 
select 
case
when amount>=5000 then 'High Value'
when amount>=2500 then 'Medium Value'
else 'Low Value'
end as 'amount_classification',
count(*) as order_count
from orders group by amount_classification;

#17.Classify customers based on their total spending:
-- High Spender → total spending ≥ ₹10,000
-- Medium Spender → total spending ≥ ₹5,000
-- Low Spender → total spending < ₹5,000
select customer_id,sum(amount) as total_spendings,
case
when sum(amount)>=10000 then 'High Spender'
when sum(amount) >=5000 then 'Medium Spender'
else 'Low Spender'
end as spender_classification
from orders group by customer_id;

#18.Which customers have spent more than the average customer spending? 
SELECT customer_id,SUM(amount) AS total_amount FROM orders GROUP BY customer_id HAVING SUM(amount) > (SELECT AVG(total_amount)
FROM (SELECT customer_id,SUM(amount) AS total_amount FROM orders GROUP BY customer_id) AS customer_spending);

#19.find the customer who placed the highest-value single order.
select customer_id,amount from orders where amount=(select max(amount) from orders );

#20.Find all orders whose amount is greater than the average order amount.
select order_id,amount from orders where amount>(select avg(amount) as average_amount from orders);

#21.Find the top 5 customers by total spending using a CTE.
with total_spending as(select customer_id,sum(amount) as total_amount from orders group by customer_id)
select * from total_spending order by total_amount desc limit 5;

#22.Find the month with the highest total revenue.
WITH monthly_revenue AS (SELECT DATE_FORMAT(order_date, '%Y-%m') AS month,SUM(amount) AS total_revenue FROM orders
GROUP BY DATE_FORMAT(order_date, '%Y-%m'))
SELECT month,total_revenue FROM monthly_revenue ORDER BY total_revenue DESC LIMIT 1;

#23.Rank customers by total spending using a window function
SELECT customer_id,SUM(amount) AS total_amount, RANK() OVER (ORDER BY SUM(amount) DESC) AS spending_rank FROM orders
GROUP BY customer_id ORDER BY spending_rank;

#24.Find each customer's first and most recent order using a window function.
WITH customer_orders AS (SELECT customer_id,order_id,order_date,amount,ROW_NUMBER() OVER (PARTITION BY customer_id
ORDER BY order_date ASC) AS first_order,ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY order_date DESC) AS recent_order
FROM orders)
SELECT customer_id,
       MAX(CASE WHEN first_order = 1 THEN order_id END) AS first_order_id,
       MAX(CASE WHEN first_order = 1 THEN order_date END) AS first_order_date,
       MAX(CASE WHEN recent_order = 1 THEN order_id END) AS recent_order_id,
       MAX(CASE WHEN recent_order = 1 THEN order_date END) AS recent_order_date
FROM customer_orders GROUP BY customer_id;

#25.Create a monthly_sales_summary VIEW 
CREATE VIEW monthly_sales_summary AS SELECT DATE_FORMAT(order_date, '%Y-%m') AS month, COUNT(order_id) AS total_orders,
SUM(amount) AS total_revenue,AVG(amount) AS average_order_value
FROM orders GROUP BY DATE_FORMAT(order_date, '%Y-%m');
SELECT * FROM monthly_sales_summary;

#26.Create a stored procedure get_customer_history(customer_id) that returns the complete order history of a given customer. 
DELIMITER //
CREATE PROCEDURE get_customer_history(IN p_customer_id INT)
BEGIN
SELECT order_id,order_date,status,amount FROM orders WHERE customer_id = p_customer_id ORDER BY order_date;
END //
DELIMITER ;
CALL get_customer_history(5);


