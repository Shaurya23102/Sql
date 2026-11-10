CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(20),
    salary DECIMAL(10,2),
    joining_date DATE
);

INSERT INTO Employees (employee_id, name, department, salary, joining_date)
VALUES
(1, 'Rahul', 'IT', 75000, '2022-03-15'),
(2, 'Aman', 'HR', 45000, '2021-06-10'),
(3, 'Priya', 'IT', 90000, '2020-01-20'),
(4, 'Sneha', 'Sales', 55000, '2022-08-12'),
(5, 'Karan', 'IT', 65000, '2023-02-18'),
(6, 'Neha', 'HR', 60000, '2020-11-25'),
(7, 'Arjun', 'Sales', 70000, '2021-04-05'),
(8, 'Riya', 'IT', 85000, '2021-09-14'),
(9, 'Mohit', 'Sales', 40000, '2023-07-19'),
(10, 'Anjali', 'HR', 75000, '2022-12-01');
SELECT department,
       AVG(salary) AS av,
       COUNT(*) AS emp_count,
       MAX(salary) AS max_salary
FROM Employees
WHERE salary > 50000
GROUP BY department
HAVING AVG(salary) > 65000
   AND COUNT(*) >= 2
   AND MAX(salary) > 50000
ORDER BY av DESC;
