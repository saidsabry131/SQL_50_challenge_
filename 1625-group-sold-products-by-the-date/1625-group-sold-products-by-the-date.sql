# Write your MySQL query statement below
select tb.sell_date,
       count(*) as num_sold ,
       group_concat(DISTINCT product ORDER BY product ASC SEPARATOR ',') products
from(
select  sell_date,product
from activities
group by sell_date,product) tb
group by tb.sell_date