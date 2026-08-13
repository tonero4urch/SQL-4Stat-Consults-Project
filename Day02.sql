-- Day02 exercises

-- 1.	Top 3 highest orders by amount.
SELECT *
FROM orders
order by amount
desc limit 3;

-- 2. All distinct order statuses.
SELECT distinct status 
FROM orders;

--3. Customer names in lowercase, sorted alphabetically.
SELECT LOWER(customer_name) as name_lower
FROM customers
order by name_lower


-- 4. All orders placed in March 2024, sorted by date ascending.
SELECT *
FROM orders
where order_date BETWEEN '2024-03-01' and '2024-03-31'
order by order_date 


-- 5. Order id and the month number it was placed in. 
SELECT order_id, EXTRACT(MONTH FROM order_date) as order_month
FROM orders;


-- 6. The 2nd and 3rd most recent orders (hint: ORDER BY + LIMIT/OFFSET).
SELECT *
FROM orders
order by order_date desc limit 2  offset 1;

-- 7. All customers, with a new column showing how many characters are in their name.
SELECT customer_name, LENGTH(customer_name) AS name_length 
FROM customers;
