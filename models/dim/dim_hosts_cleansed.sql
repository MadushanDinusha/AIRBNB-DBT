git push -u origin main{{
    config(
        materialized = 'view',
    )
}}

WITH src_hosts AS (
 SELECT
 *
 FROM
 {{ ref('src_hostings') }}
)
SELECT
 id,
 NVL(
 name,
 'Anonymous'
 ) AS host_name,
 is_superhost,
 created_at,
 updated_at
FROM
 src_hosts
