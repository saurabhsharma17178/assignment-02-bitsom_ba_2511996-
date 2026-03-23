-- Q1
SELECT c.customer_name, SUM(oi.quantity * p.unit_price) AS total_order_value
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
WHERE c.customer_city = 'Mumbai'
GROUP BY c.customer_name;

-- Q2
SELECT p.product_name, SUM(oi.quantity) AS total_sold
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC
LIMIT 3;

-- Q3
SELECT sr.sales_rep_name, COUNT(DISTINCT o.customer_id) AS unique_customers
FROM sales_reps sr
JOIN orders o ON sr.sales_rep_id = o.sales_rep_id
GROUP BY sr.sales_rep_name;

-- Q4
SELECT o.order_id, SUM(oi.quantity * p.unit_price) AS total_value
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY o.order_id
HAVING total_value > 10000
ORDER BY total_value DESC;

-- Q5
SELECT product_name
FROM products
WHERE product_id NOT IN (
    SELECT product_id FROM order_items
);
