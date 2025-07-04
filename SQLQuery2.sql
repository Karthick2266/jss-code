create database karthick

CREATE TABLE departmentu (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100)
);

CREATE TABLE employeec (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    salary DECIMAL(10, 2),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departmentu(dept_id)
);

SELECT 
    emp_id,
    emp_name,
    salary,
    dept_name,
    CASE 
        WHEN salary < 3000 THEN 'Low'
        WHEN salary BETWEEN 3000 AND 7000 THEN 'Medium'
        WHEN salary > 7000 THEN 'High'
        ELSE 'Unknown'
    END AS emp_category
FROM 
    employeec
JOIN 
    departmentu d ON d.dept_id = d.dept_id;
SELECT *
FROM employeec
WHERE salary = (SELECT MAX(salary) FROM employee);

ALTER TABLE employeec
ADD DOJ DATE;

UPDATE employeec
SET DOJ = '2023-06-15'  
WHERE emp_id = 101;    

SELECT *
FROM employeec
WHERE salary < (SELECT AVG(salary) FROM employeec);

SELECT * 
FROM employee 
ORDER BY salary DESC;