-- Write your PostgreSQL query statement below
with cte as (select
    id,
    people,
    visit_date,
    id-row_number() over(order by id) as rank
from stadium
where people >=100)
select 
    id,
    visit_date,
    people
from cte
where rank in (
select
    rank
from cte
group by rank
having count(*) >=3
)