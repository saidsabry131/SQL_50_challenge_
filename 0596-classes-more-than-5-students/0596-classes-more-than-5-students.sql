/* Write your T-SQL query statement below */
with cuntClass as (
select  class ,count(student) as cnt
from courses 
group by class
having count(student)>=5

)

select c.class
from cuntClass c;