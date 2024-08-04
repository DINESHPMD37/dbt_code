{{ config(materialized='table') }}

with stg_supplies as (
    select * from {{source('staging','raw_supplies')}}
    )
SELECT * FROM stg_supplies