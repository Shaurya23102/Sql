SELECT 
    e.name AS employee,
    m.name AS manager
FROM Employees e
LEFT JOIN Employees m
    ON e.manager_id = m.emp_id;
