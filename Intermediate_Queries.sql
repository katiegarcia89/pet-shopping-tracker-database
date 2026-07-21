/*
=====================================================
Project: Shopping Tracker Database
Author: Katie Garcia
File: Intermediate_Queries.sql

Description:
Demonstrates SQL joins, aggregate functions, grouping,
and filtering used to compare products, prices, stores,
and delivery estimates.

Concepts Covered:
- INNER JOIN
- COUNT
- AVG
- MIN
- MAX
- GROUP BY
- HAVING

Date Created: July 2026
=====================================================
*/

USE shopping_tracker;

-- Show each product, store, and price
SELECT
    p.product_name AS Product,
    s.store_name AS Store,
    sp.price AS Price
FROM StorePrices sp
JOIN Products p
    ON sp.product_id = p.product_id
JOIN Stores s
    ON sp.store_id = s.store_id
ORDER BY
    p.product_name,
    s.store_name;
    
    -- Count the number of products in each category
SELECT
    category,
    COUNT(*) AS Product_count
FROM Products
GROUP BY category;

-- Count wet and dry food products
SELECT
    food_type,
    COUNT(*) AS Product_count
FROM Products
WHERE food_type IS NOT NULL
GROUP BY food_type;

-- Show the average price at each store
SELECT
    s.store_name AS Store,
    ROUND(AVG(sp.price), 2) AS "Average price"
FROM StorePrices sp
JOIN Stores s
    ON sp.store_id = s.store_id
GROUP BY s.store_name
ORDER BY "Average Price";

-- Show the lowest and highest recorded price
SELECT
    MIN(price) AS "Lowest price",
    MAX(price) AS "Highest_price"
FROM StorePrices;

-- Show the number of products carried by each store
SELECT
    s.store_name,
    COUNT(sp.product_id) AS products_carried
FROM StorePrices sp
JOIN Stores s
    ON sp.store_id = s.store_id
GROUP BY s.store_name
ORDER BY products_carried DESC;

-- Show stores with an average delivery time of 2 days or less
SELECT
    s.store_name,
    ROUND(AVG(sp.estimated_delivery_days), 1) AS average_delivery_days
FROM StorePrices sp
JOIN Stores s
    ON sp.store_id = s.store_id
GROUP BY s.store_name
HAVING AVG(sp.estimated_delivery_days) <= 2;



    
    