{{
   config(materialized='ephemeral')
}}

select
     dayname(o.ordered_at) as dow
   , i.sku
   , p.type
   , sum(o.order_total)
from {{ ref('raw_orders')}} o left join {{ ref('raw_items') }} i on o.id=i.order_id
   left join {{ ref('raw_products')}} p on i.sku=p.sku
group by 1, 2, 3

