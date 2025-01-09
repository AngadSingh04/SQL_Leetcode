-- Write your PostgreSQL query statement below
select
    Department,
    Employee,
    Salary
from (
select
    department.name as Department,
    employee.name as employee,
    salary,
    dense_rank() over(partition by department.name order by salary desc) as rank
from employee
inner join department
on employee.departmentid = department.id
)
where rank <=3;