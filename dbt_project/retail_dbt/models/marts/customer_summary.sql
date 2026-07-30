select
    customer_id,
    customer_name,
    segment,
    country,
    state,
    region,
    count(*) as total_orders
from {{ ref('stg_customers') }}
group by
    customer_id,
    customer_name,
    segment,
    country,
    state,
    region