select e.name As Employee
From employees e
JOIN employee  m
ON e.manager_id = m.id
WHERE e.salary > m.salary;
