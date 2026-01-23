-- Total Orders
SELECT COUNT(DISTINCT order_id) AS total_orders
FROM orders;

-- Total Revenue
SELECT ROUND(SUM(price + freight_value),2) AS total_revenue
FROM order_items;

-- Monthly Revenue Trend
SELECT
    DATE_FORMAT(o.order_purchase_timestamp,'%Y-%m') AS month,
    ROUND(SUM(oi.price),2) AS revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY month
ORDER BY month;
