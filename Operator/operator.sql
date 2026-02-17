Create database sqlOperators

Create table employeee(
id int primary key identity,
name varchar(30),
salary int,
department varchar(50)
)

Exec employee_SP 'Vivek', 30000, 'CSE'
Exec employee_SP 'Amit Samal', 20000, 'CSE'
Exec employee_SP 'Jaya Prakash Biswal', 40000, 'EEE'
Exec employee_SP 'Omm Prakash Panda', 5666, 'ME'

Select * from employeee


---Arthematic Operator 
-- +, -, *, /, %

Select salary+5 As UpdatedSalary From employeee
-- It will not change the original data because selects only read 
-- Adds 5 to salary and updatedSalary is the temporary column name
Select salary+500 As UpdatedSalary From employeee where salary = 30000


-- Comparison Operator
--  ==, != or <>, >, <, >=, <=
-- Used inside where to compare values

Select * from employeee where salary >= 30000


-- Logical Operators
-- Combine multiple conditions
-- AND, OR, NOT
-- AND -----> Both the conditions must be true
-- OR ------> At least one True
-- NOT -----> Reverse Conditon

Select * from employeee
where salary > 3000 and department = 'CSE'


-- Between Operator
-- Used for range(inclusive)
Select * from employeee
where salary between 20000 and 40000

-- IN Operator 
-- Used to match multiple values
Select * from employeee
where department IN('CSE', 'ME')

-- LIKE Operator
-- Used for pattern matching

-- '%' ----> any number of characters
--'_' -----> exactly one character

select * from employeee 
where name like 'a%'


