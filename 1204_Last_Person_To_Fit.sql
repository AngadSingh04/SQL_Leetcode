# Write your MySQL query statement below
with cte as (select 
    *,
    sum(weight) over(order by turn) as sum_of_weights
from queue)
select
    person_name
from cte
where sum_of_weights <= 1000
order by person_name desc
limit 1;