select
    `Order ID` as order_id,
    `Order Date` as order_date,
    `Ship Date` as ship_date,
    `Ship Mode` as ship_mode,
    `Customer ID` as customer_id,
    `Product ID` as product_id,
    Sales as sales
from {{ source('retail_raw', 'superstore') }}