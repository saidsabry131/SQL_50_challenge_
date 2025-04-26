SELECT 
    (SELECT TOP 1 n.num 
     FROM (
         SELECT num
         FROM MyNumbers 
         GROUP BY num
         HAVING COUNT(num) = 1
     ) n
     ORDER BY num DESC
    ) AS num;
