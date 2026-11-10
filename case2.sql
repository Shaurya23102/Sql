CREATE TABLE Student_Results (
    student_id INT,
    student_name VARCHAR(50),
    subject VARCHAR(20),
    marks INT,
    exam_type VARCHAR(20)
);

INSERT INTO Student_Results (student_id, student_name, subject, marks, exam_type)
VALUES
(1, 'Rahul', 'Maths', 85, 'Final'),
(1, 'Rahul', 'Science', 72, 'Final'),
(1, 'Rahul', 'English', 90, 'Final'),

(2, 'Priya', 'Maths', 95, 'Final'),
(2, 'Priya', 'Science', 88, 'Final'),
(2, 'Priya', 'English', 92, 'Final'),

(3, 'Aman', 'Maths', 45, 'Final'),
(3, 'Aman', 'Science', 65, 'Final'),
(3, 'Aman', 'English', 70, 'Final'),

(4, 'Sneha', 'Maths', 78, 'Final'),
(4, 'Sneha', 'Science', 82, 'Final'),
(4, 'Sneha', 'English', 55, 'Final'),

(5, 'Karan', 'Maths', 90, 'Midterm'),
(5, 'Karan', 'Science', 85, 'Midterm'),
(5, 'Karan', 'English', 88, 'Midterm'),

(6, 'Neha', 'Maths', 68, 'Final'),
(6, 'Neha', 'Science', 74, 'Final'),
(6, 'Neha', 'English', 80, 'Final');

#dont use 2 where clause use case with select only and group by schould be with a var not table 
SELECT
    student_id,
    student_name,
    SUM(marks) AS total,
    AVG(marks) AS avg_marks,
    CASE
        WHEN AVG(marks) >= 85 THEN 'Excellent'
        WHEN AVG(marks) >= 75 THEN 'Good'
        ELSE 'Average'
    END AS scholars

FROM Student_Results

WHERE exam_type = 'Final'

GROUP BY student_id, student_name

HAVING AVG(marks) > 70
   AND MIN(marks) >= 50

ORDER BY avg_marks DESC;
