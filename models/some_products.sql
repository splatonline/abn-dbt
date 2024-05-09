
select * 
from {{ ref('product_by_dow')}}
where dow == 'Sun'
