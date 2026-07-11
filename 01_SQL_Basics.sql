create database sql_practice;

use sql_practice;

create table employees (
employee_id int primary key,
employee_name varchar(50),
age int,
gender varchar(10),
department varchar(30),
salary decimal(10,2),
city varchar(30),
joining_date date
);

insert into employees values
(101,'amit',25,'male','it',45000,'pune','2022-01-15'),
(102,'priya',28,'female','hr',52000,'mumbai','2021-03-10'),
(103,'rahul',30,'male','finance',65000,'pune','2020-07-20'),
(104,'sneha',27,'female','it',58000,'nashik','2023-02-18'),
(105,'karan',35,'male','sales',72000,'nagpur','2019-09-05'),
(106,'neha',26,'female','marketing',48000,'pune','2022-11-12'),
(107,'rohit',31,'male','hr',55000,'mumbai','2020-05-25'),
(108,'pooja',29,'female','finance',69000,'nashik','2021-12-08'),
(109,'vikas',33,'male','sales',80000,'pune','2018-06-30'),
(110,'anjali',24,'female','it',42000,'aurangabad','2023-08-14');

select * from employees;

select * from employees;

select employee_name
from employees;

select employee_name, salary
from employees;

select distinct department
from employees;

select distinct city
from employees;

select *
from employees
where salary > 50000;

select *
from employees
where salary < 60000;

select *
from employees
where department = 'it';

select *
from employees
where city = 'pune';

select *
from employees
where gender = 'female';

select *
from employees
where age > 28;

select *
from employees
where salary between 45000 and 70000;

select *
from employees
where age between 25 and 30;

select *
from employees
where department in ('hr','finance');

select *
from employees
where department <> 'it';

select *
from employees
order by salary desc;

select *
from employees
order by employee_name asc;

select *
from employees
limit 5;

select *
from employees
order by salary desc
limit 3;

select *
from employees
order by joining_date;

select *
from employees
where salary > 50000;

select employee_name, salary
from employees
where department = 'it';

select *
from employees
where age between 25 and 30;

select *
from employees
where city = 'mumbai';

select employee_name
from employees
order by employee_name asc;

select *
from employees
order by salary desc;

select *
from employees
order by salary desc
limit 5;

select *
from employees
where employee_name like 's%';

select *
from employees
where employee_name like '%a';

select *
from employees
where employee_name like '%n%';

select *
from employees
where department in ('hr','finance');

select *
from employees
where city <> 'pune';

select *
from employees
where salary not between 40000 and 60000;

select distinct city
from employees;

select employee_name, department, salary
from employees;

select *
from employees
where joining_date > '2023-01-01';

select *
from employees
order by joining_date desc;

select *
from employees
where salary > 45000
and department = 'it';

select *
from employees
where city = 'pune'
and age < 30;

select *
from employees
where gender = 'female'
order by salary desc;
