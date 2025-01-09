-- Write your PostgreSQL query statement below
select distinct(num) as consecutivenums
from (
select
    id,
    num,
    num2,
    lag(num2) over(order by id) as num3
from (
select
    id,
    num,
    lag(num) over(order by id) as num2
from logs
))
where num=num2 and num2=num3;
