# Write your MySQL query statement below
with cte as (select
    customer_id,
    count(distinct product_key) as count1
from customer
group by customer_id)

select
    customer_id
from cte
where count1 = (
    select count(*) from product
)