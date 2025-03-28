/* Write your T-SQL query statement below */
select sg.user_id  ,round(avg(iif(cn.action='confirmed',1.00,0)),2) confirmation_rate    
from signups sg
left join Confirmations cn 
on sg.user_id = cn.user_id
group by sg.user_id 
order by sg.user_id