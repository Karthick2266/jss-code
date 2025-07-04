create database office (
	DeptID INT PRIMARY KEY,
	DeptName VARCHAR(100)
);

CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(100),
    Salary DECIMAL(10,2),
    DeptID INT,
    DOJ DATE,
    FOREIGN KEY (DeptID) REFERENCES office (DeptID)
);

SELECT 
    EmpID,
    EmpName,
    Salary,
    CASE 
        WHEN Salary >= 100000 THEN 'High Earner'
        WHEN Salary >= 50000 THEN 'Mid Earner'
        ELSE 'Low Earner'
    END AS EmpCategory
FROM Employee;

SELECT *
FROM Employee
WHERE Salary = (SELECT MAX(Salary) FROM Employee);

ALTER TABLE Employee ADD DOJ DATE;

UPDATE Employee
SET DOJ = '2023-06-01'
WHERE EmpID = 101; 

SELECT *
FROM Employee
WHERE Salary < (SELECT AVG(Salary) FROM Employee);

SELECT *
FROM Employee
ORDER BY Salary DESC;

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100),
    Age INT,
    Grade VARCHAR(10)
);

