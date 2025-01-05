-- Write your PostgreSQL query statement below
with cte as (select 
    account_id,
    case
        when income < 20000 then 'Low Salary'
        when income between 20000 and 50000 then 'Average Salary'
        else 'High Salary'
    end as category
from accounts)

select 
    t2.category,
    count(cte.category) as accounts_count
from cte
right outer join
(select
    'Low Salary' as category
union all
select 'Average Salary' as category
union all
select 'High Salary' as category) as t2
on t2.category = cte.category
group by t2.category;



