-- Total Unique Customers
SELECT COUNT(DISTINCT customer_unique_id) AS total_customers
FROM customers;

-- Repeat Customers (counted per unique person)
SELECT
    c.customer_unique_id,
    COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o ON o.customer_id = c.customer_id
GROUP BY c.customer_unique_id
HAVING COUNT(o.order_id) > 1;