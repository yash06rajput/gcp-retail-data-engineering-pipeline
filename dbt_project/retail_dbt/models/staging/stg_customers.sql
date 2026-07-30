select distinct
    `Customer ID` as customer_id,
    `Customer Name` as customer_name,
    Segment as segment,
    Country as country,
    City as city,
    State as state,
    `Postal Code` as postal_code,
    Region as region
from {{ source('retail_raw', 'superstore') }}