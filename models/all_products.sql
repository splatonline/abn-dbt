
{{
   config(materialized='table')
}}

select * 
from {{ ref('product_by_dow')}}