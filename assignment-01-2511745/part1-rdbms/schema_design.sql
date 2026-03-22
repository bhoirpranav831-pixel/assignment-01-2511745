-- Customers Table
CREATE TABLE customers (
    customer_id VARCHAR(10) PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL
);

-- Products Table
CREATE TABLE products (
    product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL
);

-- Sales Representatives Table
CREATE TABLE sales_representatives (
    rep_id VARCHAR(10) PRIMARY KEY,
    rep_name VARCHAR(100) NOT NULL
);

-- Orders Table
CREATE TABLE orders (
    order_id VARCHAR(10) PRIMARY KEY,
    customer_id VARCHAR(10) NOT NULL,
    rep_id VARCHAR(10) NOT NULL,
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (rep_id) REFERENCES sales_representatives(rep_id)
);

-- Order Items Table
CREATE TABLE order_items (
    order_item_id INTEGER PRIMARY KEY,
    order_id VARCHAR(10) NOT NULL,
    product_id VARCHAR(10) NOT NULL,
    quantity INTEGER NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- INSERT DATA (at least 5 rows per table)

INSERT INTO customers VALUES
('C1','Rahul','Mumbai'),
('C2','Amit','Pune'),
('C3','Neha','Mumbai'),
('C4','Priya','Delhi'),
('C5','Karan','Bangalore');

INSERT INTO products VALUES
('P1','Laptop',50000),
('P2','Mobile',20000),
('P3','Shoes',3000),
('P4','Watch',5000),
('P5','Headphones',2000);

INSERT INTO sales_representatives VALUES
('R1','Raj'),
('R2','Simran'),
('R3','Aman'),
('R4','Riya'),
('R5','Vikas');

INSERT INTO orders VALUES
('O1','C1','R1','2023-01-01'),
('O2','C2','R2','2023-02-01'),
('O3','C3','R3','2023-03-01'),
('O4','C4','R4','2023-04-01'),
('O5','C5','R5','2023-05-01');

INSERT INTO order_items VALUES
(1,'O1','P1',1),
(2,'O2','P2',2),
(3,'O3','P3',3),
(4,'O4','P4',1),
(5,'O5','P5',2);
