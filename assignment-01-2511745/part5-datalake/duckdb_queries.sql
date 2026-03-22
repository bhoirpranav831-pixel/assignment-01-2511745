-- Q1: List all customers along with the total number of orders they have placed
SELECT 
    c.customer_id, 
    c.customer_name, 
    COUNT(o.order_id) AS total_orders
FROM read_csv_auto('customers.csv') c
LEFT JOIN read_json_auto('orders.json') o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY total_orders DESC;


-- Q2: Find the top 3 customers by total order value
SELECT TOP 3
    o.customer_id, 
    SUM(o.total_amount) AS total_spent
FROM read_json_auto('orders.json') o
GROUP BY o.customer_id
ORDER BY total_spent DESC;


-- Q3: List all products purchased by customers from Bangalore
SELECT 
    c.customer_name, 
    o.order_id
FROM read_csv_auto('customers.csv') c
INNER JOIN read_json_auto('orders.json') o
    ON c.customer_id = o.customer_id
WHERE c.city = 'Bangalore'
ORDER BY c.customer_name;

-- Q4: Join all three files to show: customer name, order date, product name, and quantity
SELECT 
    c.customer_name,
    o.order_date,
    o.total_amount
FROM read_csv_auto('customers.csv') c
INNER JOIN read_json_auto('orders.json') o
    ON c.customer_id = o.customer_id
ORDER BY o.order_date;
