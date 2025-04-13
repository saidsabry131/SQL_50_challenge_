SELECT round( (COUNT(DISTINCT t.player_id)*1.0/(select count(distinct player_id) from activity)) ,2)as fraction
FROM (
    SELECT player_id, MIN(event_date) AS first_event_date
    FROM Activity
    GROUP BY player_id
) AS t

join activity t2 on  t.player_id = t2.player_id
where DATEDIFF(day,t.first_event_date,t2.event_date)=1;
