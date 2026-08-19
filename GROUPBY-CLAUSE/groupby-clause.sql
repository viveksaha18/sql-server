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