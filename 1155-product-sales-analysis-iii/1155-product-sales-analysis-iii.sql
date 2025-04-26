/* Write your T-SQL query statement below */

select tb.product_id,tb.first_year ,s.quantity ,s.price
from sales s
join (
select min(s.year ) as first_year ,s.product_id as product_id
from sales s
group by s.product_id ) tb on tb.product_id =s.product_id and s.year=tb.first_year;