/* Write your T-SQL query statement below */
select id-1 as id ,student from seat where id%2=0

union 
select id+1 as id ,student from seat where id%2=1 and id !=(select MAX(id) from seat)

union
select id ,student from seat where id=(select MAX(id) from seat) and id%2=1