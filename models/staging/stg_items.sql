{{ config(materialized='table') }}

with stg_items as (
    select * from {{source('staging','raw_items')}}
    where sku='BEV-003'
    )
SELECT * FROM stg_items
