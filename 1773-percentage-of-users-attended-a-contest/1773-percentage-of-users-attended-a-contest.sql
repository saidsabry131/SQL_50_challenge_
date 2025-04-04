/* Write your T-SQL query statement below */
select r.contest_id ,
round(CAST(count(r.user_id) as float)*100/(select count(*) from users) ,2)as percentage 
	
from Register r 
left join USERS u on u.user_id =r.user_id 
group by r.contest_id
order by percentage desc,r.contest_id 