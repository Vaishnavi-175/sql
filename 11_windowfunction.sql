-- window function


create database practice11;
use practice11;

CREATE TABLE Employees (
    emp_id INT,
    emp_name VARCHAR(30),
    dept_id INT,
    salary INT
);

INSERT INTO Employees VALUES
(1,'Amit',10,80000),
(2,'Neha',20,45000),
(3,'Rohan',10,60000),
(4,'Priya',30,35000),
(5,'Kiran',20,75000),
(6,'Sneha',30,50000),
(7,'Ajay',10,95000);

CREATE TABLE Departments (
    dept_id INT,
    dept_name VARCHAR(30)
);

INSERT INTO Departments VALUES
(10,'IT'),
(20,'HR'),
(30,'Finance');

select version();


-- row_number()

SELECT
    emp_name,
    salary,
    ROW_NUMBER() OVER (ORDER BY salary desc) AS row_num
FROM Employees;


SELECT
    emp_name,
    salary,
    ROW_NUMBER() OVER (ORDER BY salary ASC) AS row_num
FROM Employees;



select emp_name,
dept_id,
salary,
row_number() over( partition by  dept_id
order by salary desc) as row_num
from employees;


select emp_name,
dept_id,
salary,
row_number() over(
order by salary desc
) as row_num
from employees
limit 3;


-- by cte

with Employee_Rank as
(
select emp_name,
dept_id,
salary,
row_number() over (order by salary desc) as row_num
from employees
)
select * from employee_rank
where row_num <= 3;


with employee_rank as
(
select e.emp_name,
d.dept_name,
e.salary,
d.dept_id,
row_number() over(partition by d.dept_id 
order by e.salary desc) as row_rank
from employees e
inner join departments d
on e.dept_id = d.dept_id
)
select *
from employee_rank 
where row_rank  = 2;




with emp_low as
(
select e.emp_name,
d.dept_name,
e.salary,
e.dept_id,
row_number() over(partition by e.dept_id
order by e.salary asc) as row_rank
from employees e
inner join departments d
on e.dept_id = d.dept_id
)
select * from emp_low
where row_rank = 1;


with emp_rank as
(
select e.emp_name,
d.dept_name,
e.salary,
e.dept_id,
row_number() over(partition by e.dept_id
order by salary desc) as dep_rank
from employees e
inner join departments d
on e.dept_id = d.dept_id
)
select * from emp_rank as r
where dep_rank in (1,2)
ORDER BY r.dept_name ASC,
r.salary desc;







