-- Write your PostgreSQL query statement below
select
    to_char(trans_date, 'YYYY-MM') as month,
    country,
    count(*) as trans_count,
    coalesce(sum(case when state='approved' then 1 end),0) as approved_count,
    sum(amount) as trans_total_amount,
    coalesce(sum(case when state='approved' then amount end),0) as approved_total_amount
from transactions group by month,country;