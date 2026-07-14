use practicec;

create table employees_self (
employee_id int primary key,
employee_name varchar(50),
manager_id int,
department varchar(30),
salary int,
city varchar(30)
);

insert into employees_self values
(101,'amit',104,'it',45000,'pune'),
(102,'priya',105,'hr',52000,'mumbai'),
(103,'rahul',104,'finance',65000,'pune'),
(104,'sneha',108,'it',80000,'nashik'),
(105,'karan',108,'sales',75000,'nagpur'),
(106,'neha',105,'marketing',48000,'pune'),
(107,'rohit',104,'it',55000,'mumbai'),
(108,'pooja',null,'management',100000,'nashik'),
(109,'vikas',105,'sales',70000,'pune'),
(110,'anjali',104,'it',42000,'aurangabad');


select e.employee_name,m.employee_name as manager
from employees_self e
join employees_self m
on e.manager_id=m.employee_id;

select e.employee_name,e.department,m.employee_name as manager
from employees_self e
join employees_self m
on e.manager_id=m.employee_id;

select e.employee_name,e.salary,m.employee_name as manager,m.salary
from employees_self e
join employees_self m
on e.manager_id=m.employee_id;

select e.employee_name,e.city,m.employee_name as manager,m.city
from employees_self e
join employees_self m
on e.manager_id=m.employee_id;

select e.employee_name,m.employee_name as manager
from employees_self e
left join employees_self m
on e.manager_id=m.employee_id;

select e.employee_name,m.employee_name as manager
from employees_self e
left join employees_self m
on e.manager_id=m.employee_id
where m.employee_name is null;

select e.employee_name,m.employee_name as manager
from employees_self e
join employees_self m
on e.manager_id=m.employee_id
where e.salary>m.salary;

select e.employee_name,m.employee_name as manager
from employees_self e
join employees_self m
on e.manager_id=m.employee_id
where e.salary<m.salary;

select e.employee_name,m.employee_name as manager
from employees_self e
join employees_self m
on e.manager_id=m.employee_id
where e.city='pune';

select e.employee_name,m.employee_name as manager
from employees_self e
join employees_self m
on e.manager_id=m.employee_id
where e.department='it';

select e.employee_name,m.employee_name as manager
from employees_self e
join employees_self m
on e.manager_id=m.employee_id
order by e.salary desc;

select e.department,count(*)
from employees_self e
join employees_self m
on e.manager_id=m.employee_id
group by e.department;

select e.department,avg(e.salary)
from employees_self e
join employees_self m
on e.manager_id=m.employee_id
group by e.department;

select e.department,max(e.salary)
from employees_self e
join employees_self m
on e.manager_id=m.employee_id
group by e.department;

select e.department,min(e.salary)
from employees_self e
join employees_self m
on e.manager_id=m.employee_id
group by e.department;

select e.department,sum(e.salary)
from employees_self e
join employees_self m
on e.manager_id=m.employee_id
group by e.department;

select e.department,count(*)
from employees_self e
join employees_self m
on e.manager_id=m.employee_id
group by e.department
having count(*)>1;

select e.employee_name,m.employee_name as manager
from employees_self e
join employees_self m
on e.manager_id=m.employee_id
where e.salary>(
select avg(salary)
from employees_self);

select e.employee_name,m.employee_name as manager
from employees_self e
join employees_self m
on e.manager_id=m.employee_id
where e.salary=(
select max(salary)
from employees_self);

select e.employee_name,m.employee_name as manager
from employees_self e
join employees_self m
on e.manager_id=m.employee_id
where e.city='mumbai';

select e.employee_name,m.employee_name as manager
from employees_self e
join employees_self m
on e.manager_id=m.employee_id
where e.department='sales';

select e.employee_name,m.employee_name as manager
from employees_self e
join employees_self m
on e.manager_id=m.employee_id
where e.salary between 50000 and 70000;

select e.employee_name,m.employee_name as manager
from employees_self e
join employees_self m
on e.manager_id=m.employee_id
order by e.employee_name;

select e.employee_name,m.employee_name as manager
from employees_self e
join employees_self m
on e.manager_id=m.employee_id
order by m.employee_name;

select e.employee_name,m.employee_name as manager
from employees_self e
join employees_self m
on e.manager_id=m.employee_id
where m.department='management';

