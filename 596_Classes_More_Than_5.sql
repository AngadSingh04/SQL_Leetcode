-- Write your PostgreSQL query statement below
select class
from courses
group by class
having count(class) >= 5
order by count(class) desc;