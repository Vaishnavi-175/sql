use practicec;

create table employees_case (
employee_id int primary key,
employee_name varchar(50),
age int,
gender varchar(10),
department varchar(30),
salary int,
city varchar(30)
);

insert into employees_case values
(101,'amit',25,'male','it',45000,'pune'),
(102,'priya',28,'female','hr',52000,'mumbai'),
(103,'rahul',30,'male','finance',65000,'pune'),
(104,'sneha',27,'female','it',58000,'nashik'),
(105,'karan',35,'male','sales',72000,'nagpur'),
(106,'neha',26,'female','marketing',48000,'pune'),
(107,'rohit',31,'male','hr',55000,'mumbai'),
(108,'pooja',29,'female','finance',69000,'nashik'),
(109,'vikas',33,'male','sales',80000,'pune'),
(110,'anjali',24,'female','it',42000,'aurangabad');


select employee_name,
case
when salary<50000 then 'low'
else 'high'
end as salary_status
from employees_case;

select employee_name,
case
when salary<50000 then 'low'
when salary between 50000 and 70000 then 'medium'
else 'high'
end
from employees_case;

select employee_name,
case
when age<25 then 'young'
else 'adult'
end
from employees_case;

select employee_name,
case
when age<30 then 'junior'
else 'senior'
end
from employees_case;

select employee_name,
case
when department='it' then 'technical'
else 'non technical'
end
from employees_case;

select employee_name,
case
when city='pune' then 'local'
else 'other'
end
from employees_case;

select employee_name,
case
when gender='female' then 'f'
else 'm'
end
from employees_case;

select employee_name,
case
when salary>70000 then 'eligible'
else 'not eligible'
end
from employees_case;

select employee_name,
case
when salary>=60000 then salary*0.10
else salary*0.05
end as bonus
from employees_case;

select employee_name,
case
when age>=30 then 'experienced'
else 'fresher'
end
from employees_case;

select employee_name,
case
when department='sales' then 'sales team'
else 'other team'
end
from employees_case;

select employee_name,
case
when city='mumbai' then 'metro'
else 'non metro'
end
from employees_case;

select employee_name,
case
when salary between 40000 and 50000 then 'a'
when salary between 50001 and 70000 then 'b'
else 'c'
end
from employees_case;

select employee_name,
case
when age>30 then 'yes'
else 'no'
end
from employees_case;

select employee_name,
case
when department='finance' then 'accounts'
else 'others'
end
from employees_case;

select employee_name,
case
when salary>75000 then 'top earner'
else 'regular'
end
from employees_case;

select employee_name,
case
when city='nashik' then 'west'
else 'other'
end
from employees_case;

select employee_name,
case
when salary<45000 then 'grade c'
when salary<65000 then 'grade b'
else 'grade a'
end
from employees_case;

select employee_name,
case
when age between 20 and 25 then 'group1'
else 'group2'
end
from employees_case;

select employee_name,
case
when gender='male' then 'mr'
else 'ms'
end
from employees_case;

select employee_name,
case
when salary>50000 and department='it' then 'selected'
else 'rejected'
end
from employees_case;

select employee_name,
case
when city='pune' and salary>50000 then 'yes'
else 'no'
end
from employees_case;

select employee_name,
case
when age>28 and gender='female' then 'eligible'
else 'not eligible'
end
from employees_case;

select employee_name,
case
when department='hr' then 'human resources'
else department
end
from employees_case;

select employee_name,
case
when salary=(
select max(salary) from employees_case)
then 'highest'
else 'others'
end
from employees_case;

select employee_name,
case
when salary=(
select min(salary) from employees_case)
then 'lowest'
else 'others'
end
from employees_case;

select employee_name,
case
when age=(
select max(age) from employees_case)
then 'oldest'
else 'others'
end
from employees_case;

select employee_name,
case
when age=(
select min(age) from employees_case)
then 'youngest'
else 'others'
end
from employees_case;

select employee_name,
case
when salary>avg_salary then 'above average'
else 'below average'
end
from
(
select employee_name,salary,
(select avg(salary) from employees_case) as avg_salary
from employees_case
)t;

select employee_name,
case
when department='marketing' then 'marketing team'
else 'other'
end
from employees_case;

select employee_name,
case
when city='aurangabad' then 'tier2'
else 'other'
end
from employees_case;

select employee_name,
case
when salary>=80000 then 'excellent'
when salary>=60000 then 'good'
else 'average'
end
from employees_case;

select employee_name,
case
when age>=35 then 'senior citizen'
else 'working'
end
from employees_case;

select employee_name,
case
when department in('it','finance') then 'core'
else 'support'
end
from employees_case;

select employee_name,
case
when city in('pune','mumbai') then 'major city'
else 'minor city'
end
from employees_case;

select employee_name,
case
when salary%2=0 then 'even'
else 'odd'
end
from employees_case;

select employee_name,
case
when age%2=0 then 'even'
else 'odd'
end
from employees_case;

select employee_name,
case
when salary>50000 then salary+5000
else salary+2000
end
from employees_case;

select employee_name,
case
when department='it' then salary*1.20
else salary*1.10
end
from employees_case;

select employee_name,
case
when gender='female' then salary+1000
else salary
end
from employees_case;

select employee_name,
case
when city='nagpur' then 'orange city'
else city
end
from employees_case;

select employee_name,
case
when department='sales' and salary>70000 then 'star'
else 'normal'
end
from employees_case;

select employee_name,
case
when salary between 40000 and 60000 then 'mid'
else 'other'
end
from employees_case;

select employee_name,
case
when age<28 then 'batch a'
else 'batch b'
end
from employees_case;

select employee_name,
case
when department='it' then 'developer'
when department='hr' then 'recruiter'
else 'employee'
end
from employees_case;

select employee_name,
case
when salary>60000 then 'pass'
else 'fail'
end
from employees_case;

select employee_name,
case
when city='pune' then 'p1'
when city='mumbai' then 'm1'
else 'x'
end
from employees_case;

select employee_name,
case
when age between 25 and 30 then 'valid'
else 'invalid'
end
from employees_case;

select employee_name,
case
when salary>70000 then 'gold'
when salary>50000 then 'silver'
else 'bronze'
end
from employees_case;

select employee_name,
case
when department='finance' and city='pune' then 'special'
else 'regular'
end
from employees_case;

select employee_name,
case
when salary>50000 then 'promoted'
else 'training'
end
from employees_case;