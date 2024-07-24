
with integrated as (select * from {{ ref('stg_integrating_items_supplies' )}}
),
products as (
select * from {{ ref('stg_products' )}}
)
select 
integrated.id,
integrated.NAME,
integrated.cost,
integrated.sku,
TYPE,
description
from integrated
left outer join products on integrated.sku=products.sku