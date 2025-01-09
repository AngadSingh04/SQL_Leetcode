-- Write your PostgreSQL query statement below
(select 
    name as results
from users
inner join movierating
on users.user_id = movierating.user_id
group by name
order by count(*) desc,name limit 1)
union all
(select
    title as results
from movies
inner join movierating
on movies.movie_id=movierating.movie_id
where created_at between '2020-02-01' and '2020-02-29'
group by title
order by avg(rating) desc,title limit 1);

