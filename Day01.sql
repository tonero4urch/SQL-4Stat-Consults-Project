CREATE TABLE customers (
  customer_id INTEGER PRIMARY KEY,
  customer_name TEXT,
  country TEXT,
  email TEXT
);
 
CREATE TABLE orders (
  order_id INTEGER PRIMARY KEY,
  customer_id INTEGER,
  order_date DATE,
  amount DECIMAL,
  status TEXT
);
 
INSERT INTO customers VALUES
(1, 'Ada Obi', 'Nigeria', 'ada@mail.com'),
(2, 'Emre Yilmaz', 'Turkey', 'emre@mail.com'),
(3, 'John Smith', 'USA', NULL),
(4, 'Fatima Musa', 'Nigeria', 'fatima@mail.com'),
(5, 'Zeynep Kaya', 'Turkey', 'zeynep@mail.com');
 
INSERT INTO orders VALUES
(101, 1, '2024-01-15', 250.00, 'completed'),
(102, 2, '2024-02-01', 89.50, 'cancelled'),
(103, 1, '2024-02-20', 430.00, 'completed'),
(104, 3, '2024-03-05', 120.00, 'completed'),
(105, 4, '2024-03-10', 75.00, 'pending'),
(106, 5, '2024-01-28', 560.00, 'completed'),
(107, 2, '2024-03-15', 300.00, 'completed');

-- 1. Select all customers from Nigeria.
SELECT *
FROM customers
WHERE country = 'Nigeria';


-- 2. Select all orders over $200.
SELECT *
FROM orders
WHERE amount > '$200';


-- 3.	Select customer names and emails, but only where email is not null.
SELECT customer_name, email
FROM customers
WHERE email is NOT NULL;

-- 4.	Select all orders that are NOT cancelled.
SELECT *
FROM orders
WHERE status != 'cancelled';


-- 5.	Select all orders between Jan 1 and Feb 28, 2024.
SELECT *
FROM orders
WHERE order_date BETWEEN'2024-01-1' and '2024-02-28';

-- 6.	Select all customers from Turkey or Nigeria.
SELECT *
FROM customers
WHERE country ='Nigeria' or Country ='Turkey';

-- 7.	Select all completed orders over $100.
SELECT *
FROM orders
WHERE status = 'completed' AND amount > '100';


-- 8.	Select customer names that start with the letter 'A' or 'E'.
SELECT *
FROM customers
WHERE customer_name LIKE 'A%' or customer_name LIKE 'E%';


-- 9.	Select all orders placed by customer_id 1.
SELECT *
FROM customers
WHERE customer_id = 1;


-- 10.	Select all orders where status is 'pending' or amount is less than 100.
SELECT *
FROM orders
WHERE status = 'pending' or amount < '100';

-- 11.	Select customer_name and country for customers whose email is null.
SELECT customer_name, country
FROM customers
WHERE email is NULL;

-- 12.	Select all orders NOT placed in March.
SELECT *
FROM orders
WHERE order_date BETWEEN '2024-01-15' and '2024-02-28';

-- or

SELECT *
FROM orders
WHERE order_date NOT BETWEEN '2024-03-01' and '2024-03-31';


13.	Select all customers whose name contains "a" anywhere (hint: LIKE '%a%').
SELECT *
FROM customers
WHERE customer_name like '%a%';


-- 14.	Select order_id and amount for completed orders, ordered by amount descending.
SELECT order_id, amount 
FROM orders
WHERE status ='completed'
order by amount desc;


-- 15.	Select all distinct countries present in the customers table.
SELECT distinct country 
FROM customers;
