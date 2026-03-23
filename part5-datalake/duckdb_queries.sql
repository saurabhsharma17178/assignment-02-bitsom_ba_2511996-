-- Q1: List all customers along with total number of orders they have placed
SELECT 
    c.customer_id,
    c.customer_name,
    COUNT(o.order_id) AS total_orders
FROM read_csv_auto('customers.csv') c
LEFT JOIN read_json_auto('orders.json') o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name;


-- Q2: Find the top 3 customers by total order value
SELECT 
    c.customer_id,
    c.customer_name,
    SUM(o.total_amount) AS total_spent
FROM read_csv_auto('customers.csv') c
JOIN read_json_auto('orders.json') o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY total_spent DESC
LIMIT 3;


-- Q3: List all products purchased by customers from Bangalore
SELECT 
    p.product_name,
    c.customer_name,
    c.city
FROM read_csv_auto('customers.csv') c
JOIN read_json_auto('orders.json') o
ON c.customer_id = o.customer_id
JOIN read_parquet('products.parquet') p
ON o.order_id = p.order_id
WHERE c.city = 'Bangalore';


-- Q4: Join all three files to show customer name, order date, product name, and total amount
SELECT 
    c.customer_name,
    o.order_date,
    p.product_name,
    o.total_amount
FROM read_csv_auto('customers.csv') c
JOIN read_json_auto('orders.json') o
ON c.customer_id = o.customer_id
JOIN read_parquet('products.parquet') p
ON o.order_id = p.order_id;
