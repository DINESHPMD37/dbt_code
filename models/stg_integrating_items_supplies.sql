
with items as (select * from {{ ref('stg_items' )}}
),
supplies as (
select * from {{ ref('stg_supplies' )}}
)
select 
items.id,
supplies.NAME,
supplies.cost,
supplies.sku
from items
left outer join supplies on items.sku=supplies.sku