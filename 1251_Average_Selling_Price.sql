-- Write your PostgreSQL query statement below
select
    prices.product_id,
    round(coalesce(sum(units * price)*1.0/nullif(sum(units),0),0),2) as average_price
from prices
left outer join unitssold
on unitssold.product_id=prices.product_id
and purchase_date between start_date and end_date
group by prices.product_id;
