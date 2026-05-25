CREATE TABLE DeptTable(
deptId INT PRIMARY KEY IDENTITY,
name varchar(20)
)

INSERT INTO DeptTable(name) values('HR'), ('Sales'), ('Marketing'), ('IT')

SELECT deptId, name
FROM DeptTable

CREATE TABLE Employee(
empId INT PRIMARY KEY IDENTITY,
deptId INT,
name varchar(20), 
email varchar(20)

FOREIGN KEY(deptId)
REFERENCES DeptTable(deptId)
)

INSERT INTO Employee (deptId, name, email) values(1, 'Vivek', 'vivek@.com'),
(1, 'Rahul', 'rahul@.com'),
(2, 'Rohit', 'rohit@.com'),
(3, 'Mohit', 'mohit@.com'),
(3, 'sumit', 'sumit@.com')


INSERT INTO Employee (deptId, name, email) values(NULL, 'Ankit', 'ankit@com')

SELECT * 
FROM Employee

SELECT d.deptID, 
e.name, d.name
FROM DeptTable d
JOIN Employee e
ON d.deptId = e.deptId
