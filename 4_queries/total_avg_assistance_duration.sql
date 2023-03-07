WITH avg_total_dur as (SELECT c.name,
SUM(completed_at-started_at) AS total_duration
FROM assistance_requests
JOIN students s ON student_id = s.id
JOIN cohorts c ON cohort_id = c.id
GROUP BY c.name
ORDER BY total_duration)
SELECT AVG(total_duration)
FROM avg_total_dur;

-- ANOTHER WAY

-- SELECT avg (total_duration) as average_total_duration
-- FROM (
--   SELECT cohorts.name as cohort, sum(completed_at-started_at) as total_duration
--   FROM assistance_requests
--   JOIN students ON students.id = student_id
--   JOIN cohorts on cohorts.id = cohort_id
--   GROUP BY cohorts.name
--   ORDER BY total_duration
-- ) as total_durations;