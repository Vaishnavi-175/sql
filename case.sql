use practiced;

CREATE TABLE employees4
(
    emp_id INT,
    emp_name VARCHAR(50),
    salary INT
);

INSERT INTO employees4
VALUES
(1,'Rahul',95000),
(2,'Neha',75000),
(3,'Amit',65000),
(4,'Priya',50000),
(5,'Kiran',45000),
(6,'Sneha',85000),
(7,'Rohan',98000);

select salary,
case 
when salary >= 90000 then 'Excellent'
when salary >= 80000 then 'Very Good'
when salary >= 70000 then 'Good'
else 'Poor'
end as  salary_status
from employees4;


select * ,
case
when emp_name = 'Rahul' then 'founder'
when emp_name = 'Neha' then 'manager'
else 'Employee'
end as employee_type
from employees4;

select *,
case
when salary  >= 90000 then 'Excellent'
when salary  >= 80000 then 'Very Good'
when salary  >= 70000 then 'Good'
when salary  >= 50000 then 'Average'
else 'Poor'
end as salary_status
from employees4;

select *,
case
when salary >= 90000 and emp_name like 'R%' then 'Rockstar'
when salary >= 80000 then 'Senior'
when salary >= 60000 then 'Mid-Level'
else 'Fresher'
end as employee_status
from employees4;


select *,
case
when salary % 2 = 0 then 'Even'
else 'Odd'
end as salary_type
from employees4;


select * ,
case
when salary between 90000 and 100000 then 'brand A'
when salary between 70000 and 89999 then 'Brand B'
when salary between 50000 and 69000 then 'Brand c'
else 'Brand D'
end as salary_brand
from employees4;

select 
sum(case when salary >= 90000 then 1 else 0 end ) as high,
sum(case when salary between 70000 and 89999 then 1 else 0 end ) as medium,
sum(case when salary < 70000 then 1 else 0 end ) as low
from employees4;

select *, 
case when salary =(select max(salary) from employees4) then 'Top Earner'
when salary =(select min(salary) from employees4) then'Lowest Earner'
else 'Regular Employees'
end as earning
from employees4;

alter table employees4
add dept_name varchar(20);


UPDATE employees4
SET dept_name='IT'
WHERE emp_id=1;

UPDATE employees4
SET dept_name='HR'
WHERE emp_id=2;

UPDATE employees4
SET dept_name='IT'
WHERE emp_id=3;

UPDATE employees4
SET dept_name='Sales'
WHERE emp_id=4;

UPDATE employees4
SET dept_name='HR'
WHERE emp_id=5;

UPDATE employees4
SET dept_name='IT'
WHERE emp_id=6;

UPDATE employees4
SET dept_name='Sales'
WHERE emp_id=7;

SET SQL_SAFE_UPDATES = 0;
DESC employees4;

set sql_safe_updates = 1;

select *,
case
when salary =
(
select max(salary) from employees4 e2
where e1.dept_name = e2.dept_name
)
then 'Department Topper'
else 'Normal Employee'
end as department_status
from employees4 e1;


CREATE TABLE employees_case_practice
(
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_name VARCHAR(20),
    salary INT
);

INSERT INTO employees_case_practice VALUES
(1,'Rahul','IT',95000),
(2,'Neha','HR',75000),
(3,'Amit','IT',65000),
(4,'Priya','Sales',50000),
(5,'Kiran','HR',45000),
(6,'Sneha','IT',85000),
(7,'Rohan','Sales',98000),
(8,'Ankit','Finance',72000),
(9,'Pooja','Finance',88000),
(10,'Vikas','HR',55000);


select *,
case
when salary >= 95000 then 'A+'
when salary >= 85000 then 'A'
when salary >= 75000 then 'B'
else 'C'
end as salary_grade
from employees_case_practice;

select * ,
case
when salary =
(select max(salary) from employees_case_practice) then 'Top Earner'
when salary =
(select min(salary) from employees_case_practice) then 'Lowest earner'
when salary >
(select avg(salary) from employees_case_practice) then 'Above Average'
else 'Below Average'
end as employee_status
from employees_case_practice;

select *,
case
when salary = (select max(salary) from employees_case_practice e2 
			   WHERE e1.dept_name = e2.dept_name)
               then 'Department King'
when salary > (select avg(salary) from employees_case_practice e2
               WHERE e1.dept_name = e2.dept_name )
               then 'Department Rich'
else 'Department Common'
end as employee_status 
from employees_case_practice e1;



