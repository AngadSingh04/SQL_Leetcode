-- Write your PostgreSQL query statement below
select 
    e2.reports_to as employee_id,
    e1.name,
    count(*) as reports_count,
    round(avg(e2.age),0) as average_age
from employees e1
right join employees e2
on e1.employee_id = e2.reports_to
where e2.reports_to is not null
group by e2.reports_to,e1.name
order by e2.reports_to
