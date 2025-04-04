SELECT 
    q1.query_name,
    ROUND(
        (SELECT SUM(q2.rating * 1.0 / q2.position) / COUNT(*)
         FROM queries q2
         WHERE q2.query_name = q1.query_name),
    2) AS quality,
    ROUND(
        (SELECT COUNT(*) * 100.0 / 
                (SELECT COUNT(*) 
                 FROM queries q3 
                 WHERE q3.query_name = q1.query_name)
         FROM queries q4 
         WHERE q4.query_name = q1.query_name AND q4.rating < 3),
    2) AS poor_query_percentage
FROM 
    (SELECT DISTINCT query_name FROM queries) q1;