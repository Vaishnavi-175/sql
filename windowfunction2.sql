use practicec;

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


select *,row_number() over(order by salary desc) from employees_window;

select *,rank() over(order by salary desc) from employees_window;

select *,dense_rank() over(order by salary desc) from employees_window;

select *,row_number() over(partition by department order by salary desc) from employees_window;

select *,rank() over(partition by department order by salary desc) from employees_window;

select *,dense_rank() over(partition by department order by salary desc) from employees_window;

select *,lead(salary) over(order by salary) from employees_window;

select *,lag(salary) over(order by salary) from employees_window;

select *,lead(age) over(order by age) from employees_window;

select *,lag(age) over(order by age) from employees_window;

select *,first_value(salary) over(partition by department order by salary desc) from employees_window;

select *,last_value(salary) over(partition by department order by salary) from employees_window;

select *,nth_value(salary,2) over(order by salary) from employees_window;

select *,ntile(2) over(order by salary) from employees_window;

select *,ntile(4) over(order by salary) from employees_window;

select *,sum(salary) over(order by id) from employees_window;

select *,avg(salary) over(order by id) from employees_window;

select *,sum(salary) over(partition by department) from employees_window;

select *,avg(salary) over(partition by department) from employees_window;

select *,max(salary) over(partition by city) from employees_window;

select *,min(salary) over(partition by city) from employees_window;

select *,count(*) over(partition by department) from employees_window;

select *,count(*) over(partition by city) from employees_window;

select *,salary-lag(salary) over(order by salary) from employees_window;

select *,lead(salary) over(order by salary)-salary from employees_window;

select *,sum(salary) over(partition by department order by salary) from employees_window;

select *,avg(salary) over(partition by city order by salary) from employees_window;

select *,rank() over(partition by city order by salary desc) from employees_window;

select *,dense_rank() over(partition by city order by age desc) from employees_window;

select *,row_number() over(partition by city order by age) from employees_window;

select * from
(
select *,rank() over(partition by department order by salary desc) r
from employees_window
)x
where r=1;

select * from
(
select *,dense_rank() over(partition by department order by salary desc) r
from employees_window
)x
where r<=3;

select * from
(
select *,row_number() over(order by age desc) r
from employees_window
)x
where r=2;

select *,sum(salary) over(order by salary rows between unbounded preceding and current row)
from employees_window;

select *,avg(salary) over(order by salary rows between 2 preceding and current row)
from employees_window;

select *,max(age) over(partition by department)
from employees_window;

select *,min(age) over(partition by department)
from employees_window;

select *,salary/sum(salary) over()*100
from employees_window;

select *,salary-max(salary) over(partition by department)
from employees_window;

select *,salary-min(salary) over(partition by department)
from employees_window;

select *,dense_rank() over(order by age desc)
from employees_window;

select *,rank() over(order by age)
from employees_window;

select *,row_number() over(order by name)
from employees_window;

select *,lead(city) over(order by id)
from employees_window;

select *,lag(city) over(order by id)
from employees_window;

select *,first_value(name) over(partition by department order by salary desc)
from employees_window;

select *,last_value(name) over(partition by department order by salary
rows between unbounded preceding and unbounded following)
from employees_window;

select *,sum(age) over(partition by city)
from employees_window;

select *,avg(age) over(partition by city)
from employees_window;

select *,ntile(5) over(order by age)
from employees_window;

select *,rank() over(partition by department order by age desc),
dense_rank() over(partition by city order by salary desc)
from employees_window;