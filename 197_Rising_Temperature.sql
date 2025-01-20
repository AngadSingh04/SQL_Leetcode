-- Write your PostgreSQL query statement below
select
    id
from (
select
    id,
    recorddate,
    temperature,
    lag(recorddate) over(order by recorddate) as previousdate,
    lag(temperature) over() as previoustemp
from weather
)
where recorddate = 1 + previousdate
and temperature > previoustemp;