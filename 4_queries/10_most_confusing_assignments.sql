SELECT assignments.id AS id, name, day, chapter, COUNT (assignment_id) AS total_requests
FROM assistance_requests
JOIN assignments ON assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY total_requests DESC;