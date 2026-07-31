create database practiceC;
use practiceC;

-- LAG()



create table employees_lag(
id int,
name varchar(50),
department varchar(30),
salary int,
age int,
city varchar(30)
);

insert into employees_lag values
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



select *,lag(salary) over(order by salary)
from employees_lag;

select *,lag(age) over(order by age)
from employees_lag;

select *,lag(city) over(order by id)
from employees_lag;

select *,lag(name) over(order by id)
from employees_lag;

select *,salary-lag(salary) over(order by salary)
from employees_lag;

select *,age-lag(age) over(order by age)
from employees_lag;

select *,lag(salary,2) over(order by salary)
from employees_lag;

select *,lag(age,2) over(order by age)
from employees_lag;

select *,lag(salary,3) over(order by salary)
from employees_lag;

select *,lag(name) over(partition by department order by salary)
from employees_lag;

select *,lag(salary) over(partition by department order by salary)
from employees_lag;

select *,lag(age) over(partition by city order by age)
from employees_lag;

select *,salary-
lag(salary) over(partition by department order by salary)
from employees_lag;

select *,salary-
lag(salary,1,0) over(order by salary)
from employees_lag;

select *,lag(city,'1') over(order by id)
from employees_lag;

select *,lag(salary) over(partition by city order by salary)
from employees_lag;

select *,lag(salary) over(partition by city order by age)
from employees_lag;

select *,
case
when salary>lag(salary) over(order by salary)
then 'higher'
else 'lower'
end
from employees_lag;

select *,
case
when age>lag(age) over(order by age)
then 'older'
else 'younger'
end
from employees_lag;

select *,
salary-lag(salary,2,0) over(partition by department order by salary)
from employees_lag;
