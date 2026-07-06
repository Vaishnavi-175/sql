CREATE DATABASE sql_practice;
USE sql_practice;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    department VARCHAR(30),
    salary DECIMAL(10,2),
    city VARCHAR(30),
    joining_date DATE
);

INSERT INTO employees VALUES
(101,'Amit',25,'Male','IT',45000,'Pune','2022-01-15'),
(102,'Priya',28,'Female','HR',52000,'Mumbai','2021-03-10'),
(103,'Rahul',30,'Male','Finance',65000,'Pune','2020-07-20'),
(104,'Sneha',27,'Female','IT',58000,'Nashik','2023-02-18'),
(105,'Karan',35,'Male','Sales',72000,'Nagpur','2019-09-05'),
(106,'Neha',26,'Female','Marketing',48000,'Pune','2022-11-12'),
(107,'Rohit',31,'Male','HR',55000,'Mumbai','2020-05-25'),
(108,'Pooja',29,'Female','Finance',69000,'Nashik','2021-12-08'),
(109,'Vikas',33,'Male','Sales',80000,'Pune','2018-06-30'),
(110,'Anjali',24,'Female','IT',42000,'Aurangabad','2023-08-14');

SELECT * FROM employees;

-- SQL BASICS PRACTICE
-- Author : Vaishnavi Gavade

-- 1.Display all employee records
SELECT *FROM employees;

-- Question 2
-- Display employee names
SELECT employee_name
FROM employees;

-- Question3
-- Display employee name and salary
SELECT employee_name, salary
FROM employees;

-- Question 4
-- Display unique departments
SELECT DISTINCT department
FROM employees;

-- Question 5
-- Display unique cities
SELECT DISTINCT city
FROM employees;
-- distinct used to represent unique values


-- Question 6
-- Display employees whose salary is greater than 50000
SELECT *
FROM employees
WHERE salary > 50000;

-- Question 7
-- Display employees whose salary is less than 60000
SELECT *FROM employees
WHERE salary < 60000;



-- Question 8
-- Display employees from IT department
SELECT *FROM employees
WHERE department = 'IT';

-- Question 9
-- Display employees from Pune
SELECT *
FROM employees
WHERE city = 'Pune';

-- Question 10
-- Display female employees
SELECT *
FROM employees
WHERE gender = 'Female';


-- Question11
-- Display employees whose age is greater than 28
SELECT *
FROM employees
WHERE age > 28;

-- Question 12
-- Display employees whose salary is between 45000 and 70000
SELECT *
FROM employees
WHERE salary BETWEEN 45000 AND 70000;


-- Question 13
-- Display employees whose age is between 25 and 30
SELECT *
FROM employees
WHERE age BETWEEN 25 AND 30;

-- Question 14
-- Display employees whose department is HR or Finance
SELECT *
FROM employees
WHERE department IN ('HR','Finance');


-- Question 15
-- Display employees not working in IT
SELECT *
FROM employees
WHERE department <> 'IT';

-- Question 16
-- Display employees ordered by salary (Highest to Lowest)
SELECT *
FROM employees
ORDER BY salary DESC;

-- Question 17
-- Display employees ordered by employee name
SELECT *
FROM employees
ORDER BY employee_name ASC;


-- Question 18
-- Display top 5 employees
SELECT *
FROM employees
LIMIT 5;


-- Question 19
-- Display top 3 highest paid employees
SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 3;

-- Question 20
-- Display employees ordered by joining date
SELECT *
FROM employees
ORDER BY joining_date;


-- 21
SELECT *
FROM employees
WHERE salary > 50000;

-- 22
SELECT employee_name, salary
FROM employees
WHERE department = 'IT';

-- 23
SELECT *
FROM employees
WHERE age BETWEEN 25 AND 30;

-- 24
SELECT *
FROM employees
WHERE city = 'Mumbai';

-- 25
SELECT employee_name
FROM employees
ORDER BY employee_name ASC;

-- 26
SELECT *
FROM employees
ORDER BY salary DESC;

-- 27
SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 5;

-- 28
SELECT *
FROM employees
WHERE employee_name LIKE 'S%';

-- 29
SELECT *
FROM employees
WHERE employee_name LIKE '%a';

-- 30
SELECT *
FROM employees
WHERE employee_name LIKE '%n%';

-- 31
SELECT *
FROM employees
WHERE department IN ('HR', 'Finance');

-- 32
SELECT *
FROM employees
WHERE city <> 'Pune';

-- 33
SELECT *FROM employees
WHERE salary NOT BETWEEN 40000 AND 60000;

-- 34
SELECT DISTINCT city
FROM employees;

-- 35
SELECT employee_name, department, salary
FROM employees;

-- 36
SELECT *
FROM employees
WHERE joining_date > '2023-01-01';

-- 37
SELECT *FROM employees
ORDER BY joining_date DESC;

-- 38
SELECT *FROM employees
WHERE salary > 45000
AND department = 'IT';

-- 39
SELECT *FROM employees
WHERE city = 'Pune'
AND age < 30;

-- 40
SELECT * FROM employees
WHERE gender = 'Female'
ORDER BY salary DESC;
