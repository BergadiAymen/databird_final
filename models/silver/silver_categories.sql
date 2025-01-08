WITH bronze_data AS (
    SELECT *
    FROM {{ ref("bronze_categories") }}
)
SELECT 
    category_id,
    category_name
FROM bronze_data
WHERE category_name IS NOT NULL
