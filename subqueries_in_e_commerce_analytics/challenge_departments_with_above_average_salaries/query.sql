SELECT d.name as department_name
from employees e
JOIN departments d ON d.department_id = e.department_id
GROUP BY d.department_id, d.name
HAVING AVG(e.salary) > (
    SELECT AVG(salary)
    FROM employees e);