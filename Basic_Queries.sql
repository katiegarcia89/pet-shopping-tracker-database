/*
=====================================================
Project: Shopping Tracker Database
Author: Katie Garcia
File: Basic_Queries.sql

Description:
Demonstrates basic SQL queries used to retrieve,
filter, sort, and limit data from the Shopping
Tracker database.

Concepts Covered:
- SELECT
- WHERE
- ORDER BY
- LIMIT

Date Created: July 2026
=====================================================
*/
USE shopping_tracker;

-- Show the firt 10 products
SELECT * FROM Products
LIMIT 10;

-- Show only dog food
SELECT *
FROM Products
WHERE category = 'Dog Food';

-- Show only wet cat food
SELECT *
FROM Products
WHERE category = 'Cat Food'
AND food_type = 'Wet';

-- Sort products alphabetically
SELECT product_name
FROM Products
ORDER BY product_name; 

-- Show products in reverse alphabetical order
SELECT product_name
FROM Products
ORDER BY product_name DESC;

-- Find products containing "Salmon"
SELECT *
FROM Products
WHERE product_name LIKE '%Salmon%';



