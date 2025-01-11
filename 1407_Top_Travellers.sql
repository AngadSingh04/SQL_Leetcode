-- Write your PostgreSQL query statement below
select
    name,
    coalesce(sum(distance),0) as travelled_distance
from users
left outer join rides
on users.id=rides.user_id
group by name,users.id
order by travelled_distance desc, name;