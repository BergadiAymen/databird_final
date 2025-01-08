WITH customers AS (
    SELECT *
    FROM {{ ref("bronze_customers") }}
),
orders AS (
    SELECT *
    FROM {{ ref("silver_orders") }}
),
order_items AS (
    SELECT *
    FROM {{ ref("gold_sales_summary") }}
),
customer_summary AS (
SELECT 
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    COUNT(o.order_id) AS total_orders,
    SUM(oi.total_price) AS total_spent
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
LEFT JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY c.customer_id, c.first_name, c.last_name
)
SELECT * FROM customer_summary
