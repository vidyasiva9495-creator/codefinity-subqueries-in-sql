SELECT 
    e.name as employee_name,
    d.name as department_name,
    e.salary
FROM employees e
JOIN departments d ON d.department_id = e.department_id
WHERE e.salary = (
    SELECT MAX(e2.salary)
    FROM employees e2
    WHERE e2.department_id = e.department_id
)
ORDER BY d.name, e.name;