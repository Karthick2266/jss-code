create database afjj;

CREATE TABLE departmentx (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL
);

CREATE TABLE employeet (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    salary DECIMAL(10, 2),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departmentx(dept_id)
);

INSERT INTO departmentx (dept_id, dept_name) VALUES
(1, 'Engineering'),
(2, 'HR'),
(3, 'Marketing');

INSERT INTO employeet (emp_id, emp_name, salary, dept_id) VALUES
(101, 'zoro', 75000, 1),
(102, 'robin', 62000, 1),
(103, 'brook', 50000, 2),
(104, 'ussop', 48000, 3);

SELECT 
    emp_id, 
    emp_name, 
    salary, 
    dept_name
FROM 
    employeet
JOIN 
    departmentx d ON d.dept_id = d.dept_id;
