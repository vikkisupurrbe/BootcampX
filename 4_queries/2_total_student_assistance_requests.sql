SELECT COUNT(assistance_requests.id) AS total_assistances, students.name AS name
FROM assistance_requests
JOIN students ON students.id = student_id
WHERE students.name = 'Elliot Dickinson'
GROUP BY students.name;