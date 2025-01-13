-- Write your PostgreSQL query statement below
select
    product.product_id,
    product_name
from product
inner join sales
on product.product_id = sales.product_id
group by product.product_id,product_name
having  min(sale_date) >= '2019-01-01' and max(sale_date) <= '2019-03-31'