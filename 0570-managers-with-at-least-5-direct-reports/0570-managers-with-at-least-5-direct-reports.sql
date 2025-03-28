select Y.name
from employee X 
 join
employee Y 
on Y.id = X.managerId 
group by Y.name ,Y.id
having count(Y.id)>=5