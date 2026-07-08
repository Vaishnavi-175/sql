-- aggregate function
-- vaishnavi gavade

create database practiceB;
use practiceB;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    department VARCHAR(30),
    city VARCHAR(30),
    salary DECIMAL(10,2),
    joining_date DATE
);

INSERT INTO employees VALUES
(101,'Aarav',24,'Male','IT','Pune',45000,'2023-01-10'),
(102,'Siya',26,'Female','HR','Mumbai',52000,'2022-03-15'),
(103,'Vihaan',29,'Male','Finance','Pune',68000,'2021-06-20'),
(104,'Ananya',27,'Female','IT','Nagpur',75000,'2020-08-18'),
(105,'Aditya',31,'Male','Sales','Mumbai',55000,'2019-11-25'),
(106,'Isha',25,'Female','HR','Pune',48000,'2023-04-12'),
(107,'Krishna',30,'Male','Finance','Delhi',82000,'2018-09-30'),
(108,'Meera',28,'Female','Marketing','Mumbai',60000,'2021-02-05'),
(109,'Rohan',35,'Male','IT','Hyderabad',90000,'2017-12-14'),
(110,'Priya',23,'Female','Sales','Pune',43000,'2024-01-08'),
(111,'Rahul',32,'Male','IT','Bangalore',88000,'2019-07-22'),
(112,'Sneha',29,'Female','Finance','Mumbai',71000,'2020-05-11'),
(113,'Karan',27,'Male','HR','Delhi',51000,'2022-09-17'),
(114,'Neha',26,'Female','Marketing','Pune',58000,'2021-10-19'),
(115,'Arjun',33,'Male','Sales','Nagpur',64000,'2018-04-03');



select count(*) as total_employees
from employees;

select sum(salary) as total_salary
from employees;

select round(avg(salary)) as average_salary
from employees;

select max(salary) as highest_salary
from employees;

select min(salary) as lowest_salary
from employees;

select count(*)
from employees
where department='HR';

select count(*)
from employees
where city='Pune';

select sum(salary)
from employees
where department='Finance';

select sum(salary)
from employees
where gender='Female';

select round(avg(salary))
from employees
where department='IT';

select round(avg(age))
from employees;

select max(age)
from employees;

select min(age)
from employees;

select count(*)
from employees
where salary>50000;

select sum(salary)
from employees
where city='Mumbai';

select round(avg(salary))
from employees
where city='Pune';

select max(salary)
from employees
where department='Sales';

select min(salary)
from employees
where department='HR';

select count(*)
from employees
where gender='Male';

select sum(salary)
from employees
where age>30;

select round(avg(salary))
from employees
where gender='Male';

select max(salary)-min(salary) as salary_difference
from employees;

select count(*)
from employees
where joining_date>'2022-01-01';

select sum(salary)
from employees
where age between 25 and 30;


































































