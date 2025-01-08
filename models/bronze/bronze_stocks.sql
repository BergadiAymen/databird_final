WITH raw_data AS (
    SELECT *
    FROM {{source("databird_final","stocks")}}
)
SELECT DISTINCT *
FROM raw_data
