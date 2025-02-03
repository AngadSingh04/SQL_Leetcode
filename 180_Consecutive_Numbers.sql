-- Write your PostgreSQL query statement below
with cte1 as (select
    id,
    lag(num) over(order by id) as num1
from logs), cte2 as (select
    id,
    lag(num1) over(order by id) as num2
from cte1)
select
    distinct(num) as ConsecutiveNums
from logs
inner join cte1
on logs.id=cte1.id 
inner join cte2
on logs.id=cte2.id
where num=num1 and num1=num2