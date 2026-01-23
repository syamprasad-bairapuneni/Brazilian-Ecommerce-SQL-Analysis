-- Total Unique Customers
SELECT COUNT(DISTINCT customer_unique_id) AS total_customers
FROM customers;

-- Repeat Customers
SELECT
    customer_id,
    COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 1;
