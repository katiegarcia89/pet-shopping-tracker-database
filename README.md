# Pet Shopping Tracker Database

A relational MySQL database designed to compare pet product prices across multiple retailers. This project demonstrates database design, normalization, SQL querying, and data analysis using realistic shopping data.

---

## Overview

The Pet Shopping Tracker Database was inspired by my own shopping habits. It allows users to compare prices, delivery times, and product availability across multiple retailers while showcasing practical SQL and relational database skills.

This project demonstrates:

- Database design and normalization
- Relational data modeling
- SQL query development
- Data analysis using realistic datasets

---

## EER Diagram

![EER Diagram](docs/eer-diagram.png)

---

## Database Structure

The database contains three related tables.

| Table | Description |
|--------|-------------|
| **Stores** | Stores that sell pet products |
| **Products** | Product information including category and food type |
| **StorePrices** | Product pricing, delivery estimates, and historical pricing information |

---

## Skills Demonstrated

- Relational Database Design
- Entity Relationship Modeling
- Primary & Foreign Keys
- SQL Queries
- Filtering & Sorting
- Aggregate Functions
- GROUP BY
- HAVING
- INNER JOIN
- CASE Statements
- Subqueries
- Window Functions
- Common Table Expressions (CTEs)
- Views

---

## Project Files

| File | Description |
|------|-------------|
| 01_Create_Database.sql | Creates the database |
| 02_Create_Tables.sql | Creates all tables |
| 03_Insert_Stores.sql | Inserts store data |
| 04_Insert_Products.sql | Inserts product data |
| 05_Insert_StorePrices.sql | Inserts pricing data |
| Basic_Queries.sql | Basic SQL queries |
| Intermediate_Queries.sql | Joins, grouping, and aggregate functions |
| Advanced_Queries.sql | Window functions, CTEs, views, and advanced SQL techniques |

---

## Example Business Questions

This database can answer questions such as:

- Which store has the lowest price for each product?
- Which products are available for same-day pickup?
- What is the average price of dog food?
- Which stores offer the fastest delivery?
- Which retailer offers the cheapest overall prices?
- Which products are priced above or below average?

---

## Technologies

- MySQL
- DBeaver
- SQL

---

## Author

**Katie Garcia**
