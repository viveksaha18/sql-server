/* Write your T-SQL query statement below */
SELECT e.name As Employee
from Employee e
JOIN Employee  m
ON e.managerId = m.id
where e.salary > m.salary