
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary INT,
    city VARCHAR(50),
    age INT,
    joining_date DATE
);





INSERT INTO Employees
(employee_id, name, department, salary, city, age, joining_date)
VALUES
(1, 'Rahul', 'IT', 80000, 'Bhubaneswar', 24, '2023-06-10'),
(2, 'Amit', 'HR', 60000, 'Delhi', 27, '2022-04-15'),
(3, 'Priya', 'IT', 90000, 'Bangalore', 26, '2021-08-20'),
(4, 'Ravi', 'Finance', 75000, 'Mumbai', 30, '2020-01-12'),
(5, 'Sneha', 'IT', 70000, 'Pune', 25, '2023-02-18'),
(6, 'Arjun', 'HR', 65000, 'Delhi', 28, '2022-11-05'),
(7, 'Neha', 'Finance', 85000, 'Kolkata', 29, '2019-09-25'),
(8, 'Vikash', 'IT', 80000, 'Bhubaneswar', 23, '2024-01-10'),
(9, 'Ananya', 'Marketing', 55000, 'Chennai', 25, '2023-07-01'),
(10, 'Karan', 'IT', 95000, 'Hyderabad', 31, '2018-05-14');






-- Problem 1

-- You have:

-- Employees(
--     employee_id,
--     name,
--     department,
--     salary,
--     city
-- )

-- There are 10 million employees.

-- This query runs thousands of times:

-- SELECT *
-- FROM Employees
-- WHERE salary = 80000;

-- Question: What index would you create?


Select * from Employees

Create Index idx_employee_salary ON Employees(salary)

Select * 
from Employees 
where salary >= 80000







-- Problem 2
-- SELECT *
-- FROM Employees
-- WHERE department = 'IT'
-- AND salary > 70000;

-- Create the most appropriate index for this query.


Create Index idx_department_salary
ON Employees(department, salary)

Select * 
from Employees
where department = 'IT'
And salary >= 80000