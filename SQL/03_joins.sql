
-- SQL JOIN Practice Exercises
-- Database: SQLite (sample Shop database)
-- Tables: customers, orders
-- Topics: INNER JOIN, LEFT JOIN, IS NULL

-- Exercise 11: Match customers with their orders
SELECT c.name,
       o.order_id
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
ORDER BY o.order_id;

-- Exercise 12: Inspect the orders table structure
PRAGMA table_info(orders);

-- Exercise 13: Display order details with customer names
SELECT c.name,
       o.order_id,
       o.order_date,
       o.status,
       o.total
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
ORDER BY o.order_id;

-- Exercise 14: Display all customers,
-- including customers without orders
SELECT c.name,
       o.order_id,
       o.order_date
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
ORDER BY c.name, o.order_id;

-- Exercise 15: Find customers without orders
SELECT c.name,
       o.order_id
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;
