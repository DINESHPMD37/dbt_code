{{ config(materialized='incremental',
unique_key ='id',
incremental_strategy= "merge",
tags=["staging"]) }}

with stg_customers as (
    select * from {{source('staging','customers')}}
    )
SELECT * FROM stg_customers