-- Write your PostgreSQL query statement below
select 
    customer_id,
    count(*) as count_no_trans
from visits
where visit_id not in (
    select visits.visit_id
    from visits
    inner join transactions
    on visits.visit_id = transactions.visit_id
)
group by customer_id;

--