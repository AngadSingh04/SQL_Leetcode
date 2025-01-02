-- Write your PostgreSQL query statement below
with new_table as (select *
from project
inner join employee
on project.employee_id = employee.employee_id)
select project_id, round(avg(experience_years),2) as average_years
from new_table
group by project_id;