
-- SQL Aggregation - Practice Exercises
-- Database: SQLite (sample Shop database)
-- Table: products
-- Topics: COUNT, SUM, AVG, ROUND, GROUP BY

-- Exercise 6: Count all products
SELECT COUNT(*) AS total_products
FROM products;

-- Exercise 7: Calculate the sum of product prices
SELECT SUM(price) AS total_price
FROM products;

-- Exercise 8: Calculate average product price
SELECT AVG(price) AS average_price
FROM products;

-- Exercise 9: Average price by category
SELECT category,
       ROUND(AVG(price), 2) AS average_price
FROM products
GROUP BY category
ORDER BY category ASC;

-- Exercise 10: Product summary by category
SELECT category,
       COUNT(*) AS product_count,
       SUM(price) AS total_price,
       ROUND(AVG(price), 2) AS average_price
FROM products
GROUP BY category
ORDER BY category ASC;
