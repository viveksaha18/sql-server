Create table Employees(
empId int primary key identity,
name varchar(50),
managerId int
)
INSERT INTO Employees(name, managerId)VALUES ('Vivek', NULL);
INSERT INTO Employees(name, managerId) VALUES ('Rahul', 1);
INSERT INTO Employees(name, managerId) VALUES ('Amit', 1);

SELECT e.name AS Employee, m.name AS Manager
FROM Employees e
LEFT JOIN Employees m
ON e.managerId = m.empId;

