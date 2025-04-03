/* Write your T-SQL query statement below */
select p.product_id,isNULL (round (SUM(CAST(u.units * p.price AS FLOAT))/sum(units) ,2),0) as average_price from
prices  p
left join UnitsSold  u on p.product_id =u.product_id and u.purchase_date  between
p.start_date  and p.end_date
group by p.product_id;