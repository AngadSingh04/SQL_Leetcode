# Write your MySQL query statement below
select 
    signups.user_id,
    round(count(
        case when action = 'confirmed' then 1 end
    ) * 1.0 /count(*), 2) as confirmation_rate
from signups
left outer join confirmations
on signups.user_id = confirmations.user_id
group by signups.user_id;