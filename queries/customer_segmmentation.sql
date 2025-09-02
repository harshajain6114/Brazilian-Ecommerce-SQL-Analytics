-- Full customer order-product-review dataset (exploration)
SELECT c.customer_unique_id,
       o.order_id,
       o.order_purchase_timestamp,
       p.product_category_name,
       s.seller_id,
       oi.price,
       r.review_score
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
JOIN sellers s ON oi.seller_id = s.seller_id
LEFT JOIN order_reviews r ON o.order_id = r.order_id
LIMIT 20;

-- RFM analysis (Recency, Frequency, Monetary)
WITH rfm AS (
    SELECT
        c.customer_unique_id,
        MAX(o.order_purchase_timestamp) AS last_purchase,
        COUNT(o.order_id) AS frequency,
        SUM(oi.price + oi.freight_value) AS monetary
    FROM customers c
    JOIN orders o ON c.customer_id = o.customer_id
    JOIN order_items oi ON o.order_id = oi.order_id
    WHERE o.order_status = 'delivered'
    GROUP BY c.customer_unique_id
),
scored AS (
    SELECT
        customer_unique_id,
        JULIANDAY('2018-09-01') - JULIANDAY(last_purchase) AS recency,
        frequency,
        monetary,
        NTILE(4) OVER (ORDER BY JULIANDAY('2018-09-01') - JULIANDAY(last_purchase)) AS r_score,
        NTILE(4) OVER (ORDER BY frequency DESC) AS f_score,
        NTILE(4) OVER (ORDER BY monetary DESC) AS m_score
    FROM rfm
)
SELECT 
    customer_unique_id,
    r_score, f_score, m_score,
    CASE 
        WHEN r_score >= 3 AND f_score >= 3 AND m_score >= 3 THEN 'VIP'
        WHEN r_score >= 3 AND f_score >= 2 THEN 'Loyal'
        WHEN r_score = 1 THEN 'At Risk'
        ELSE 'Regular'
    END AS segment
FROM scored;

-- Cohort retention analysis
WITH cohort AS (
    SELECT 
        c.customer_unique_id,
        MIN(strftime('%Y-%m', o.order_purchase_timestamp)) AS cohort_month,
        strftime('%Y-%m', o.order_purchase_timestamp) AS order_month
    FROM customers c
    JOIN orders o ON c.customer_id = o.customer_id
    WHERE o.order_status = 'delivered'
    GROUP BY c.customer_unique_id, order_month
),
retention AS (
    SELECT
        cohort_month,
        order_month,
        COUNT(DISTINCT customer_unique_id) AS customers
    FROM cohort
    GROUP BY cohort_month, order_month
)
SELECT 
    cohort_month,
    order_month,
    customers
FROM retention
ORDER BY cohort_month, order_month;
