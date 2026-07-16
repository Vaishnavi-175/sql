use practiced;

create table employees_case_advanced (
employee_id int primary key,
employee_name varchar(50),department varchar(30),
salary int, age int,
city varchar(30)
);

insert into employees_case_advanced values
(101,'amit','it',45000,25,'pune'),(102,'priya','hr',52000,28,'mumbai'),(103,'rahul','finance',65000,30,'pune'),
(104,'sneha','it',58000,27,'nashik'),(105,'karan','sales',72000,35,'nagpur'),
(106,'neha','marketing',48000,26,'pune'),(107,'rohit','hr',55000,31,'mumbai'),(108,'pooja','finance',69000,29,'nashik'),
(109,'vikas','sales',80000,33,'pune'),(110,'anjali','it',42000,24,'aurangabad');
select *
from employees_case_advanced
where salary>(
select avg(salary)
from employees_case_advanced
);

select *
from employees_case_advanced
where salary<(
select avg(salary)
from employees_case_advanced
);

select *
from employees_case_advanced
where salary=(
select max(salary)
from employees_case_advanced
);

select *
from employees_case_advanced
where salary=(
select min(salary)
from employees_case_advanced
);

select *
from employees_case_advanced
where age=(
select max(age)
from employees_case_advanced
);

select *
from employees_case_advanced
where age=(
select min(age)
from employees_case_advanced
);

select *
from employees_case_advanced
where salary>(
select min(salary)
from employees_case_advanced
);

select *
from employees_case_advanced
where salary<(
select max(salary)
from employees_case_advanced
);

select *
from employees_case_advanced
where age>(
select avg(age)
from employees_case_advanced
);

select *
from employees_case_advanced
where age<(
select avg(age)
from employees_case_advanced
);

select *
from employees_case_advanced
where salary=(
select salary
from employees_case_advanced
where employee_name='karan'
);

select *
from employees_case_advanced
where age=(
select age
from employees_case_advanced
where employee_name='priya'
);

select *
from employees_case_advanced
where department=(
select department
from employees_case_advanced
where employee_name='rahul'
);

select *
from employees_case_advanced
where city=(
select city
from employees_case_advanced
where employee_name='amit'
);

select *
from employees_case_advanced
where salary>(
select salary
from employees_case_advanced
where employee_name='neha'
);


select *
from employees_case_advanced
where salary in
(
select salary
from employees_case_advanced
where department='it'
);

select *
from employees_case_advanced
where city in
(
select city
from employees_case_advanced
where department='sales'
);

select *
from employees_case_advanced
where department in
(
select department
from employees_case_advanced
where city='pune'
);

select *
from employees_case_advanced
where salary>all
(
select salary
from employees_case_advanced
where department='hr'
);

select *
from employees_case_advanced
where salary>any
(
select salary
from employees_case_advanced
where department='hr'
);

select *
from employees_case_advanced
where salary<all
(
select salary
from employees_case_advanced
where department='sales'
);

select *
from employees_case_advanced
where salary<any
(
select salary
from employees_case_advanced
where department='sales'
);

select *
from employees_case_advanced
where department not in
(
select department
from employees_case_advanced
where city='mumbai'
);

select *
from employees_case_advanced
where exists
(
select *
from employees_case_advanced
where salary>70000
);

select *
from employees_case_advanced
where not exists
(
select *
from employees_case_advanced
where salary>100000
);

select *
from employees_case_advanced
where city in
(
select city
from employees_case_advanced
where salary>60000
);

select *
from employees_case_advanced
where age in
(
select age
from employees_case_advanced
where department='finance'
);

select *
from employees_case_advanced
where salary in
(
select max(salary)
from employees_case_advanced
group by department
);

select *
from employees_case_advanced
where salary in
(
select min(salary)
from employees_case_advanced
group by department
);

select *
from employees_case_advanced
where department in
(
select department
from employees_case_advanced
group by department
having count(*)>2
);


