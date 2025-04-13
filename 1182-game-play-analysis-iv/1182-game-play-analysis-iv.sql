SELECT  round(COUNT(*)/(select count(DISTINCT player_id) FROM activity),2)
as fraction

FROM activity
WHERE(player_id, Date_sub(event_date, INTERVAL 1 day ))
in(
    SELECT player_id, MIN(event_date) as first_login FROM Activity   GROUP BY player_id
    );