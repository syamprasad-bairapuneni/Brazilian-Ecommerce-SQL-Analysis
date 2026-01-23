-- Payment Method Distribution
SELECT
    payment_type,
    COUNT(*) AS total_orders
FROM payments
GROUP BY payment_type
ORDER BY total_orders DESC;

-- Installment Behavior
SELECT
    payment_installments,
    COUNT(*) AS orders
FROM payments
GROUP BY payment_installments
ORDER BY payment_installments;
