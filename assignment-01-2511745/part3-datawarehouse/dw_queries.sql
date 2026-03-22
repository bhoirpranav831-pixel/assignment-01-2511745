-- Q1: Total sales revenue by product category for each month
SELECT d.month, p.category, SUM(f.revenue) AS total_revenue
FROM fact_sales f
JOIN dim_date d ON f.date_id = d.date_id
JOIN dim_product p ON f.product_id = p.product_id
GROUP BY d.month, p.category
ORDER BY d.month, p.category;


-- Q2: Top 2 performing stores by total revenue
SELECT TOP 2 store_id, SUM(revenue) AS total_revenue
FROM fact_sales
GROUP BY store_id
ORDER BY total_revenue DESC;


-- Q3: Month-over-month sales trend across all stores
SELECT d.month, SUM(f.revenue) AS total_revenue
FROM fact_sales f
JOIN dim_date d ON f.date_id = d.date_id
GROUP BY d.month
ORDER BY d.month;