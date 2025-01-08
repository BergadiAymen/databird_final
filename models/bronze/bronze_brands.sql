WITH raw_data AS (
    SELECT *
    FROM {{source("databird_final","brands")}}
)
SELECT DISTINCT *
FROM raw_data
