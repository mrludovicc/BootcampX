-- SELECT students.name AS student, 
-- AVG(assignment_submissions.duration) AS average_assignment_duration
-- FROM students
-- JOIN assignment_submissions ON student_id = students.id
-- WHERE students.end_date IS NULL
-- GROUP BY students.name
-- ORDER BY AVG(assignment_submissions.duration) DESC;

-- ANOTHER WAY --
SELECT s.name AS student, 
AVG(a.duration) AS average_assignment_duration
FROM students s
JOIN assignment_submissions a ON student_id = s.id
WHERE s.end_date IS NULL
GROUP BY 1
ORDER BY 2 DESC;