-- Row counts in main tables
SELECT 'customers' AS table_name, COUNT(*) AS total_rows FROM customers
UNION ALL
SELECT 'orders', COUNT(*) FROM orders
UNION ALL
SELECT 'order_items', COUNT(*) FROM order_items;

-- Orders + customers join
SELECT o.order_id, o.customer_id, o.order_purchase_timestamp, c.customer_unique_id, c.customer_city, c.customer_state
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
LIMIT 10;

-- Orders + order_items join
SELECT oi.order_id, oi.product_id, oi.price, oi.freight_value, o.order_purchase_timestamp
FROM order_items oi
JOIN orders o ON oi.order_id = o.order_id
LIMIT 10;

-- Orders + payments join
SELECT o.order_id, o.order_purchase_timestamp, p.payment_type, p.payment_value
FROM orders o
JOIN order_payments p ON o.order_id = p.order_id
LIMIT 10;

-- Orders + reviews join
SELECT o.order_id, o.order_purchase_timestamp, r.review_score, r.review_comment_message
FROM orders o
JOIN order_reviews r ON o.order_id = r.order_id
LIMIT 10;
-- Row counts in main tables
SELECT 'customers' AS table_name, COUNT(*) AS total_rows FROM customers
UNION ALL
SELECT 'orders', COUNT(*) FROM orders
UNION ALL
SELECT 'order_items', COUNT(*) FROM order_items;

-- Orders + customers join
SELECT o.order_id, o.customer_id, o.order_purchase_timestamp, c.customer_unique_id, c.customer_city, c.customer_state
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
LIMIT 10;

-- Orders + order_items join
SELECT oi.order_id, oi.product_id, oi.price, oi.freight_value, o.order_purchase_timestamp
FROM order_items oi
JOIN orders o ON oi.order_id = o.order_id
LIMIT 10;

-- Orders + payments join
SELECT o.order_id, o.order_purchase_timestamp, p.payment_type, p.payment_value
FROM orders o
JOIN order_payments p ON o.order_id = p.order_id
LIMIT 10;

-- Orders + reviews join
SELECT o.order_id, o.order_purchase_timestamp, r.review_score, r.review_comment_message
FROM orders o
JOIN order_reviews r ON o.order_id = r.order_id
LIMIT 10;
