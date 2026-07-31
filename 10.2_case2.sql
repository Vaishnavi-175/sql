use practicec;

create table employees_case_advanced (
employee_id int primary key,
employee_name varchar(50),
department varchar(30),
salary int,
age int,
city varchar(30)
);

insert into employees_case_advanced values
(101,'amit','it',45000,25,'pune'),
(102,'priya','hr',52000,28,'mumbai'),
(103,'rahul','finance',65000,30,'pune'),
(104,'sneha','it',58000,27,'nashik'),
(105,'karan','sales',72000,35,'nagpur'),
(106,'neha','marketing',48000,26,'pune'),
(107,'rohit','hr',55000,31,'mumbai'),
(108,'pooja','finance',69000,29,'nashik'),
(109,'vikas','sales',80000,33,'pune'),
(110,'anjali','it',42000,24,'aurangabad');


select employee_name,
case
when salary>60000 then 'high'
else 'low'
end
from employees_case_advanced
order by salary desc;

select department,
sum(
case
when salary>50000 then salary
else 0
end
)
from employees_case_advanced
group by department;

select department,
count(
case
when salary>50000 then 1
end
)
from employees_case_advanced
group by department;

select city,
avg(
case
when salary>50000 then salary
end
)
from employees_case_advanced
group by city;

select department,
max(
case
when city='pune' then salary
end
)
from employees_case_advanced
group by department;

select department,
min(
case
when age>28 then salary
end
)
from employees_case_advanced
group by department;

select employee_name,
case
when salary=(select max(salary) from employees_case_advanced)
then 'highest'
else 'others'
end
from employees_case_advanced;

select employee_name,
case
when salary=(select min(salary) from employees_case_advanced)
then 'lowest'
else 'others'
end
from employees_case_advanced;

select employee_name,
case
when age=(select max(age) from employees_case_advanced)
then 'oldest'
else 'others'
end
from employees_case_advanced;

select employee_name,
case
when age=(select min(age) from employees_case_advanced)
then 'youngest'
else 'others'
end
from employees_case_advanced;

select employee_name,
salary,
case
when salary>70000 then salary*0.15
when salary>50000 then salary*0.10
else salary*0.05
end as bonus
from employees_case_advanced;

select employee_name,
case
when department='it' then 'developer'
when department='hr' then 'recruiter'
when department='finance' then 'analyst'
else 'employee'
end
from employees_case_advanced;

select city,
sum(
case
when department='it' then salary
else 0
end
)
from employees_case_advanced
group by city;

select city,
count(
case
when department='sales' then 1
end
)
from employees_case_advanced
group by city;

select department,
avg(
case
when age>30 then salary
end
)
from employees_case_advanced
group by department;

select employee_name,
case
when salary between 40000 and 50000 then 'grade c'
when salary between 50001 and 70000 then 'grade b'
else 'grade a'
end
from employees_case_advanced
order by salary;

select employee_name,
case
when city in('pune','mumbai') then 'metro'
else 'non metro'
end
from employees_case_advanced;

select department,
sum(
case
when city='pune' then 1
else 0
end
)
from employees_case_advanced
group by department;

select employee_name,
case
when salary>(
select avg(salary)
from employees_case_advanced
)
then 'above average'
else 'below average'
end
from employees_case_advanced;

select employee_name,
case
when salary>60000 and age>30 then 'eligible'
else 'not eligible'
end
from employees_case_advanced;

select department,
count(
case
when gender='male' then 1
end
)
from employees_case_advanced
group by department;
