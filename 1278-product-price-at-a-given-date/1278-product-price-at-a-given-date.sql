# Write your MySQL query statement below
with datebefor16 as(
select product_id ,max(change_date) as max_date
from products
where change_date <='2019-08-16'
group by product_id)




select p.product_id,new_price as price
from products p ,datebefor16 d
where p.product_id = d.product_id and p.change_date =d.max_date

union
select product_id ,10 as price from 
products 
group by product_id
having min(change_date)>'2019-08-16';