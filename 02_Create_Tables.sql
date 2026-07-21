/*
=====================================================
Project: Shopping Tracker Database
Author: Katie Garcia
File: Create_Tables.sql

Description:
Creates the tables used for the Shopping Tracker
database, including primary keys, foreign keys,
and relationships between products, stores,
and pricing information.

Tables Created:
- Stores
- Products
- FoodType
- StorePrices

Date Created: July 2026
=====================================================
*/

USE shopping_tracker; 

-- =====================================================
-- Stores
-- =====================================================

CREATE TABLE Stores (
	store_id INT AUTO_INCREMENT PRIMARY KEY,
	store_name VARCHAR(100) NOT NULL, 
	store_website VARCHAR(255) NOT NULL
);

-- =====================================================
-- Products
-- =====================================================

CREATE TABLE Products (
	product_id INT AUTO_INCREMENT PRIMARY KEY, 
	product_name VARCHAR(150) NOT NULL,
	brand VARCHAR(100) NOT NULL,
    manufacture VARCHAR(100) NOT NULL, 
	category VARCHAR(50) NOT NULL,
    food_type VARCHAR(100)
    
);

-- =====================================================
-- Store Prices
-- =====================================================

CREATE TABLE StorePrices (
	price_id INT AUTO_INCREMENT PRIMARY KEY, 
	store_id INT NOT NULL, 
	product_id INT NOT NULL,
	price DECIMAL(6,2),
	date_checked DATE, 
    estimated_delivery_days INT,
    
    FOREIGN KEY (store_id)
		REFERENCES Stores(store_id), 
	FOREIGN KEY (product_id)
		REFERENCES Products(product_id)
);


   
 
	
