create table employees_ntile(
id int,
name varchar(50),
department varchar(30),
salary int,
age int
);

insert into employees_ntile values
(1,'amit','it',45000,25),
(2,'priya','hr',52000,28),
(3,'rahul','finance',65000,30),
(4,'sneha','it',58000,27),
(5,'karan','sales',72000,35),
(6,'neha','marketing',48000,26),
(7,'rohit','hr',55000,31),
(8,'pooja','finance',69000,29),
(9,'vikas','sales',80000,33),
(10,'anjali','it',42000,24);


select *,ntile(2) over(order by salary)
from employees_ntile;

select *,ntile(3) over(order by salary)
from employees_ntile;

select *,ntile(4) over(order by salary)
from employees_ntile;

select *,ntile(5) over(order by salary)
from employees_ntile;

select *,ntile(2) over(order by age)
from employees_ntile;

select *,ntile(3) over(order by age)
from employees_ntile;

select *,ntile(4) over(order by age)
from employees_ntile;

select *,ntile(5) over(order by age)
from employees_ntile;

select *,ntile(2) over(partition by department order by salary)
from employees_ntile;

select *,ntile(3) over(partition by department order by salary)
from employees_ntile;

select *,ntile(2) over(partition by department order by age)
from employees_ntile;

select *,ntile(4) over(order by id)
from employees_ntile;

select *,ntile(10) over(order by salary)
from employees_ntile;

select *,ntile(2) over(order by salary desc)
from employees_ntile;

select *,ntile(3) over(order by salary desc)
from employees_ntile;

select *,
case
when ntile(4) over(order by salary)=1 then 'top'
when ntile(4) over(order by salary)=4 then 'bottom'
else 'middle'
end
from employees_ntile;

select *,
case
when ntile(2) over(order by age)=1
then 'young'
else 'old'
end
from employees_ntile;

select *,salary,
ntile(5) over(order by salary)
from employees_ntile;

select *,age,
ntile(5) over(order by age)
from employees_ntile;

select *,
dense_rank() over(order by salary desc),
ntile(4) over(order by salary)
from employees_ntile;
