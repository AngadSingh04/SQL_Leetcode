-- Write your PostgreSQL query statement below
select 
    name,
    bonus
from employee
left outer join bonus
on bonus.empid=employee.empid
where bonus < 1000 or bonus is null;