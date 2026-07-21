/*
=====================================================
Project: Shopping Tracker Database
Author: Katie Garcia
File: Insert_Products.sql

Description:
Populates the Products table with pet products used
for price comparisons across retailers.

Categories Included:
- Dog Food
- Cat Food
- Pet Medicine
- Supplements
- Cat Litter

Date Created: July 2026
=====================================================
*/
USE shopping_tracker;
INSERT INTO Products
	(product_name, brand, manufacture, category, food_type)
VALUES 
	(
		'Sensitive Skin & Stomach Large Breed Dog Food Salmon 34.4 lb Bag', 
        'Purina Pro Plan', 
        'Nestlé Purina PetCare', 
        'Dog Food',
        'Dry'
	), 
	(
		'Powder for Dogs & Cats, 12-oz', 
        'PanaKare Plus', 
        'Neogen Corporation', 
        'Medicine',
        NULL
	),
	(
		'Tender Selects Blend with Real Chicken Natural Dry Cat Food, 22 lb Bag', 
        'Purina ONE ', 
        'Nestlé Purina PetCare', 
        'Cat Food',
        'Dry'
	),
	(
		'Natural Chicken, Tuna, Salmon & Trout Variety Pack High Protein, 3-oz, 24 Count', 
        'Purina ONE', 
        'Nestlé Purina PetCare', 
        'Cat Food',
        'Wet'
	),
	(
		'Fully Load’d Chicken, Salmon, & Tuna Variety Pack, 5.5-oz can, 12 Count',
        'Friskies', 
        'Nestlé Purina PetCare', 
        'Cat Food',
        'Wet'
	),
	(
		'Tasty Treasures Adult Prime Filets in Gravy Variety Pack , 5.5-oz can, 24 Count', 
        'Friskies',
        'Nestlé Purina PetCare', 
        'Cat Food',
        'Wet'
	), 
	(
		'Glaz’d & Infuz’d Variety Pack with Chicken, Crab or Shrimp Wet Cat Food, 5.5-oz can, 12 Count', 
        'Friskies', 
        'Nestlé Purina PetCare', 
        'Cat Food',
        'Wet'
	),
	(
		'Anal Gland Support Soft Chews with Pumpkin, Digestive Enzymes, Probiotics & Fiber Supplement, Peanut Butter, 10 Count',
        'Glandex',
        'Vetnique Labs',
		'Supplement',
        NULL
	),
	(
		'Adult Salmon & Brown Rice Recipe Dry Dog Food, 33 lb Bag',
		'Hill''s Science Diet',
		'Hill''s Pet Nutrition',
		'Dog Food',
        'Dry'
	),
	(
		'Singles Limited Ingredient Beef & Pumpkin Grain-Free High-Protein Dry Dog Food, 4.5 lb Bag',
		'ACANA',
		'Champion Petfoods',
		'Dog Food',
        'Dry'
	),
	(
		'Skin & Coat Formula All Life Stages Dry Dog Food, 30 lb Bag',
		'Diamond Naturals',
		'Diamond Pet Foods',
		'Dog Food',
        'Dry'
	), 
    (
		'Sensitive Skin & Stomach Adult Dog Food, 30 lb Bag',
		'Purina Pro Plan',
		'Nestlé Purina PetCare',
		'Dog Food',
        'Dry'
	),
	(
		'Veterinary Diets Canine FortiFlora Probiotic Supplement, 30 Count',
		'Purina Pro Plan Veterinary Diets',
		'Nestlé Purina PetCare',
		'Supplement',
        NULL
	),
	(
		'Pumpkin Patch Up! Pureed Pumpkin, What''s Your Function?! Variety Pack, 1.05 oz Pouches, 12 Count',
		'Pumpkin Patch Up!',
		'Patch Up Pet',
		'Supplement',
        NULL
	),
	(
		'Super Snouts Firm Up Stool Powder for Dogs, 4 oz',
		'Super Snouts',
		'Super Snouts',
		'Supplement',
        NULL
	), 
    (
		'Indoor Wet Cat Food Variety Pack, 5.5 oz, 24 Count',
		'Friskies',
		'Nestlé Purina PetCare',
		'Cat Food',
        'Wet'
	),
	(
		'+Plus Indoor Advantage Natural Low Fat & Weight Control Dry Cat Food, 22 lb Bag',
		'Purina ONE',
		'Nestlé Purina PetCare',
		'Cat Food',
        'Dry'
	),
	(
		'Complete Performance Clumping Scented Cat Litter, 42 lb Bag',
		'Scoop Away',
		'The Clorox Company',
		'Cat Litter',
        NULL
	), 
    (
		'Sensitive Skin & Stomach Salmon & Rice Recipe Dog Food, 8 lb Bag',
		'Pure Balance Pro+',
		'Walmart',
		'Dog Food',
        'Dry'
	);
    
   
    
  

		