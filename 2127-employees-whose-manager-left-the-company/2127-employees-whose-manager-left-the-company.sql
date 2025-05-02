/* Write your T-SQL query statement below */

select ee.employee_id
from 
employees ee 
where ee.employee_id not in (

	select e.employee_id  
	from employees e
	 join employees ms on  e.manager_id=ms.employee_id 
 ) and ee.salary <30000 and ee.manager_id is not null 
 order by ee.employee_id