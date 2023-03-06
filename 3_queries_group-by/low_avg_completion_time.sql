-- SELECT students.name as student,
-- AVG(assignment_submissions.duration) AS average_assignment_duration,
-- AVG(assignments.duration) AS average_estimated_duration
-- FROM students
-- JOIN assignment_submissions ON student_id = students.id
-- JOIN assignments ON assignments.id = assignment_id
-- WHERE end_date IS NULL
-- GROUP BY student
-- HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
-- ORDER BY average_assignment_duration DESC;


-- ANOTHER WAY --
SELECT s.name as student,
AVG(a_s.duration) AS average_assignment_duration,
AVG(a.duration) AS average_estimated_duration
FROM students s
JOIN assignment_submissions a_s ON student_id = s.id
JOIN assignments a ON a.id = assignment_id
WHERE end_date IS NULL
GROUP BY student
HAVING AVG(a_s.duration) < AVG(a.duration)
ORDER BY 2 DESC;