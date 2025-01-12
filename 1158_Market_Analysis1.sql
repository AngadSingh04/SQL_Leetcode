-- Write your PostgreSQL query statement below
select
    user_id as buyer_id,
    join_date,
    count(buyer_id) as orders_in_2019
from users
left join orders
on users.user_id=orders.buyer_id
and extract(year from order_date) = '2019'
group by user_id, join_date;
     
--Got it on the first try! :)