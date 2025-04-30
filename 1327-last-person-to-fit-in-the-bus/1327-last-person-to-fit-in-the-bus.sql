/* Write your T-SQL query statement below */
select top 1 tb.person_name   from
(
select person_name as person_name,sum(weight) over (order by turn ) as total
from
queue 

) tb
where tb.total<=1000 order by total desc