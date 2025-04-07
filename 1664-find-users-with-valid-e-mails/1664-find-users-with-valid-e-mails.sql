/* Write your T-SQL query statement below */
select * from
users where mail like '[A-z]%@leetcode.com'
and mail not like '%[^A-z0-9_.-]%@leetcode.com'