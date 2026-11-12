-- Top Selling Product Categories (English names)
SELECT
    COALESCE(NULLIF(TRIM(t.product_category_name_english), ''),
             NULLIF(TRIM(p.product_category_name), ''),
             'uncategorized') AS category,
    COUNT(*) AS total_sales
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
LEFT JOIN category_translation t
    ON p.product_category_name = t.product_category_name
GROUP BY category
ORDER BY total_sales DESC
LIMIT 10;

-- Highest Revenue Categories (item price only, English names)
SELECT
    COALESCE(NULLIF(TRIM(t.product_category_name_english), ''),
             NULLIF(TRIM(p.product_category_name), ''),
             'uncategorized') AS category,
    ROUND(SUM(oi.price), 2) AS revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
LEFT JOIN category_translation t
    ON p.product_category_name = t.product_category_name
GROUP BY category
ORDER BY revenue DESC;