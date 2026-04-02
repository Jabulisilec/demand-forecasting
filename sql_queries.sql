-- SQL Queries for Analyzing Demand Forecasting Dataset  

-- 1. Retrieve total demand per product  
SELECT product_id, SUM(demand) AS total_demand  
FROM demand_forecasting  
GROUP BY product_id;  

-- 2. Retrieve average demand per product over a specified date range  
SELECT product_id, AVG(demand) AS average_demand  
FROM demand_forecasting  
WHERE date BETWEEN '2023-01-01' AND '2023-12-31'  
GROUP BY product_id;  

-- 3. Find the top 5 products with the highest total demand  
SELECT product_id, SUM(demand) AS total_demand  
FROM demand_forecasting  
GROUP BY product_id  
ORDER BY total_demand DESC  
LIMIT 5;  

-- 4. Analyze demand trends over time  
SELECT DATE(date) AS demand_date, SUM(demand) AS total_demand  
FROM demand_forecasting  
GROUP BY demand_date  
ORDER BY demand_date;  

-- 5. Compare predicted vs actual demand  
SELECT predicted.demand AS predicted_demand, actual.demand AS actual_demand  
FROM demand_forecasting AS actual  
JOIN predicted_demand AS predicted ON actual.product_id = predicted.product_id AND actual.date = predicted.date;  
\n-- Additional queries can be added as necessary.