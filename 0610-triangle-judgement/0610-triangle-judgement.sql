/* Write your T-SQL query statement below */
select * ,iif( x+y>z and x+z>y and y+z>x,'Yes','No') as triangle
from triangle;