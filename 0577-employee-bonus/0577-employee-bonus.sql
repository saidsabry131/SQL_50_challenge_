/* Write your T-SQL query statement below */
select ep.name as name , bns.bonus as bonus

from employee ep
left join bonus bns on ep.empId =bns.empId

 where bns.bonus<1000 or bns.bonus is null