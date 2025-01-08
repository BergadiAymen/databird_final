WITH raw_data AS (
    SELECT *
    FROM {{source("databird_final","customers")}}
)
SELECT DISTINCT *
FROM raw_data
