WITH raw_data AS (
    SELECT *
    FROM {{source("databird_final","staffs")}}
)
SELECT DISTINCT *
FROM raw_data
