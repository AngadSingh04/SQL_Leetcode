-- Write your PostgreSQL query statement below
select signups.user_id,
round(case
    when count(*) = 0 then 0
    else count(case when action = 'confirmed' then 1 end) * 1.0/
         count(*)
end,2) as confirmation_rate
from confirmations
right outer join signups
on confirmations.user_id = signups.user_id
group by signups.user_id;