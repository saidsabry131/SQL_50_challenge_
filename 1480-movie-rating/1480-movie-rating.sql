select results from (select top 1 u.name as results
from users u
join MovieRating r on u.user_id =r.user_id
group by u.user_id,u.name
order by count(r.rating) desc ,u.name 
 ) as myUser
union all
select results from
(
select top 1  m.title  as results 
from movies m
join MovieRating r on m.movie_id   =r.movie_id where r.created_at like '2020-02-%'
group by m.movie_id ,m.title  order by avg(isnull(r.rating*1.0,0)) desc,m.title) as myMovie;