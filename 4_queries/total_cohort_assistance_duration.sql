SELECT c.name,
SUM(completed_at-started_at) AS total_duration
FROM assistance_requests
JOIN students s ON student_id = s.id
JOIN cohorts c ON cohort_id = c.id
GROUP BY c.name
ORDER BY total_duration;
