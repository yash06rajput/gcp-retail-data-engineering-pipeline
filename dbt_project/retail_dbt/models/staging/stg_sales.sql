select
    `Row ID` as row_id,
    `Order ID` as order_id,
    `Customer ID` as customer_id,
    `Product ID` as product_id,
    cast(Sales as numeric) as sales
from {{ source('retail_raw', 'superstore') }}