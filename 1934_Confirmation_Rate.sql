-- Write your PostgreSQL query statement below
select
    signups.user_id,
    case when count(*)=0 then 0 else
    count(case when action = 'confirmed' then 1 end) * 1.0/count(*) end as confirmation_rate
from signups
left join confirmations
on signups.user_id=confirmations.user_id
group by signups.user_id