/*
=====================================================
Project: Shopping Tracker Database
Author: Katie Garcia
File: Insert_StorePrices.sql
Description:
Inserts current product pricing from multiple retailers
for comparison and reporting queries.
-- estimated_delivery_days 0 indicating arriving the day of purchase
Date Created: July 2026
=====================================================
*/

USE shopping_tracker;
-- Notes:
-- estimated_delivery_days represents the typical number of days
-- until delivery after purchase.
-- 0 = Available for pickup or same-day purchase.
INSERT INTO StorePrices
    (store_id, product_id, price, date_checked, estimated_delivery_days)
VALUES
-- Product 1: Purina Pro Plan Sensitive Skin & Stomach Large Breed 34.4 lb
    (2, 1, 97.98, '2026-07-21', 3),
    (3, 1, 97.98, '2026-07-21', 2),
    (4, 1, 65.99, '2026-07-21', 5),
    (5, 1, 97.98, '2026-07-21', 2), 
    (7, 1, 97.98, '2026-07-21', 0),

-- Product 2: PanaKare Plus Powder for Dogs & Cats, 12-oz
	(5, 2, 227.72, '2026-07-21', 4),
	(9, 2, 125.96, '2026-07-21', 4),
    
-- Product 3: Purina ONE Tender Selects Blend with Real Chicken, 22 lb
	(1, 3, 41.78, '2026-07-21', 0),
	(2, 3, 44.99, '2026-07-21', 2),
	(3, 3, 44.99, '2026-07-21', 2),
	(4, 3, 39.99, '2026-07-21', 5),
	(5, 3, 41.78, '2026-07-21', 2),
	(6, 3, 42.99, '2026-07-21', 2),
	(8, 3, 41.78, '2026-07-21', 0),

-- Product 4: Purina ONE Natural Chicken, Tuna, Salmon & Trout Variety Pack, 24 Count
	(1, 4, 32.88, '2026-07-21', 0),
	(2, 4, 32.88, '2026-07-21', 3),
	(3, 4, 32.88, '2026-07-21', 2),
	(4, 4, 29.99, '2026-07-21', 5),
	(5, 4, 33.67, '2026-07-21', 2),
	(6, 4, 32.99, '2026-07-21', 2),
	(8, 4, 32.88, '2026-07-21', 0),
    
