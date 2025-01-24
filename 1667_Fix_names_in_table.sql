-- Write your PostgreSQL query statement below
select
    user_id,
    concat(upper(substring(name from 1 for 1)), lower(substring(name from 2))) as name
from users
order by user_id;