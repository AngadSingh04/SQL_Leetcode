-- Write your PostgreSQL query statement below
select
    id
from(
select 
    id,
    recordDate,
    temperature,
    lag(recorddate) over (order by recorddate) as previous_date,
    lag(temperature) over (order by recordDate) as previous_temperature
from weather
)
where temperature > previous_temperature and
recorddate = previous_date + 1;