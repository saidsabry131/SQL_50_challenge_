/* Write your T-SQL query statement below */
SELECT 
    r.contest_id,
    ROUND(((1.0 * COUNT(DISTINCT r.user_id)) / (SELECT COUNT(user_id) FROM Users) * 100), 2) AS percentage
FROM Register r
GROUP BY r.contest_id
ORDER BY percentage DESC, r.contest_id;