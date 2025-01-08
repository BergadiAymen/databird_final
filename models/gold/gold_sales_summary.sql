WITH order_data AS (
    SELECT *
    FROM {{ ref("silver_orders") }}
),
order_items AS (
    SELECT *
    FROM {{ ref("silver_order_items") }}
),
products AS (
    SELECT *
    FROM {{ ref("silver_products") }}
),
categories AS (
    SELECT *
    FROM {{ ref("silver_categories") }}
),
brands AS (
    SELECT *
    FROM {{ ref("silver_brands") }}
)
SELECT 
    o.order_id,
    o.order_date,
    oi.product_id,
    p.product_name,
    b.brand_name,
    c.category_name,
    oi.quantity,
    oi.list_price,
    oi.discount,
    (oi.quantity * oi.list_price * (1 - oi.discount)) AS total_price
FROM order_data o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
JOIN brands b ON p.brand_id = b.brand_id
JOIN categories c ON p.category_id = c.category_id

