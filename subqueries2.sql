use practiced;
create table employees_advanced (
employee_id int primary key,employee_name varchar(50),department varchar(30),salary int,
age int,
city varchar(30)
);

insert into employees_advanced values
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



select *
from employees_advanced
where salary >
(
select avg(salary)
from employees_advanced
);



select *from employees_advanced
where salary =
(
select max(salary)
from employees_advanced
where salary <
(
select max(salary)
from employees_advanced
)
);

select *from employees_advanced
where department =
(
select department
from employees_advanced
group by department
order by count(*) desc
limit 1
);

select *from employees_advanced e
where salary =
(
select max(salary)
from employees_advanced
where department=e.department
);


select *from employees_advanced
where department in
(
select department
from employees_advanced
group by department
having count(*)>2
);


select *
from employees_advanced
where salary >
(
select avg(salary)
from employees_advanced
);

select *from employees_advanced
where salary =
(
select max(salary)
from employees_advanced
where salary <
(
select max(salary)
from employees_advanced
)
);

select *
from employees_advanced
where salary =
(
select max(salary)
from employees_advanced
where salary <
(
select max(salary)
from employees_advanced
where salary <
(
select max(salary)
from employees_advanced
)
)
);

select *from employees_advanced
where department =
(
select department
from employees_advanced
group by department
order by count(*) desc
limit 1
);

select *
from employees_advanced e
where salary =
(
select max(salary)
from employees_advanced
where department=e.department
);

select *
from employees_advanced e
where salary =
(
select min(salary)
from employees_advanced
where department=e.department
);

select department from employees_advanced
group by department
having avg(salary) >
(
select avg(salary)
from employees_advanced
);

select *
from employees_advanced e
where age >
(
select avg(age)
from employees_advanced
where department=e.department
);

select city from employees_advanced
group by city
having count(*) >
(
select avg(cnt)
from
(
select count(*) as cnt
from employees_advanced
group by city
) x
);

select *
from employees_advanced
where salary > all
(
select salary
from employees_advanced
where department='hr'
);

select *
from employees_advanced
where salary <>
(
select max(salary)
from employees_advanced
);

select *
from employees_advanced e
where salary =
(
select avg(salary)
from employees_advanced
where department=e.department
);

select department
from employees_advanced
group by department
order by avg(salary) desc
limit 1;

select * from employees_advanced
where salary =
(
select min(salary)
from employees_advanced
where salary >
(
select min(salary)
from employees_advanced
)
);

select city
from employees_advanced
group by city
order by count(*) desc
limit 1;

select *
from employees_advanced
where department in
(
select department
from employees_advanced
group by department
having count(*)>2
);

select *
from employees_advanced
where salary >
(
select min(salary)
from employees_advanced
where department='sales'
);

select *from employees_advanced
where department in
(
select department
from employees_advanced
group by department
having sum(salary)>100000
);

select *
from employees_advanced e
where age <
(
select avg(age)
from employees_advanced
where department=e.department
);

select * from employees_advanced
where department =
(
select department
from employees_advanced
group by department
order by avg(salary)
limit 1
);