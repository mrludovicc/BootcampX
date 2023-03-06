SELECT cohorts.name AS cohort,
COUNT(assignment_submissions.*) AS total_submissions
FROM cohorts
JOIN students ON cohort_id = cohorts.id
JOIN assignment_submissions ON student_id = students.id
GROUP BY cohorts.name
ORDER BY COUNT(assignment_submissions.*) DESC;


-- another way --

-- SELECT c.name AS cohort,
-- COUNT(a.*) AS total_submissions
-- FROM cohorts c
-- JOIN students s ON cohort_id = c.id
-- JOIN assignment_submissions a ON student_id = s.id
-- GROUP BY 1
-- ORDER BY 2 DESC;


