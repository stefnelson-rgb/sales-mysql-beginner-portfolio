
--Total revenue from all sales
SELECT SUM(revenue) AS total_revenue FROM fact_sales;

--Total revenue grouped by country
SELECT SUM(revenue) AS total_revenue, c.country FROM fact_sales f
JOIN dim_customers c
ON f.customer_id = c.customer_id
GROUP BY c.country;

--Total revenue grouped by product line
SELECT SUM(revenue) AS total_revenue, p.productline FROM fact_sales f
JOIN dim_products p
ON f.product_id = p.product_id
GROUP BY p.productline;

--Monthly revenue trend
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month, SUM(revenue) AS monthly_rev FROM fact_sales 
GROUP BY  month
ORDER BY month;