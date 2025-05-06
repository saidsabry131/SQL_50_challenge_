/* Write your T-SQL query statement below */
select d.name as Department ,e.name as employee,e.salary as salary 
from employee e
join department d on e.departmentId  =d.id
where e.salary in (
select distinct top 3 e2.salary 
from employee e2
where e2.departmentId =d.id
order by e2.salary desc

)

 





