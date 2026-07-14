use practicec;


create table products (
product_id int primary key,
product_name varchar(50),
category varchar(30)
);

insert into products values
(1,'laptop','electronics'),
(2,'mobile','electronics'),
(3,'chair','furniture'),
(4,'table','furniture'),
(5,'watch','accessories');

-- cross join

select *
from employees_self
cross join products;

select employee_name,product_name
from employees_self
cross join products;

select employee_name,city,product_name
from employees_self
cross join products;

select employee_name,salary,product_name
from employees_self
cross join products;

select employee_name,department,category
from employees_self
cross join products;

select employee_name,product_name
from employees_self
cross join products
where city='pune';

select employee_name,product_name
from employees_self
cross join products
where salary>50000;

select employee_name,product_name
from employees_self
cross join products
where department='it';

select employee_name,category
from employees_self
cross join products
where category='electronics';

select employee_name,product_name
from employees_self
cross join products
order by employee_name;

select employee_name,count(product_id)
from employees_self
cross join products
group by employee_name;

select category,count(employee_id)
from employees_self
cross join products
group by category;

select department,count(product_id)
from employees_self
cross join products
group by department;

select category,avg(salary)
from employees_self
cross join products
group by category;

select department,max(salary)
from employees_self
cross join products
group by department;

select department,min(salary)
from employees_self
cross join products
group by department;

select department,sum(salary)
from employees_self
cross join products
group by department;

select employee_name,count(product_id)
from employees_self
cross join products
group by employee_name
having count(product_id)>3;

select category,count(employee_id)
from employees_self
cross join products
group by category
having count(employee_id)>5;

select employee_name,product_name
from employees_self
cross join products
where salary>(
select avg(salary)
from employees_self);

select employee_name,product_name
from employees_self
cross join products
where salary=(
select max(salary)
from employees_self);

select employee_name,product_name from employees_self
cross join products
where city='mumbai';

select employee_name,product_name
from employees_self
cross join products
where department='sales';

select employee_name,product_name
from employees_self
cross join products
where salary between 50000 and 70000;

select employee_name,product_name
from employees_self
cross join products
order by salary desc;

select employee_name,category
from employees_self
cross join products
order by category;

select category,sum(salary)
  from employees_self
cross join products
group by category
order by sum(salary) desc;

select employee_name,product_name
from employees_self
cross join products
where category='furniture';

select employee_name,product_name from employees_self
cross join products
  where city='pune'
and category='electronics';

select employee_name,product_name
from employees_self
cross join products
order by employee_name,product_name;