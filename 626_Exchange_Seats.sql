-- Write your PostgreSQL query statement below
select 
    case
        when stu.id % 2 != 0 and stu.id = (
            select
                count(*)
            from seat
        ) then stu.id
        when stu.id %2 = 0 then stu.id - 1
        else stu.id + 1
    end as id,
    student
from seat as stu
order by id;
    