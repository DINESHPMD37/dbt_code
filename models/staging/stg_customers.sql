{{ config(materialized='table') }}

with stg_customers as (
    select * from {{source('staging','customers')}}
    )
SELECT * FROM stg_customers