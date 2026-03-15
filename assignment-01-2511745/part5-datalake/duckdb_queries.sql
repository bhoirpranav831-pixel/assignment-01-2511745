
-- Q1
SELECT * FROM read_csv_auto('datasets/customers.csv');

-- Q2
SELECT * FROM read_json_auto('datasets/orders.json');

-- Q3
SELECT * FROM read_parquet('datasets/products.parquet');

-- Q4
SELECT * FROM read_csv_auto('datasets/customers.csv') c
JOIN read_json_auto('datasets/orders.json') o
ON c.customer_id=o.customer_id;
