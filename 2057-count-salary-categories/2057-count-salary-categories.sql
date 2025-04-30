/* Write your T-SQL query statement below */
select  'High Salary' as category,count(b.total) as accounts_count 
from(
select sum(income) as total
from accounts
group by account_id
having sum(income) >50000
) b
union
select 'Low Salary' as category,count(b.total) as accounts_count 
from(
select sum(income) as total
from accounts
group by account_id
having sum(income) <20000
) b

union
select 'Average Salary' as category,count(b.total) as accounts_count 
from(
select sum(income) as total
from accounts
group by account_id
having sum(income) between 20000 and 50000
) b