/* Write your T-SQL query statement below */
select progess_table.mchn1 as machine_id  ,Cast(avg(progess_table.time2-progess_table.time1) as decimal(10,3)) as processing_time 
from
(select a1.machine_id mchn1,a2.machine_id mchn2,
a1.process_id procee1,a2.process_id procee2,
a1.activity_type type1,a2.activity_type type2
,a1.timestamp as time1,a2.timestamp  as time2
from activity  a1
join activity a2 on 
a1.process_id =a2.process_id 
and a1.machine_id = a2.machine_id
where a1.activity_type = 'start' and a2.activity_type='end'
) as progess_table 
group by progess_table.mchn1
;