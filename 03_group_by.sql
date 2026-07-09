USE sql_practice;

select department,count(*) as total_employees
from employees
group by department;

select department,sum(salary) as total_salary
from employees
group by department;

select department,round(avg(salary)) as average_salary
from employees
group by department;

select department,max(salary) as highest_salary
from employees
group by department;

select department,min(salary) as lowest_salary
from employees
group by department;

select city,count(*) as total_employees
from employees
group by city;

select city,sum(salary) as total_salary
from employees
group by city;

select city,round(avg(salary)) as average_salary
from employees
group by city;

select city ,max(salary) as highest_salary
from employees
group by  city;

select city ,min(salary) as lowest_salary
from employees
group by city;


select gender,count(*) as total_employees
from employees
group by gender;

select gender,round(avg(salary)) as average_salary
from employees
group by gender;


select gender,sum(salary) as   total_salary
from  employees
group by gender;

select age,count(*) as total_employees
from employees
group by age;

select department,max(age) as highest_age
from employees
group by department;

select department,min(age) as lowest_age
from employees
group by department;

select city, round(avg(age)) as average_age
from employees
group by city;



select gender,max(salary) as highest_salary
from employees
group by gender;


select gender,min(salary) as lowest_salary
from employees
group by gender;


select department,count(employee_id) as total_records
from employees
group by department;