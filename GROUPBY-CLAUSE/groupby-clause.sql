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

-- GROUP BY Clause

-- Question1:  Find the number of employees in each department
Select department, COUNT(*) as employee_count
from Employees
Group by department

-- Question2 : Find the number of employees in for a specific department for example department="IT"
-- Solution 
Select department, COUNT(*) as employee_count
from Employees
where department = 'IT'
GROUP BY department



-- Question 3 — COUNT + GROUP BY

-- Find the number of employees in each city.

Select city, COUNT(*) as number_of_employees
from Employees
GROUP BY city

-- Question 4 — AVG() + GROUP BY

-- Using the Employees table:

-- Find the average salary of employees in each department.
Select department, AVG(salary) as average_salary
from Employees
GROUP BY department


-- Find the total salary paid to employees in each department.
SELECT department, SUM(salary) as total_salary
FROM Employees
GROUP BY department


-- Question 6

-- Find the highest salary in each department.
SELECT department, MAX(salary) as highest_salary
FROM Employees
GROUP BY department


-- Question 7

-- Find the lowest salary in each department.

SELECT department, MIN(salary)
FROM Employees
GROUP BY department


-- Question 8

-- Find the total number of employees in each department 
-- whose salary is greater than 50,000.
Select department, COUNT(*) as number_of_employees
FROM Employees
where salary > 50000
GROUP BY department

-- Question 9

-- Find the average salary of employees in each city.
SELECT city, AVG(salary) as average_salary
FROM Employees
GROUP BY city

-- Question 10

-- Find the number of employees in each department whose salary is less than 60,000.
Select department, COUNT(*) as employees
from Employees
where salary < 60000
GROUP BY department