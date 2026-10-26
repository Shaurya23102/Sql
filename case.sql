-- Create the table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

-- Insert the records
INSERT INTO employees (employee_id, name, department, salary) VALUES
(1, 'Rahul', 'IT', 75000),
(2, 'Priya', 'HR', 45000),
(3, 'Amit', 'IT', 55000),
(4, 'Neha', 'HR', 65000),
(5, 'Karan', 'IT', 40000),
(6, 'Simran', 'Sales', 85000),
(7, 'Rohan', 'Sales', 50000),
(8, 'Anjali', 'HR', 80000),
(9, 'Varun', 'Sales', 35000),
(10, 'Meera', 'IT', 90000);

SELECT
    CASE
        WHEN salary >= 70000 THEN 'High Salary'
        WHEN salary >= 50000 THEN 'Medium Salary'
        ELSE 'Low Salary'
    END AS salary_category,
    COUNT(*) AS employee_count
FROM Employees
GROUP BY salary_category
ORDER BY employee_count DESC;
