# E-Commerce Sales Data Analysis using SQL

## Project Overview
This project analyzes an e-commerce sales dataset using SQL and SQLite. The analysis includes aggregations, GROUP BY, HAVING, JOINs, subqueries, sorting, and filtering to answer important business questions.

## Dataset
The dataset used is `ECOMM_DATA_CLEANED.csv` and contains e-commerce order information such as:

- Order ID
- Order Date
- Customer details
- Region
- Category
- Sales
- Profit
- Quantity
- Discount

## Tools Used
- SQLite
- DB Browser for SQLite
- SQL
- GitHub

## SQL Analysis

The project answers the following business questions:

1. What is the total sales for each product category?
2. What is the average profit generated in each region?
3. How many orders are present in each customer segment?
4. Which product categories have a total profit greater than 10,000?
5. What are the top 5 records with the highest sales?
6. What is the total sales generated in each region, along with the assigned regional manager?
7. Which orders have sales greater than the overall average sales?
8. What is the average discount offered in each region?
9. Which orders have a profit lower than the overall average profit?
10. What is the minimum quantity ordered?

## SQL Concepts Used
- SELECT
- WHERE
- GROUP BY
- HAVING
- ORDER BY
- LIMIT
- Aggregate Functions: SUM, AVG, COUNT, MAX, MIN
- JOIN
- Subqueries

## Project Structure

```text
SQL_Project/
├── ECOMM_DATA_CLEANED.csv
├── ecommerce_new.db
├── ecommerce_analysis.sql
├── README.md
└── sample_output/