-- Product 5: Friskies Fully Load'd Chicken, Salmon & Tuna Variety Pack, 12 Count
	(1, 5, 11.64, '2026-07-21', 0),
	(3, 5, 11.99, '2026-07-21', 2),
	(4, 5, 10.49, '2026-07-21', 5),
	(5, 5, 11.99, '2026-07-21', 2),
	(6, 5, 11.99, '2026-07-21', 2),
	(8, 5, 11.64, '2026-07-21', 0),
 
 -- Product 6: Friskies Tasty Treasures Adult Prime Filets in Gravy Variety Pack, 24 Count		
	(1, 6, 19.97, '2026-07-21', 1),
	(2, 6, 24.99, '2026-07-21', 3),
	(3, 6, 24.99, '2026-07-21', 2),
	(4, 6, 18.99, '2026-07-21', 5),
	(5, 6, 22.32, '2026-07-21', 2),
	(6, 6, 24.99, '2026-07-21', 2),
	(8, 6, 24.99, '2026-07-21', 0),
    
    -- Product 7: Friskies Glaz’d & Infuz’d Variety Pack with Chicken, Crab or Shrimp, 12 Count
	(1, 7, 11.64, '2026-07-21', 3),
	(3, 7, 12.99, '2026-07-21', 2),
	(4, 7, 10.99, '2026-07-21', 5),
	(5, 7, 12.99, '2026-07-21', 2),
	(6, 7, 12.99, '2026-07-21', 2),
	(8, 7, 12.99, '2026-07-21', 0),
    
    -- Product 8: Glandex Anal Gland Support Soft Chews, Peanut Butter, 10 Count
	(1, 8, 6.99, '2026-07-21', 0),
	(2, 8, 6.99, '2026-07-21', 2),
	(3, 8, 6.99, '2026-07-21', 2),
	(4, 8, 5.99, '2026-07-21', 5),
	(5, 8, 6.99, '2026-07-21', 2),
	(6, 8, 6.99, '2026-07-21', 2),
	(8, 8, 6.99, '2026-07-21', 0),
   
   -- Product 9: Hill's Science Diet Adult Salmon & Brown Rice Recipe Dry Dog Food, 33 lb Bag
	(1, 9, 89.99, '2026-07-21', 3),
	(2, 9, 89.99, '2026-07-21', 3),
	(3, 9, 89.99, '2026-07-21', 2),
	(4, 9, 84.99, '2026-07-21', 5),
	(5, 9, 89.99, '2026-07-21', 2),
	(6, 9, 89.99, '2026-07-21', 2),
	(8, 9, 89.99, '2026-07-21', 0),
    
    -- Product 10: ACANA Singles Limited Ingredient Beef & Pumpkin Grain-Free High-Protein Dry Dog Food, 4.5 lb Bag
	(1, 10, 34.98, '2026-07-21', 3),
	(2, 10, 34.99, '2026-07-21', 2),
	(3, 10, 34.99, '2026-07-21', 2),
	(4, 10, 31.99, '2026-07-21', 5),
	(5, 10, 34.99, '2026-07-21', 2),
	(6, 10, 34.99, '2026-07-21', 2),
	(8, 10, 34.99, '2026-07-21', 0),
    
    -- Product 11: Diamond Naturals Skin & Coat Formula All Life Stages Dry Dog Food, 30 lb Bag
	(1, 11, 54.98, '2026-07-21', 3),
	(2, 11, 54.99, '2026-07-21', 2),
	(3, 11, 54.99, '2026-07-21', 2),
	(4, 11, 49.99, '2026-07-21', 5),
	(5, 11, 54.99, '2026-07-21', 2),
	(6, 11, 54.99, '2026-07-21', 2),
	(8, 11, 54.99, '2026-07-21', 0),
    
    -- Product 12: Purina Pro Plan Sensitive Skin & Stomach Adult Dog Food, 30 lb Bag
	(1, 12, 79.98, '2026-07-21', 3),
	(2, 12, 79.99, '2026-07-21', 2),
	(3, 12, 79.99, '2026-07-21', 2),
	(4, 12, 74.99, '2026-07-21', 5),
	(5, 12, 79.99, '2026-07-21', 2),
	(6, 12, 79.99, '2026-07-21', 2),
	(8, 12, 79.99, '2026-07-21', 0),
    
    -- Product 13: Purina Pro Plan Veterinary Diets Canine FortiFlora Probiotic Supplement, 30 Count
    (1, 13, 30.99, '2026-07-21', 0),
	(2, 13, 34.99, '2026-07-21', 2),
	(3, 13, 34.99, '2026-07-21', 2),
	(4, 13, 29.99, '2026-07-21', 5),
	(5, 13, 34.99, '2026-07-21', 2),
	(8, 13, 34.99, '2026-07-21', 0),
	(9, 13, 34.99, '2026-07-21', 2),
    
    -- Product 14: Pumpkin Patch Up! Pureed Pumpkin (1.05 oz)
	(2, 14, 1.17, '2026-07-21', 2),
	(4, 14, 1.49, '2026-07-21', 5),
	(5, 14, 1.19, '2026-07-21', 2),
	(8, 14, 1.25, '2026-07-21', 0),
    
    -- Product 15: Super Snouts Firm Up Stool Powder for Dogs, 4 oz
	(1,15,14.99,'2026-07-21',0),
	(2,15,14.99,'2026-07-21',2),
	(4,15,13.99,'2026-07-21',5),
	(5,15,14.99,'2026-07-21',2),
	(8,15,14.99,'2026-07-21',0),
    
    -- Product 16: Friskies Indoor Wet Cat Food Variety Pack, 5.5 oz, 24 Count
	(1,16,19.97,'2026-07-21',0),
	(2,16,20.56,'2026-07-21',2),
	(4,16,18.99,'2026-07-21',5),
	(5,16,22.32,'2026-07-21',2),
	(8,16,24.99,'2026-07-21',0),
    
    -- Product 17: Purina ONE +Plus Indoor Advantage Natural Low Fat & Weight Control Dry Cat Food, 22 lb
	(1,17,42.97,'2026-07-21',0),
	(2,17,42.99,'2026-07-21',2),
	(4,17,39.99,'2026-07-21',5),
	(5,17,42.99,'2026-07-21',2),
	(8,17,42.99,'2026-07-21',0),
    
    -- Product 18: Scoop Away Complete Performance Clumping Scented Cat Litter, 42 lb
	(1,18,32.99,'2026-07-21',0),
	(2,18,23.49,'2026-07-21',2),
	(4,18,29.99,'2026-07-21',5),
	(8,18,31.99,'2026-07-21',0),
    
    -- Product 19: Pure Balance Pro+ Sensitive Skin & Stomach Salmon & Rice Recipe Dog Food, 8 lb
	(1,19,13.97,'2026-07-21',0);
    
    
    
    