WITH bronze_data AS (
    SELECT *
    FROM {{ ref("bronze_products") }}
)
SELECT 
    product_id,
    product_name,
    brand_id,
    category_id,
    model_year,
    list_price
FROM bronze_data
WHERE product_name IS NOT NULL
