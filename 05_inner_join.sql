create database sql_practice2;
use  sql_practice2;

create table departments (
dept_id int primary key,
department_name varchar(50)
);

insert into departments values
(1,'it'),
(2,'hr'),
(3,'finance'),
(4,'marketing'),
(5,'sales');

create table employees (
emp_id int primary key,
employee_name varchar(50),
dept_id int,
salary int,
city varchar(30),
age int
);


insert into employees values
(101,'amit',1,60000,'pune',25),
(102,'priya',2,45000,'mumbai',28),
(103,'rohit',1,70000,'pune',30),
(104,'neha',3,55000,'nagpur',27),
(105,'karan',4,50000,'nashik',26),
(106,'pooja',5,65000,'mumbai',29),
(107,'rahul',2,48000,'pune',24),
(108,'sneha',1,75000,'kolhapur',31),
(109,'vikas',3,58000,'satara',32),
(110,'anjali',5,62000,'mumbai',27);

select *
from employees
inner join departments
on employees.dept_id = departments.dept_id;


select employee_name, department_name
from employees
inner join departments
on employees.dept_id = departments.dept_id;



select employee_name, salary, department_name
from employees
inner join departments
on employees.dept_id = departments.dept_id;


select employee_name, city, department_name
from employees
inner join departments
on employees.dept_id = departments.dept_id;


select *from employees
inner join departments
on employees.dept_id = departments.dept_id
where department_name='it';

select *
from employees
inner join departments
on employees.dept_id = departments.dept_id
where salary>60000;

select employee_name, department_name
from employees
inner join departments
on employees.dept_id = departments.dept_id
where city='mumbai';

select employee_name, department_name
from employees
inner join departments
on employees.dept_id = departments.dept_id
where age>28;

select employee_name, salary, department_name
from employees
inner join departments
on employees.dept_id = departments.dept_id
order by salary desc;

select department_name,count(*)
from employees
inner join departments
on employees.dept_id=departments.dept_id
group by department_name;

select department_name,avg(salary) as avg_salary
from employees
inner join departments
on employees.dept_id=departments.dept_id
group by department_name;

select department_name,sum(salary)
from employees
inner join departments
on employees.dept_id=departments.dept_id
group by department_name;

select city,count(*)
from employees
inner join departments
on employees.dept_id=departments.dept_id
group by city;

select department_name,max(salary)
from employees
inner join departments
on employees.dept_id=departments.dept_id
group by department_name;

select department_name,min(salary)
from employees
inner join departments
on employees.dept_id=departments.dept_id
group by department_name;

select department_name,count(*)
from employees
inner join departments
on employees.dept_id=departments.dept_id
group by department_name
having count(*)>1;

select department_name,avg(salary)
from employees
inner join departments
on employees.dept_id=departments.dept_id
group by department_name
having avg(salary)>60000;

select city,sum(salary)
from employees
inner join departments
on employees.dept_id=departments.dept_id
group by city;

select department_name,count(*)
from employees
inner join departments
on employees.dept_id=departments.dept_id
where city='pune'
group by department_name;


select employee_name,department_name,salary
from employees
inner join departments
on employees.dept_id=departments.dept_id
where salary>(
select avg(salary)

from employees);

select employee_name,department_name
from employees
inner join departments
on employees.dept_id=departments.dept_id
where salary=(
select max(salary)
from employees);


select department_name,avg(salary)
from employees
inner join departments
on employees.dept_id=departments.dept_id
group by department_name
having avg(salary)=(
select max(avg_salary)
from(
select avg(salary) avg_salary
from employees
group by dept_id
)t);

select employee_name,department_name
from employees
inner join departments
on employees.dept_id=departments.dept_id
where salary between 50000 and 70000
order by salary desc;


select department_name,count(*)
from employees
inner join departments
on employees.dept_id=departments.dept_id
group by department_name
order by count(*) desc;

select employee_name,department_name
from employees
inner join departments
on employees.dept_id=departments.dept_id
where age>(
select avg(age)
from employees);


select city,avg(salary)
from employees
inner join departments
on employees.dept_id=departments.dept_id
group by city
having avg(salary)>55000;


select employee_name,department_name,salary
from employees
inner join departments
on employees.dept_id=departments.dept_id
order by department_name,salary desc;

select department_name,sum(salary)
from employees
inner join departments
on employees.dept_id=departments.dept_id
group by department_name
order by sum(salary) desc;

select employee_name,department_name
from employees
inner join departments
on employees.dept_id=departments.dept_id
where city='mumbai'
and salary>(
select avg(salary)
from employees);




















































































































































