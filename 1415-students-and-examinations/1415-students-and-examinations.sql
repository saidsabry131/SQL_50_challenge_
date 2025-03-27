/* Write your T-SQL query statement below */
select st.student_id as student_id,st.student_name  as student_name 
,sub.subject_name as subject_name ,count(ex.student_id) as attended_exams 
from students st

cross join subjects sub 
 left join Examinations ex on ex. student_id =st.student_id
 and ex.subject_name =sub.subject_name 

GROUP by st.student_id,st.student_name,sub.subject_name
order by st.student_id;


