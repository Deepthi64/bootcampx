SELECT cohorts.name AS cohort, COUNT(*) AS total_submissions
FROM cohorts
JOIN students ON students.cohort_id = cohorts.id
JOIN submissions ON submissions.student_id = students.id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;