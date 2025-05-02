select e.employee_id  
	from employees e
	left join employees ms on  e.manager_id=ms.employee_id 
	where ms.employee_id is null and e.salary < 30000 and e.manager_id is not null

    order by e.employee_id