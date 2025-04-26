select c.employee_id ,c.name  ,count(c2.employee_id) as reports_count  , round (avg(c2.age*1.0),0) as average_age 
from employees c
join employees c2 on c.employee_id = c2.reports_to 
group by c.employee_id ,c.name
order by  c.employee_id