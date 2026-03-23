CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    customer_email VARCHAR(100),
    customer_city VARCHAR(50)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    unit_price DECIMAL(10,2)
);

CREATE TABLE sales_reps (
    sales_rep_id INT PRIMARY KEY,
    sales_rep_name VARCHAR(100),
    sales_rep_email VARCHAR(100)
);

CREATE TABLE offices (
    office_address VARCHAR(200) PRIMARY KEY
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    sales_rep_id INT,
    office_address VARCHAR(200),
    order_date DATE
);

CREATE TABLE order_items (
    order_id INT,
    product_id INT,
    quantity INT,
    PRIMARY KEY (order_id, product_id)
);

INSERT INTO customers VALUES
(1,'Amit','amit@gmail.com','Mumbai'),
(2,'Rahul','rahul@gmail.com','Delhi'),
(3,'Sita','sita@gmail.com','Mumbai'),
(4,'John','john@gmail.com','Pune'),
(5,'Priya','priya@gmail.com','Delhi');

INSERT INTO products VALUES
(101,'Laptop','Electronics',50000),
(102,'Mouse','Electronics',500),
(103,'Keyboard','Electronics',1500),
(104,'Chair','Furniture',3000),
(105,'Table','Furniture',7000);

INSERT INTO sales_reps VALUES
(201,'Raj','raj@gmail.com'),
(202,'Simran','simran@gmail.com'),
(203,'Arjun','arjun@gmail.com'),
(204,'Neha','neha@gmail.com'),
(205,'Vikas','vikas@gmail.com');

INSERT INTO offices VALUES
('Mumbai Office'),
('Delhi Office'),
('Pune Office'),
('Bangalore Office'),
('Chennai Office');

INSERT INTO orders VALUES
(1,1,201,'Mumbai Office','2024-01-01'),
(2,2,202,'Delhi Office','2024-01-02'),
(3,3,203,'Pune Office','2024-01-03'),
(4,4,204,'Bangalore Office','2024-01-04'),
(5,5,205,'Chennai Office','2024-01-05');

INSERT INTO order_items VALUES
(1,101,2),
(1,102,1),
(2,103,3),
(3,104,1),
(4,105,2);
