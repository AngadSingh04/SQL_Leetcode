-- Write your PostgreSQL query statement below
select
    contest_id,
    round(count(distinct register.user_id) * 100.0/(select count(*) from users),2) as percentage
from register
inner join users
on register.user_id=users.user_id
group by contest_id 
order by percentage desc, contest_id;
