select
    order_id,
    customer_id,
    product_id,
    sales
from {{ ref('stg_sales') }}