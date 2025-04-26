
with firstYear as(
select min(s.year ) as first_year ,s.product_id as product_id
from sales s
group by s.product_id
)

select fy.product_id,fy.first_year,
s.quantity ,s.price

from firstYear  fy
join sales s
on s.product_id=fy.product_id and s.year=fy.first_year;