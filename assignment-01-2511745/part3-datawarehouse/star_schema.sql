
CREATE TABLE dim_date (
date_id INT PRIMARY KEY,
date DATE,
month INT,
year INT
);

CREATE TABLE dim_store (
store_id INT PRIMARY KEY,
store_name VARCHAR(100),
city VARCHAR(50)
);

CREATE TABLE dim_product (
product_id INT PRIMARY KEY,
product_name VARCHAR(100),
category VARCHAR(50)
);

CREATE TABLE fact_sales (
sale_id INT PRIMARY KEY,
date_id INT,
store_id INT,
product_id INT,
quantity INT,
revenue DECIMAL(10,2)
);
