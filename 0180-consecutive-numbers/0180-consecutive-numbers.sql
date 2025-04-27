/* Write your T-SQL query statement below */
select distinct l1.num as ConsecutiveNums 
from logs l1 join  
 logs l2 on l1.num=l2.num
join logs l3 on l2.num=l3.num
where 
 l1.id=l2.id-1
and l1.id=l3.id-2;