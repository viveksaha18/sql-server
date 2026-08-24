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


-- Question 3
-- Find the cities where the average salary is greater than 50,000.
SELECT city, AVG(salary) as avgS
from Employees
GROUP BY city
Having AVG(salary) > 50000




-- Question 4
-- Find the cities where the total salary is greater than 100,000.

-- Select city, SUM(salary) as tSalary
-- from Employees
-- Group By city
-- Having SUM(salary) > 100000

Select city, tSalary
from(
    Select city, SUM(salary) as tSalary
    from Employees 
    Group by city
) as result 
where tSalary > 100000






-- Question 5

-- Find the departments where the average salary is greater than 50,000.

-- Select department, AVG(salary) as aSalary
-- from Employees
-- Group by department
-- Having AVG(salary) > 50000

-- Nested Query
Select department, aSalary
from(
    Select department, AVG(salary) as aSalary
    from Employees
    GROUP by department
) as temp
where aSalary > 50000




-- Question 6
-- Find the departments where the minimum salary is greater than 40,000.
-- Select department, MIN(salary) as minSalary
-- from Employees
-- Group by department
-- Having MIN(salary) > 40000

Select department, minSalary
from(
    Select department, MIN(salary) as minSalary
    from Employees
    group by department
)as temp
where minSalary > 40000