select *,
case 
when salary = (select max(salary) from employees_case_practice) then 'Gold bage'
when salary = (select max(salary) from employees_case_practice e2
			   where e1.dept_name = e2.dept_name) then 'silver badge'
when salary > (select avg(salary) from employees_case_practice e2
               where e1.dept_name = e2.dept_name) then 'Bronze badge'
else 'No badge'
end as employee_badge
from employees_case_practice e1;               
               
               
select *,
case
when salary = (select min(salary) from employees_case_practice) then 'Intern'
when salary = (select min(salary) from employees_case_practice e2
			   where e1.dept_name = e2.dept_name ) then 'Junior'
when salary < ( select avg(salary)  from employees_case_practice e2
               where  e1.dept_name = e2.dept_name ) then 'Associate'
else 'Senior'
end as employee_title
from employees_case_practice e1;             
               
select *,
case
when salary = (select max(salary) from employees_case_practice) then 'CEO'
when salary = (select max(salary) from employees_case_practice  e2
    WHERE e1.dept_name = e2.dept_name )
               
and salary >(select avg(salary) from employees_case_practice )
               then 'Director'
when salary > (select avg(salary) from employees_case_practice e2 
                where e1.dept_name = e2.dept_name) then 'Manager'
when salary < (select avg(salary) from employees_case_practice e2 
                where e1.dept_name = e2.dept_name) then 'staff'                
else 'Trainee'
end as employee_power
from employees_case_practice e1;             
			

select *,
case
when salary = (select max(salary) from employees_case_practice ) then 'Supreme Leader'
when salary = (select min(salary) from employees_case_practice) then 'Intern'
when salary = (select max(salary) from employees_case_practice e2 
               where e1.dept_name = e2.dept_name) then 'Department Head'
when salary = (select min(salary) from employees_case_practice e2
  where e1.dept_name = e2.dept_name ) then 'Trainee'
when salary > (select avg(salary) from employees_case_practice) then 'Elite'
when salary > (select avg(salary) from employees_case_practice e2
			  where e1.dept_name = e2.dept_name) then 'senior'
else 'Junior'
end as employee_rank
from employees_case_practice e1;              


select *,
case
when salary = (select max(salary) from employees_case_practice ) then 'Legend'
when salary = (select min(salary) from employees_case_practice ) then 'Beginner'
when salary = ( select max(salary) from employees_case_practice e2 
				where e1.dept_name = e2.dept_name) and  
	 salary > (select avg(salary) from employees_case_practice) then 'head'
when salary = (select min(salary) from employees_case_practice e2
               where e1.dept_name = e2.dept_name) and
      salary < (select avg(salary) from employees_case_practice ) then 'Assistent'
when salary between (select avg(salary) from employees_case_practice )
                     and  (select max(salary) from employees_case_practice) then 'Executive'
                     
when salary between (select avg(salary) from employees_case_practice e2
                     where e1.dept_name = e2.dept_name) and
                     (select avg(salary) from employees_case_practice) then 'Associate'
else 'Worker'
end as employee_identity
from employees_case_practice e1;                     
                     

select count(*) as total_employees,
sum(case when salary > (select avg(salary) from employees_case_practice) then 1 else 0
end ) as above_avg,
sum(case when salary < ( select avg(salary) from employees_case_practice ) then 1 else 0
end ) as below_avg,
sum(case when dept_name = 'IT' then 1 else 0 end ) as Total_IT,
sum(case when dept_name = 'HR' then 1 else 0 end ) as Total_HR,
sum(case when salary > 80000 then 1 else 0 end ) as heighe_salary
from employees_case_practice;
 
 select *,
 case
 when salary > ( select avg(salary) from employees_case_practice) and
	  salary > (select avg(salary) from employees_case_practice e2 
                where e1.dept_name = e2.dept_name) then 'Promoted'
when salary > (select avg(salary) from employees_case_practice e2
                where e1.dept_name = e2.dept_name) then 'Under Review'
when salary = (select avg(salary) from employees_case_practice e2
               where e1.dept_name = e2.dept_name) then 'Stable'
else 'Need Improvement'
end as promotion_status
from employees_case_practice e1;  

select *,
case
when salary = (select max(salary) from employees_case_practice ) then '50% bonus'
when salary = (select max(salary) from employees_case_practice e2
               where e1.dept_name = e2.dept_name) then '30 % bonus'
when salary > (select avg(salary) from employees_case_practice e2
			  where e1.dept_name = e2.dept_name) then '20% bonus'
when salary >(select avg(salary) from employees_case_practice) then '10% bonus'
else '10% bonus'
end as bonus_status
from employees_case_practice e2;             
























































































































































































































































































