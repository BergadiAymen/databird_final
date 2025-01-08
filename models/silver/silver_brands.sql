WITH bronze_data AS (
    SELECT *
    FROM {{ ref("bronze_brands") }}
)
SELECT 
    brand_id,
    brand_name
FROM bronze_data
WHERE brand_name IS NOT NULL
