-- Delayed Orders
SELECT COUNT(*) AS delayed_orders
FROM orders
WHERE order_delivered_customer_date > order_estimated_delivery_date;

-- Average Delivery Time (Days)
SELECT
    ROUND(AVG(DATEDIFF(order_delivered_customer_date, order_purchase_timestamp)),2)
    AS avg_delivery_days
FROM orders
WHERE order_delivered_customer_date IS NOT NULL;
