



select 
    product_id
    , product_name
    , product_type
    , product_description
    , product_price
    , case when is_food_item = 1 then 1 else null end as as_food
    , case when is_drink_item = 1 then 1 else null end as_drink
from {{ref('stg_products')}} 






