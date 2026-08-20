CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    city VARCHAR(50)
);

INSERT INTO Employees
(employee_id, employee_name, department, salary, city)
VALUES
(1, 'Rahul', 'IT', 50000, 'Delhi'),
(2, 'Priya', 'HR', 40000, 'Mumbai'),
(3, 'Amit', 'IT', 60000, 'Delhi'),
(4, 'Neha', 'HR', 45000, 'Mumbai'),
(5, 'Raj', 'Sales', 55000, 'Chennai'),
(6, 'Ankit', 'IT', 70000, 'Bangalore'),
(7, 'Sneha', 'Sales', 50000, 'Chennai'),
(8, 'Rohan', 'IT', 55000, 'Delhi'),
(9, 'Pooja', 'HR', 48000, 'Delhi'),
(10, 'Vikas', 'Sales', 65000, 'Bangalore');

-- Having Clause
-- Question 1

-- Find the departments that have more than 2 employees.

-- First Approach nested query

-- Select department, emp_count
-- FROM (
--     Select department, COUNT(*) as emp_count
--     from Employees
--     Group by department
-- ) as result 
-- where emp_count > 2

Select department, COUNT(*) as emp_count
FROM Employees
GROUP BY department
HAVING COUNT(*) > 2



-- Question 2
-- Find the departments where the total salary is greater than 150,000.

-- Using Nested Queries
-- Select department, tsalary
-- from(
--     Select department, SUM(salary) as tsalary
--     from Employees
--     GROUP BY department
-- )as result
-- where tsalary > 150000

-- Using Having Clause
Select department, SUM(salary) as tsalary
from Employees
GROUP by department
Having SUM(salary) > 150000