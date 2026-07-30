select
    region,
    sum(sales) as total_sales,
    count(*) as total_orders
from {{ ref('stg_sales') }} s
join {{ ref('stg_customers') }} c
    on s.customer_id = c.customer_id
group by
    region