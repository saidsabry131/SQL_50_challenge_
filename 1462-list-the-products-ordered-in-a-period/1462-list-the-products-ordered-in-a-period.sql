# Write your MySQL query statement below
select p.product_name ,sum(o.unit )  as unit      
from products p
join orders o on p.product_id  =o.product_id 
and o.order_date like '2020-02%'
group by p.product_name
having sum(o.unit)>=100