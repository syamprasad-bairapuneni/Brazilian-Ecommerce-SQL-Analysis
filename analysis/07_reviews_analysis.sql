-- Average Review Score
SELECT ROUND(AVG(review_score),2) AS avg_rating
FROM reviews;

-- Delivery Delay vs Review Score
SELECT
    r.review_score,
    COUNT(*) AS total_orders
FROM reviews r
JOIN orders o ON r.order_id = o.order_id
WHERE o.order_delivered_customer_date > o.order_estimated_delivery_date
GROUP BY r.review_score
ORDER BY r.review_score;

-- Late vs On-Time Delivery: average review score
SELECT
    CASE WHEN o.order_delivered_customer_date > o.order_estimated_delivery_date
         THEN 'late' ELSE 'on time' END AS delivery,
    COUNT(*) AS orders,
    ROUND(AVG(r.review_score), 2) AS avg_score
FROM orders o
JOIN reviews r ON r.order_id = o.order_id
WHERE o.order_delivered_customer_date IS NOT NULL
GROUP BY delivery;
