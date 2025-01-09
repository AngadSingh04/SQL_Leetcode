-- Write your PostgreSQL query statement below
with cte1 as (
select 
    count(player_id) as count1
from (
select
    player_id,
    event_date,
    lag(event_date) over(partition by player_id order by player_id) as previous_date,
    min(event_date) over(partition by player_id order by player_id) as first_login
from activity
)
where event_date = 1 + first_login
),
cte2 as (
select 
    count(distinct player_id) as count2
from activity
)

select
    round((count1 * 1.0/count2),2) as fraction
from cte1,cte2;

--easy bro :)