CREATE DATABASE ecommerce_sales;
USE ecommerce_sales;

SELECT COUNT(*) FROM sales_data;
-- Total Revenue 
SELECT SUM(total_sales) AS total_revenue
FROM sales_data;
-- Sales by Category
SELECT category, sum(total_sales) as revenue
from sales_data
group by category
order by revenue desc;
-- Sales by Region
SELECT
    region,
    SUM(total_sales) AS revenue
FROM sales_data
GROUP BY region
ORDER BY revenue DESC;
-- Top 10 Products
SELECT
    product_name,
    SUM(total_sales) AS revenue
FROM sales_data
GROUP BY product_name
ORDER BY revenue DESC
LIMIT 10;

-- Total Revenue KPI
SELECT
    SUM(total_sales) AS total_revenue
FROM sales_data;
-- order id name has been changed
ALTER TABLE sales_data
CHANGE COLUMN `ï»¿Order_ID` Order_ID INT;
SHOW COLUMNS FROM sales_data;

-- Total Orders
SELECT
    COUNT(DISTINCT order_id) AS total_orders
FROM sales_data;
-- Average Order values
SELECT
    ROUND(SUM(total_sales) /
    COUNT(DISTINCT order_id),2) AS avg_order_value
FROM sales_data;
-- Sales by Category
SELECT
    category,
    SUM(total_sales) AS revenue
FROM sales_data
GROUP BY category
ORDER BY revenue DESC;
-- Sales by Region
SELECT
    region,
    SUM(total_sales) AS revenue
FROM sales_data
GROUP BY region
ORDER BY revenue DESC;
-- Customer Type Analysis
SELECT
    customer_type,
    COUNT(*) AS orders,
    SUM(total_sales) AS revenue
FROM sales_data
GROUP BY customer_type
ORDER BY revenue DESC;
-- Payment Method Analysis
SELECT
    payment_method,
    COUNT(*) AS transactions,
    SUM(total_sales) AS revenue
FROM sales_data
GROUP BY payment_method
ORDER BY revenue DESC;
-- Monthly Sales Trend
SELECT
    year,
    month,
    SUM(total_sales) AS revenue
FROM sales_data
GROUP BY year, month
ORDER BY year, month;
-- Quarterly Sales Trend
SELECT
    year,
    quarter,
    SUM(total_sales) AS revenue
FROM sales_data
GROUP BY year, quarter
ORDER BY year, quarter;
-- Top 10 Products
SELECT
    product_name,
    SUM(total_sales) AS revenue
FROM sales_data
GROUP BY product_name
ORDER BY revenue DESC
LIMIT 10;