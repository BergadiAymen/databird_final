WITH bronze_data AS (
    SELECT *
    FROM {{ ref("bronze_order_items") }}
)
SELECT 
    order_id,
    item_id,
    product_id,
    quantity,
    list_price,
    discount
FROM bronze_data
WHERE quantity > 0
