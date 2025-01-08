WITH raw_data AS (
    SELECT *
    FROM {{source("databird_final","products")}}
)
SELECT DISTINCT *
FROM raw_data
