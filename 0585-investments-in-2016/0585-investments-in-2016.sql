/* Write your T-SQL query statement below */
with remove_duplicate as
(select lat,lon
from Insurance
group by lat,lon
having count(*) =1),

 get_duplicate as(
select tiv_2015
from
Insurance
group by tiv_2015
having count(*)>1)

select Round(sum(i.tiv_2016 ),2) as tiv_2016 
from Insurance i
join remove_duplicate r on r.lat =i.lat and r.lon =i.lon
where i.tiv_2015 in(select tiv_2015 from get_duplicate)



