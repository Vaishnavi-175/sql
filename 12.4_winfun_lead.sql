create database practicee;
use practicee;
create table employees_window(
id int,
name varchar(50),
department varchar(30),
salary int,
age int,
city varchar(30)
);

insert into employees_window values
(1,'amit','it',45000,25,'pune'),
(2,'priya','hr',52000,28,'mumbai'),
(3,'rahul','finance',65000,30,'pune'),
(4,'sneha','it',58000,27,'nashik'),
(5,'karan','sales',72000,35,'nagpur'),
(6,'neha','marketing',48000,26,'pune'),
(7,'rohit','hr',55000,31,'mumbai'),
(8,'pooja','finance',69000,29,'nashik'),
(9,'vikas','sales',80000,33,'pune'),
(10,'anjali','it',42000,24,'aurangabad');

select *,
case
when salary<lead(salary) over(order by salary)
then 'increase'
when salary>lead(salary) over(order by salary)
then 'decrease'
else 'same'
end
from employees_window;

select *,
lead(salary) over(order by salary)
from employees_window;

select *,
salary,
lead(salary) over(order by id),
lead(salary) over(order by id)-salary
from employees_window;

select name,
salary,
lead(salary) over(order by salary),
case
when salary<lead(salary) over(order by salary)
then 'less'
else 'greater'
end
from employees_window;

select *,
lead(name) over(partition by department order by salary)
from employees_window;

select id,
name,
lead(name) over(order by id)
from employees_window;

select *,
lead(name) over(partition by city order by salary)
from employees_window;

select *,
case
when salary<lead(salary) over(order by salary)
then concat('need ',lead(salary) over(order by salary)-salary)
else 'highest'
end
from employees_window;

select *,
lead(salary,2) over(order by salary)
from employees_window;

select *,
lead(salary,3) over(order by salary)
from employees_window;

select *,
salary,
lead(salary) over(partition by department order by salary)-salary
from employees_window;

select *,
lead(age) over(order by age)
from employees_window;

select *,
lead(city) over(order by id)
from employees_window;

select *,
case
when lead(salary) over(order by salary)-salary>10000
then 'promotion'
else 'normal'
end
from employees_window;

select *,
case
when lead(salary) over(order by id)>salary
then 'up'
else 'down'
end
from employees_window;

select *,
lead(department) over(order by id)
from employees_window;

select *,
lead(age) over(order by id)
from employees_window;

select *,
lead(name) over(order by id),
lead(salary) over(order by id),
lead(city) over(order by id)
from employees_window;

select *,
case
when lead(salary) over(order by salary desc) is null
then 'highest salary'
else 'not highest'
end
from employees_window;

select *,
lead(name) over(order by id),
lead(age) over(order by id),
lead(salary) over(order by id),
lead(city) over(order by id)
from employees_window;
