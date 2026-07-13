create database practice1;
use practice1;

create table departments (
department_id int primary key,
department_name varchar(30),
manager_name varchar(50)
);

insert into departments values
(1,'it','ajay'),
(2,'hr','meera'),
(3,'finance','sanjay'),
(4,'sales','rakesh'),
(5,'marketing','pooja'),
(6,'admin','deepak'),
(7,'testing','nikita');

create table employees_join (
employee_id int primary key,
employee_name varchar(50),
department_id int,
salary int,
city varchar(30),
age int
);

insert into employees_join values
(101,'amit',1,45000,'pune',25),
(102,'priya',2,52000,'mumbai',28),
(103,'rahul',3,65000,'pune',30),
(104,'sneha',1,58000,'nashik',27),
(105,'karan',4,72000,'nagpur',35),
(106,'neha',5,48000,'pune',26),
(107,'rohit',2,55000,'mumbai',31),
(108,'pooja',3,69000,'nashik',29),
(109,'vikas',4,80000,'pune',33),
(110,'anjali',1,42000,'aurangabad',24),
(111,'akash',null,50000,'satara',27),
(112,'komal',6,46000,'kolhapur',26);

select *
from employees_join
left join departments
on employees_join.department_id = departments.department_id;

select employee_name, department_name
from employees_join
left join departments
on employees_join.department_id = departments.department_id;

select employee_name, salary, department_name
from employees_join
left join departments
on employees_join.department_id = departments.department_id;

select employee_name, city, department_name
from employees_join
left join departments
on employees_join.department_id = departments.department_id;

select employee_name, age, department_name
from employees_join
left join departments
on employees_join.department_id = departments.department_id;

select *
from employees_join
left join departments
on employees_join.department_id = departments.department_id
where department_name = 'it';

select *
from employees_join
left join departments
on employees_join.department_id = departments.department_id
where salary > 60000;

select employee_name, department_name
from employees_join
left join departments
on employees_join.department_id = departments.department_id
where city = 'mumbai';

select employee_name, department_name
from employees_join
left join departments
on employees_join.department_id = departments.department_id
where age > 28;

select employee_name, salary, department_name
from employees_join
left join departments
on employees_join.department_id = departments.department_id
order by salary desc;

select department_name, count(*)
from employees_join
left join departments
on employees_join.department_id = departments.department_id
group by department_name;

select department_name, avg(salary)
from employees_join
left join departments
on employees_join.department_id = departments.department_id
group by department_name;

select department_name, sum(salary)
from employees_join
left join departments
on employees_join.department_id = departments.department_id
group by department_name;

select city, count(*)
from employees_join
left join departments
on employees_join.department_id = departments.department_id
group by city;

select department_name, max(salary)
from employees_join
left join departments
on employees_join.department_id = departments.department_id
group by department_name;

select department_name, min(salary)
from employees_join
left join departments
on employees_join.department_id = departments.department_id
group by department_name;

select department_name, count(*)
from employees_join
left join departments
on employees_join.department_id = departments.department_id
group by department_name
having count(*) > 1;

select department_name, avg(salary)
from employees_join
left join departments
on employees_join.department_id = departments.department_id
group by department_name
having avg(salary) > 60000;

select city, sum(salary)
from employees_join
left join departments
on employees_join.department_id = departments.department_id
group by city;

select department_name, count(*)
from employees_join
left join departments
on employees_join.department_id = departments.department_id
where city = 'pune'
group by department_name;

select employee_name, department_name, salary
from employees_join
left join departments
on employees_join.department_id = departments.department_id
where salary >
(select avg(salary) from employees_join);

select employee_name, department_name
from employees_join
left join departments
on employees_join.department_id = departments.department_id
where salary =
(select max(salary) from employees_join);

select employee_name, department_name
from employees_join
left join departments
on employees_join.department_id = departments.department_id
where age >
(select avg(age) from employees_join);

select city, avg(salary)
from employees_join
left join departments
on employees_join.department_id = departments.department_id
group by city
having avg(salary) > 55000;

select employee_name, department_name, salary
from employees_join
left join departments
on employees_join.department_id = departments.department_id
order by department_name, salary desc;

select department_name, sum(salary)
from employees_join
left join departments
on employees_join.department_id = departments.department_id
group by department_name
order by sum(salary) desc;

select employee_name, department_name
from employees_join
left join departments
on employees_join.department_id = departments.department_id
where city = 'mumbai'
and salary >
(select avg(salary) from employees_join);

select employee_name, department_name
from employees_join
left join departments
on employees_join.department_id = departments.department_id
where department_name is null;

select count(*)
from employees_join
left join departments
on employees_join.department_id = departments.department_id
where department_name is null;

select employee_name, city, salary, department_name
from employees_join
left join departments
on employees_join.department_id = departments.department_id
order by employee_name;