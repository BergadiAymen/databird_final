WITH raw_data AS (
    SELECT *
    FROM {{source("databird_final","orders")}}
)
SELECT DISTINCT *
FROM raw_data
