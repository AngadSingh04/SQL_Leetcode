-- Write your PostgreSQL query statement below
select emp1.name as Employee from employee as emp1 left outer join  employee as emp2
on emp1.managerid = emp2.id
where emp1.salary > emp2.salary;