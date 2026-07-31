use practicec;
CREATE TABLE Employee_Bonus
(
emp_id INT,
emp_name VARCHAR(30),
dept_name VARCHAR(30),
bonus INT
);

INSERT INTO Employee_Bonus
VALUES
(1,'Rahul','IT',25000),
(2,'Ajay','IT',22000),
(3,'Neha','HR',18000),
(4,'Priya','HR',15000),
(5,'Amit','Sales',30000),
(6,'Sneha','Sales',28000);

select emp_name,dept_name,bonus,
first_value(bonus) over(order by bonus desc) as heighest_salary
from Employee_Bonus;

select emp_name,dept_name,bonus,
row_number() over(partition by dept_name
order by bonus desc) as row_no,
first_value(bonus) over(partition by dept_name
order by bonus desc) as  heighest_bonus
from Employee_Bonus;

select emp_name,dept_name,bonus,
first_value(emp_name) over(partition by dept_name
order by bonus desc) as top_employee
from Employee_Bonus;

-- last value

CREATE TABLE Employee_Salary
(
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(30),
    dept_name VARCHAR(20),
    salary INT
);

INSERT INTO Employee_Salary
(emp_id, emp_name, dept_name, salary)
VALUES
(1,'Rahul','IT',90000),
(2,'Ajay','IT',85000),
(3,'Neha','HR',70000),
(4,'Priya','HR',65000),
(5,'Amit','Sales',95000),
(6,'Sneha','Sales',92000),
(7,'Rohan','Finance',80000),
(8,'Kiran','Finance',75000);


select emp_name,dept_name,salary,
last_value(salary) over( order by salary desc
rows between unbounded preceding and unbounded following) as last_salary
from employee_salary;

select emp_name,dept_name,salary,
last_value(salary) over(partition by dept_name
order by salary desc
rows between unbounded preceding and unbounded following) as last_salary
from employee_salary;

select emp_name, dept_name,salary,
last_value(emp_name) over(partition by dept_name
order by salary desc
ROWS BETWEEN
UNBOUNDED PRECEDING
AND UNBOUNDED FOLLOWING) as low_paid_employee
from employee_salary;

-- nth row
select emp_name,salary,
nth_value(salary,3) over(order by salary desc
rows between unbounded preceding and unbounded following) as heighest_3salary
from employee_salary;

select emp_name,dept_name,salary,
nth_value(emp_name,2) over(partition by dept_name
order by salary desc rows between unbounded preceding and unbounded following) as second_heighest_employee
from employee_salary;

select emp_name,dept_name,salary,
nth_value(salary,2) over(partition by dept_name 
order by salary desc rows between unbounded preceding and unbounded following) as second_heighest_salary
from employee_salary;















































