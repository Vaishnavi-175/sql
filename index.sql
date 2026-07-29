use vaishnavi1;

CREATE TABLE employees_index_practice
(
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(30),
    dept_name VARCHAR(20),
    email VARCHAR(50),
    salary INT
);

INSERT INTO employees_index_practice VALUES
(1,'Rahul','IT','rahul@gmail.com',95000),
(2,'Neha','HR','neha@gmail.com',78000),
(3,'Amit','IT','amit@gmail.com',87000),
(4,'Priya','Finance','priya@gmail.com',65000),
(5,'Kiran','HR','kiran@gmail.com',92000),
(6,'Sneha','IT','sneha@gmail.com',54000),
(7,'Rohan','Finance','rohan@gmail.com',81000),
(8,'Pooja','HR','pooja@gmail.com',47000);

create index idx_salary
on employees_index_practice(salary);

show index
from employees_index_practice;

create index idx_dept
on employees_index_practice(dept_name);

select * from employees_index_practice
where salary = 81000;


create index idx_email
on employees_index_practice(email);

show index
from employees_index_practice;

create index idx_dept_salary
on employees_index_practice(dept_name,salary);


DROP INDEX idx_salary
ON employees_index_practice;


CREATE INDEX idx_salary_dept
ON employees_index_practice(salary, dept_name);

SELECT *
FROM employees_index_practice
WHERE salary>80000
AND dept_name='IT';


create index idx_dept_salary
on employees_index_practice(dept_name ,salary);


CREATE TABLE orders_index_practice
(
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    product_name VARCHAR(50),
    order_date DATE,
    city VARCHAR(30),
    amount DECIMAL(10,2)
);

INSERT INTO orders_index_practice VALUES
(101,'Rahul','Laptop','2025-01-15','Pune',85000),
(102,'Neha','Mobile','2025-02-10','Mumbai',25000),
(103,'Amit','Tablet','2025-03-05','Pune',18000),
(104,'Priya','Laptop','2025-01-20','Bangalore',92000),
(105,'Kiran','Monitor','2025-04-12','Mumbai',15000),
(106,'Sneha','Keyboard','2025-05-08','Pune',3000),
(107,'Rohan','Laptop','2025-06-18','Delhi',88000),
(108,'Pooja','Mouse','2025-07-02','Mumbai',1200),
(109,'Meera','Mobile','2025-03-22','Delhi',28000),
(110,'Vikas','Laptop','2025-02-28','Pune',97000);


create index idx_city
on orders_index_practice(city);

select * from orders_index_practice
where city ="Mumbai";

create unique index idx_order_id
on orders_index_practice(order_id);

create index idx_product_city
on orders_index_practice(product_name,city);

select * from orders_index_practice
where product_name ='Laptop'
and city = 'Pune';


drop index idx_city
on orders_index_practice;













































































































































































































































