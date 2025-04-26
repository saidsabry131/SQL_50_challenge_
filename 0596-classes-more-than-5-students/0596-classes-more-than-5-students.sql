SELECT class
FROM Courses 
GROUP BY class
Having count(student)>=5;