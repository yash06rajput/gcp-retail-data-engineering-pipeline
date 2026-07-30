select distinct
    `Product ID` as product_id,
    Category as category,
    `Sub-Category` as sub_category,
    `Product Name` as product_name
from {{ source('retail_raw', 'superstore') }}