USE sql_practice;

select department, count(*)
from employees
group by department
having count(*) > 2;

select department, avg(salary)
from employees
group by department
having avg(salary) > 50000;

select city, count(*)
from employees
group by city
having count(*) >= 2;

select department, sum(salary)
from employees
group by department
having sum(salary) > 100000;

select gender, count(*)
from employees
group by gender
having count(*) > 1;

select city, max(salary)
from employees
group by city
having max(salary) > 70000;

select city, min(salary)
from employees
group by city
having min(salary) > 30000;

select department, max(age)
from employees
group by department
having max(age) > 35;

select department, min(age)
from employees
group by department
having min(age) < 25;

select city, avg(age)
from employees
group by city
having avg(age) > 28;

select department, count(employee_id)
from employees
group by department
having count(employee_id) = 3;

select city, sum(salary)
from employees
group by city
having sum(salary) > 150000;

select gender, avg(salary)
from employees
group by gender
having avg(salary) > 45000;

select department, avg(age)
from employees
group by department
having avg(age) > 30;

select city, count(*)
from employees
group by city
having count(*) < 5;

select department, sum(salary)
from employees
group by department
having sum(salary) between 100000 and 300000;

select city, avg(salary)
from employees
group by city
having avg(salary) between 40000 and 60000;

select gender, sum(salary)
from employees
group by gender
having sum(salary) > 200000;

select department, count(*)
from employees
group by department
having count(*) >= 5;

select city, max(age)
from employees
group by city
having max(age) < 40;

select department, min(salary)
from employees
group by department
having min(salary) > 25000;

select city, avg(age)
from employees
group by city
having avg(age) < 35;

select gender, max(salary)
from employees
group by gender
having max(salary) > 80000;

select department, count(*)
from employees
group by department
having count(*) <> 1;

select city, sum(salary)
from employees
group by city
having sum(salary) >= 250000;