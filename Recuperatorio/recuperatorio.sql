SELECT 
 j.job_title AS job_title,
COUNT(e.employee_id) AS employee_count,
SUM(e.salary) AS total_salary
FROM 
employees e
JOIN 
jobs j ON e.job_id = j.job_id
GROUP BY 
 j.job_title
ORDER BY 
employee_count DESC;



SELECT 
e.first_name AS first_name,
e.last_name AS last_name,
j.job_title AS job_title,
d.department_name AS department_name,
l.city AS city
FROM 
employees e
JOIN 
jobs j ON e.job_id = j.job_id
JOIN 
departments d ON e.department_id = d.department_id
JOIN 
locations l ON d.location_id = l.location_id;

UPDATE employees
SET salary = salary * 1.55
WHERE salary < 7500
AND department_id IN (
SELECT department_id
FROM departments
WHERE department_name IN ('IT', 'Finance')

Eliminar empleados:

DELETE FROM employees
WHERE department_id IN (
    SELECT department_id
    FROM departments
    WHERE location_id IN (
        SELECT location_id
        FROM locations
        WHERE country_id = (
            SELECT country_id
            FROM countries
            WHERE country_name = 'Canada'
        )
    )
);

Eliminar departamentos:

DELETE FROM departments
WHERE location_id IN (
    SELECT location_id
    FROM locations
    WHERE country_id = (
        SELECT country_id
        FROM countries
        WHERE country_name = 'Canada'
    )
);


Eliminar Locaciones:

DELETE FROM locations
WHERE country_id = (
    SELECT country_id
    FROM countries
    WHERE country_name = 'Canada'
);


Eliminar pais:

DELETE FROM countries
WHERE country_name = 'Canada';





UPDATE employees
SET phone_number = '333.444.555'
WHERE job_id = (
    SELECT job_id
    FROM jobs
    WHERE job_title LIKE '%Sales Manager%'
)
AND phone_number IS NULL;




SELECT location_id
FROM locations
WHERE street_address = '2004 Charade Rd' AND city = 'Seattle';

SELECT location_id
FROM locations
WHERE street_address = '2004 Charade Rd' AND city = 'Seattle';

INSERT INTO jobs (job_title, min_salary, max_salary)
VALUES ('Consultant', 3000, 12000);

INSERT INTO departments (department_name, location_id)
VALUES ('Consultants', 1700);

SELECT department_id FROM departments WHERE department_name = 'Consultants';

INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id)
VALUES 
('Raul', 'Lopez', 'rlopez@gmail.com', '333.445.556', '2024-07-01', 20, 5000, 105, 12),
('Andres', 'Gonzalez', 'agonzalez@gmail.com', '333.445.556', '2024-07-01', 20, 6000, 106, 12),
('Laura', 'Fernandez', 'lfernandez@gmail.com', '333.445.556', '2024-07-01', 20, 7500, 107, 12);