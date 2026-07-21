/*
=====================================================
Project: Shopping Tracker Database
Author: Katie Garcia
File: Advanced_Queries.sql

Description:
Demonstrates advanced SQL techniques used to compare
product prices, identify the best purchasing options,
and summarize retailer performance.

Concepts Covered:
- Subqueries
- CASE
- Common Table Expressions
- Window Functions
- Views

Date Created: July 2026
=====================================================
*/

USE shopping_tracker;

-- Find products priced above the overall average price
SELECT
    p.product_name,
    s.store_name,
    sp.price
FROM StorePrices sp
JOIN Products p
    ON sp.product_id = p.product_id
JOIN Stores s
    ON sp.store_id = s.store_id
WHERE sp.price > (
    SELECT AVG(price)
    FROM StorePrices
)
ORDER BY sp.price DESC;

-- Categorize prices as budget, moderate, or expensive
SELECT
    p.product_name,
    s.store_name,
    sp.price,
    CASE
        WHEN sp.price < 20 THEN 'Budget'
        WHEN sp.price < 50 THEN 'Moderate'
        ELSE 'Expensive'
    END AS price_category
FROM StorePrices sp
JOIN Products p
    ON sp.product_id = p.product_id
JOIN Stores s
    ON sp.store_id = s.store_id;
    
-- Find the cheapest recorded price for each product
SELECT
    p.product_name,
    MIN(sp.price) AS lowest_price
FROM Products p
JOIN StorePrices sp
    ON p.product_id = sp.product_id
GROUP BY p.product_id, p.product_name
ORDER BY lowest_price;

-- Find the cheapest store for each product
WITH RankedPrices AS (
    SELECT
        p.product_name,
        s.store_name,
        sp.price,
        ROW_NUMBER() OVER (
            PARTITION BY p.product_id
            ORDER BY sp.price
        ) AS price_rank
    FROM StorePrices sp
    JOIN Products p
        ON sp.product_id = p.product_id
    JOIN Stores s
        ON sp.store_id = s.store_id
)
SELECT
    product_name,
    store_name,
    price
FROM RankedPrices
WHERE price_rank = 1
ORDER BY product_name;

-- Rank stores from lowest to highest average price
SELECT
    s.store_name,
    ROUND(AVG(sp.price), 2) AS average_price,
    RANK() OVER (
        ORDER BY AVG(sp.price)
    ) AS price_rank
FROM StorePrices sp
JOIN Stores s
    ON sp.store_id = s.store_id
GROUP BY s.store_id, s.store_name;

-- Compare each price to the average price of that product
SELECT
    p.product_name,
    s.store_name,
    sp.price,
    ROUND(
        AVG(sp.price) OVER (
            PARTITION BY sp.product_id
        ),
        2
    ) AS product_average_price,
    ROUND(
        sp.price - AVG(sp.price) OVER (
            PARTITION BY sp.product_id
        ),
        2
    ) AS difference_from_average
FROM StorePrices sp
JOIN Products p
    ON sp.product_id = p.product_id
JOIN Stores s
    ON sp.store_id = s.store_id
ORDER BY p.product_name, sp.price;

-- Create a reusable product price comparison view
CREATE VIEW ProductPriceComparison AS
SELECT
    p.product_name,
    p.brand,
    p.category,
    p.food_type,
    s.store_name,
    sp.price,
    sp.date_checked,
    sp.estimated_delivery_days
FROM StorePrices sp
JOIN Products p
    ON sp.product_id = p.product_id
JOIN Stores s
    ON sp.store_id = s.store_id;
  
SELECT *
FROM ProductPriceComparison;
    

    
