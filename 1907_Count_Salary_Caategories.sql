# Write your MySQL query statement below
with cte as (select
    case
        when income < 20000 then 'Low Salary'
        when income between 20000 and 50000 then 'Average Salary'
        when income > 50000 then 'High Salary'
    end as category
from accounts)

select
    category1.category,
    count(cte.category) as accounts_count
from cte
right outer join 
(select 'Low Salary' as category union select 'High Salary' as category union select 'Average Salary') as category1
on cte.category = category1.category
group by category;
    