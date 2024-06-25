SELECT e.first_name, d.department_name, j.max_salary FROM employees e
JOIN employees m ON e.employee_id = m.manager_id
JOIN departments d ON e.department_id = d.department_id
JOIN jobs j ON e.job_id = j.job_id
ORDER BY j.max_salary



SELECT e.first_name, e.last_name, d.department_name,c.country_name FROM employees e 
JOIN departments d  ON d.department_id = e.department_id
JOIN locations l ON l.location_id = d.location_id
JOIN countries c ON c.country_id = l.country_id
WHERE country_name LIKE 'United States of America'

SELECT e.employee_id, e.first_name, e.last_name, e.email, e.phone_number, d.department_id FROM employees e
JOIN departments d  ON d.department_id = e.department_id
WHERE phone_number IS NULL

UPDATE employees
SET phone_number = 111.222.3344
WHERE phone_number IS NULL

