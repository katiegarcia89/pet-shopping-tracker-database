/*
=====================================================
Project: Shopping Tracker Database
Author: Katie Garcia
File: Insert_Stores.sql

Description:
Populates the Stores table with retailers used for
product price comparisons.

Columns:
- store_name
- store_website

Date Created: July 2026
=====================================================
*/

USE shopping_tracker;
INSERT INTO Stores 
	(store_name, store_website)
VALUES
	('Walmart', 'walmart.com'),
    ('Petco', 'petco.com'),
    ('PetSmart', 'petSmart.com'),
    ('Ebay', 'ebay.com'),
    ('Chewy', 'chewy.com'),
    ('Pet Supplies Plus', 'petsuppliesplus.com'),
	('Costco', 'costco.com'),
    ('Amazon', 'amazon.com'),
    ('PetPawsRX', 'petpawsrx.com');
    
