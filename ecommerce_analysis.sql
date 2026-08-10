-- Q1: What is the total sales for each product category?
SELECT Category, SUM(Sales)
FROM ECOMM_DATA_CLEANED
GROUP BY Category;

-- Q2:What is the average profit generated in each region?
SELECT Region, AVG(Profit)
FROM ECOMM_DATA_CLEANED
GROUP BY Region;

-- Q3:How many orders are placed by each customer segment?
SELECT Segment, COUNT("Order ID")
FROM ECOMM_DATA_CLEANED
GROUP BY Segment;

-- Q4: Which product categories have a total profit greater than 10,000?
SELECT Category, SUM(Profit)
FROM ECOMM_DATA_CLEANED   
GROUP BY Category
HAVING SUM(Profit) > 10000;

-- Q5: What are the top 5 records with the highest sales?
SELECT *
FROM ECOMM_DATA_CLEANED
ORDER BY Sales DESC
LIMIT 5;

-- Setup: Create a table to store regional manager details for JOIN analysis
CREATE TABLE IF NOT EXISTS Region_Manager (
    Region TEXT,
    Manager TEXT
);
-- Insert regional manager details for use in the JOIN analysis
INSERT INTO Region_Manager (Region, Manager)
VALUES
('East', 'Manager A'),
('West', 'Manager B'),
('Central', 'Manager C'),
('South', 'Manager D');

-- Q6: What is the total sales generated in each region, along with the assigned regional manager?
SELECT 
    E.Region,
    R.Manager,
    SUM(E.Sales) AS Total_Sales
FROM ECOMM_DATA_CLEANED AS E
JOIN Region_Manager AS R
    ON E.Region = R.Region
GROUP BY E.Region, R.Manager
ORDER BY Total_Sales DESC;
 
 -- Q7: Which orders have sales greater than the overall average sales?
SELECT *
FROM ECOMM_DATA_CLEANED
WHERE Sales >
(
    SELECT AVG(Sales)
    FROM ECOMM_DATA_CLEANED
);

-- Q8: What is the average discount offered in each region?
SELECT Region, AVG(Discount)
FROM ECOMM_DATA_CLEANED
GROUP BY Region;
 
 -- Q9: Which orders have a profit lower than the overall average profit?
SELECT *
FROM ECOMM_DATA_CLEANED
WHERE Profit <
(
    SELECT AVG(Profit)
    FROM ECOMM_DATA_CLEANED
);

 -- Q10:What is the maximum quantity sold in each product category?
SELECT Category, MAX(Quantity)
FROM ECOMM_DATA_CLEANED
GROUP BY Category;   



