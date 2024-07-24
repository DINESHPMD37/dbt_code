
with stg_products as (
select * from {{source('staging','raw_products')}}
)
select * from stg_products