SELECT cohorts.name AS cohort, COUNT(assignment_submissions.id) AS total_submissions
FROM students
LEFT JOIN assignment_submissions 
ON assignment_submissions.student_id = students.id
JOIN cohorts
ON cohorts.id = students.cohort_id
GROUP BY cohort
ORDER BY total_submissions DESC;