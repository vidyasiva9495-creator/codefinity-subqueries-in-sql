SELECT e.employee_id,
       e.name
FROM employees e
WHERE NOT EXISTS (
    SELECT 1
    FROM salaries s
    WHERE s.employee_id = e.employee_id
      AND s.salary_date >= '2023-04-27'
);