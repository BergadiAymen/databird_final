WITH bronze_data AS (
    SELECT *
    FROM {{ ref("bronze_orders") }}
)
SELECT 
    order_id,
    customer_id,
    order_status,
    order_date,
    required_date,
    shipped_date,
    store_id,
    staff_id
FROM bronze_data
WHERE order_date IS NOT NULL
