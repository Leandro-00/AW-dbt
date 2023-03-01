-- Só foi usada as informações pertinentes com a regra de negócio.

with
    source_product as (
        select
           cast (productid as int) as product_id
           , cast (name as string) as name_product
        from {{ source('db_aw','product')}}
    )

select *
from source_product