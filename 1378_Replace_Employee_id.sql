-- Write your PostgreSQL query statement below
select unique_id, name
from employees
left outer join employeeuni
on employees.id = employeeuni.id;