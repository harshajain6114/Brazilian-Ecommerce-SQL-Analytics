-- Monthly revenue + MoM growth
SELECT 
    strftime('%Y-%m', o.order_purchase_timestamp) AS month,
    ROUND(SUM(oi.price + oi.freight_value), 2) AS revenue,
    ROUND(
        (SUM(oi.price + oi.freight_value) - 
         LAG(SUM(oi.price + oi.freight_value)) OVER (ORDER BY strftime('%Y-%m', o.order_purchase_timestamp)))
        * 100.0 / NULLIF(LAG(SUM(oi.price + oi.freight_value)) OVER (ORDER BY strftime('%Y-%m', o.order_purchase_timestamp)), 0),
    2) AS mom_growth
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
WHERE o.order_status = 'delivered'
GROUP BY month
ORDER BY month;

-- Top 10 customers by spend
SELECT 
    c.customer_unique_id,
    MAX(o.order_purchase_timestamp) AS last_purchase,
    COUNT(DISTINCT o.order_id) AS frequency,
    ROUND(SUM(oi.price),2) AS monetary_value
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
WHERE o.order_status = 'delivered'
GROUP BY c.customer_unique_id
ORDER BY monetary_value DESC
LIMIT 10;
