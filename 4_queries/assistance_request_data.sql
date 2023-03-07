-- SELECT teachers.name AS teacher,
-- students.name AS student,
-- assignments.name AS assignment,
-- assistance_requests.completed_at - assistance_requests.started_at AS duration
-- FROM assistance_requests 
-- JOIN teachers ON teacher_id = teachers.id
-- JOIN students ON student_id = students.id
-- JOIN assignments ON assignment_id = assignments.id
-- ORDER BY duration;


-- ANOTHER WAY --
SELECT t.name AS teacher,
s.name AS student,
a.name AS assignment,
(a_r.completed_at-a_r.started_at) AS duration
FROM assistance_requests a_r 
JOIN teachers t ON teacher_id = t.id
JOIN students s ON student_id = s.id
JOIN assignments a ON assignment_id = a.id
ORDER BY duration;