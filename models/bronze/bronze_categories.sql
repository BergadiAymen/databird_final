WITH raw_data AS (
    SELECT *
    FROM {{source("databird_final","categories")}}
)
SELECT DISTINCT *
FROM raw_data
