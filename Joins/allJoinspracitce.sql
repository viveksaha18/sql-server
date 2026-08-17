CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    DepartmentID INT
);

INSERT INTO Employees (EmployeeID, EmployeeName, DepartmentID)
VALUES
(1, 'Rahul', 101),
(2, 'Priya', 102),
(3, 'Amit', 103),
(4, 'Sneha', 101),
(5, 'Vivek', 104);

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES
(101, 'IT'),
(102, 'HR'),
(103, 'Finance'),
(105, 'Marketing');

-- Inner Join 
-- Select e.EmployeeName, d.DepartmentName
-- from Employees e 
-- INNER JOIN Departments d
-- ON e.DepartmentID = d.DepartmentID

--- Outer Join 
-- Left Outer Join 

-- Select e.EmployeeName, d.DepartmentName
-- from Employees e 
-- LEFT JOIN Departments d 
-- ON e.DepartmentID = d.DepartmentID

-- Right Outer Join 
-- Select e.EmployeeName, d.DepartmentName
-- FROM Employees e 
-- RIGHT JOIN Departments d 
-- ON e.DepartmentID = d.DepartmentID

-- Full Join 
-- Select e.EmployeeName, d.DepartmentName
-- FROM Employees e 
-- FULL JOIN Departments d 
-- ON e.DepartmentID = d.DepartmentID

-- Self Join 
-- Same table relationship

-- Cross Join 
-- ALL combination of rows 