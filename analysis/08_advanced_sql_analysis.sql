-- Customer Lifetime Value (CLV) per person
SELECT
    c.customer_unique_id,
    ROUND(SUM(oi.price), 2) AS lifetime_value
FROM customers c
JOIN orders o ON o.customer_id = c.customer_id
JOIN order_items oi ON oi.order_id = o.order_id
GROUP BY c.customer_unique_id
ORDER BY lifetime_value DESC;

-- Running Monthly Revenue
WITH monthly_revenue AS (
    SELECT
        strftime('%Y-%m', o.order_purchase_timestamp) AS month,
        SUM(oi.price) AS revenue
    FROM orders o
    JOIN order_items oi ON o.order_id = oi.order_id
    GROUP BY month
)
SELECT
    month,
    revenue,
    SUM(revenue) OVER (ORDER BY month) AS cumulative_revenue
FROM monthly_revenue;

-- Seller Benchmarking
WITH seller_revenue AS (
    SELECT seller_id, SUM(price) AS revenue
    FROM order_items
    GROUP BY seller_id
)
SELECT
    seller_id,
    revenue,
    AVG(revenue) OVER () AS avg_revenue,
    CASE
        WHEN revenue > AVG(revenue) OVER () THEN 'Above Average'
        ELSE 'Below Average'
    END AS performance
FROM seller_revenue;