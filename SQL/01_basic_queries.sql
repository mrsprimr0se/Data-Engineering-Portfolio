
-- SQL Basics - Practice Exercises
-- Database: SQLite (sample Shop database)
-- Table: products
-- Topics: SELECT, FROM, WHERE, ORDER BY

-- Exercise 1: Display product names, categories and prices
SELECT name, category, price
FROM products;

-- Exercise 2: Find products with a price greater than 50
SELECT name, category, price
FROM products
WHERE price > 50;

-- Exercise 3: Find products in the Hardware category
SELECT name, category, price
FROM products
WHERE category = 'Hardware';

-- Exercise 4: Sort Hardware products by price (ascending)
SELECT name, category, price
FROM products
WHERE category = 'Hardware'
ORDER BY price ASC;

-- Exercise 5: Find Books and sort by price (descending)
SELECT name, category, price
FROM products
WHERE category = 'Books'
ORDER BY price DESC;
