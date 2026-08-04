use vaishnavi1;

create table employees_procedure_practice(
emp_id int primary key,
emp_name varchar(30),
dept_name varchar(30),
salary int
);

insert into employees_procedure_practice values
(101,'Rahul','IT',60000),
(102,'Neha','HR',55000),
(103,'Amit','Sales',70000),
(104,'Priya','IT',80000),
(105,'Kiran','Finance',65000);

delimiter $$
create procedure show_all_employees()
begin
select * from employees_procedure_practice;
end $$
delimiter ;

call show_all_employees();

delimiter $$
create procedure show_IT2_employees()
begin 
select * from employees_procedure_practice
where dept_name = 'IT';
end $$
delimiter ;

call show_IT2_employees();


delimiter $$
create procedure show_high_salary_employees()
begin
select * from employees_procedure_practice
where salary > 70000;
end $$
delimiter ;

call show_high_salary_employees();

delimiter $$
create procedure show_department(in dept varchar(30))
begin
select * from employees_procedure_practice
where dept_name = dept;
end $$
delimiter ; 

call show_department('Sales');


delimiter $$
create procedure show_salary2(in amount int)
begin
select * from employees_procedure_practice
where salary >= amount ;
end $$
delimiter ;

call show_salary2(65000);

delimiter $$
create procedure show_employee(in employee_department varchar(30))
begin
select * from employees_procedure_practice
where dept_name = employee_department
and salary >= 60000;
end $$
delimiter ;

call show_employee('IT');

-- 2 in

delimiter $$
create procedure show_department_salary(in dep varchar(30),
in sal int)
begin
select * from employees_procedure_practice 
where dept_name = dep
and salary >= sal ;
end $$

call show_department_salary('HR',7000);

-- question

delimiter $$
create procedure show_emp_by_salary_range(in min_salary int, in max_salary int)
begin
select * from employees_procedure_practice
where salary between min_salary and max_salary;
end $$
delimiter ;

call show_emp_by_salary_range(6000 , 75000);

-- question

delimiter $$
create procedure show_department_salary_range2(in department_name varchar(30) , in min_salary int , in max_salary int)
begin
select * from employees_procedure_practice
where department_name = dept_name
and salary between min_salary and max_salary;
end $$
delimiter ;

call show_department_salary_range2('IT',60000,90000);


-- question

delimiter $$
create procedure show_employee_name (in employee_name varchar(30))
begin
select * from employees_procedure_practice
where employee_name = emp_name;
end $$
delimiter ;

call show_employee_name('Kiran');



























































































































































