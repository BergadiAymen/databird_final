WITH raw_data AS (
    SELECT *
    FROM {{source("databird_final","order_items")}}
)
SELECT DISTINCT *
FROM raw_data
