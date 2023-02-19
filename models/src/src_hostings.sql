	WITH raw_hostings AS (
    	SELECT * from {{ source('airbnb','hosts')}}
)
    SELECT * 
    FROM raw_hostings