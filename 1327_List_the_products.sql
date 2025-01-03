-- Write your PostgreSQL query statement below
select
    product_name,
    sum(unit) as unit
from products
inner join orders
on products.product_id = orders.product_id
where extract(month from order_date) = '02' and extract(year from order_date) = '2020'
group by product_name
having sum(unit) >= 100;