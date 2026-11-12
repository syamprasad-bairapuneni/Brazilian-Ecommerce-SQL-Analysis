-- Check 1: order-level IDs vs real people
SELECT COUNT(DISTINCT customer_id) AS per_order_ids,
       COUNT(DISTINCT customer_unique_id) AS unique_people
FROM customers;

-- Check 2: people with more than one order
SELECT COUNT(*) AS repeat_people
FROM (
  SELECT c.customer_unique_id
  FROM customers c
  JOIN orders o ON o.customer_id = c.customer_id
  GROUP BY c.customer_unique_id
  HAVING COUNT(o.order_id) > 1
);

-- Check 3: repeat vs one-time revenue
WITH person AS (
  SELECT c.customer_unique_id,
         COUNT(DISTINCT o.order_id) AS orders,
         SUM(oi.price) AS revenue
  FROM customers c
  JOIN orders o ON o.customer_id = c.customer_id
  JOIN order_items oi ON oi.order_id = o.order_id
  GROUP BY c.customer_unique_id
)
SELECT CASE WHEN orders > 1 THEN 'repeat' ELSE 'one-time' END AS segment,
       COUNT(*) AS people,
       ROUND(AVG(revenue), 2) AS avg_revenue
FROM person
GROUP BY segment;