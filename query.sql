----------------------------------------------------------------------
-- Write a SQL query, in which you will retrieve the information     -
-- about the students who scored a 4 and above on their algebra exam -
----------------------------------------------------------------------

SELECT * 
FROM students s
JOIN exam_results e on s.student_id = e.student_id
JOIN class_catalogue c on e.class_id = c.class_id
WHERE grade >= 4
