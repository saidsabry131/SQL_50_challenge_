with max_salary as (
    select max(salary) as max_salary
    from employee
)

select max(employee.salary) as SecondHighestSalary
from employee
where salary<(select max_salary from max_salary)