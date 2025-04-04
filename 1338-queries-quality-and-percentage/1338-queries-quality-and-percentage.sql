/* Write your T-SQL query statement below */
SELECT 
    q1.query_name,
    ROUND(AVG(q1.rating * 1.0 / q1.position), 2) AS quality,
    ROUND(
        (SELECT COUNT(*) * 100.0 / 
                (SELECT COUNT(*) 
                 FROM queries q2 
                 WHERE q2.query_name = q1.query_name)
         FROM queries q3 
         WHERE q3.query_name = q1.query_name AND q3.rating < 3),
    2) AS poor_query_percentage
FROM 
    queries q1
GROUP BY 
    q1.query_name;