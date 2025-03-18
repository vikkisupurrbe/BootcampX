SELECT teachers.name AS teacher, cohorts.name AS cohort
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN teachers ON teachers.id = teacher_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'JUL02'
GROUP BY teacher, cohort
ORDER BY teacher;