WITH raw_data AS (
    SELECT *
    FROM {{source("databird_final","stores")}}
)
SELECT DISTINCT *
FROM raw_data
