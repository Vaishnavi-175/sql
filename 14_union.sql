create database vaishnavi1;
use vaishnavi1;

CREATE TABLE online_students
(
    id INT,
    name VARCHAR(20)
);

INSERT INTO online_students
VALUES
(1,'Rahul'),
(2,'Neha'),
(3,'Amit');

CREATE TABLE offline_students
(
    id INT,
    name VARCHAR(20)
);

INSERT INTO offline_students
VALUES
(3,'Amit'),
(4,'Priya'),
(5,'Kiran');

select * from online_students
union 
select * from offline_students;

select * from online_students
union all
select * from offline_students;

select * from online_students
union all
select * from offline_students
order by name asc;

select * from online_students
union all
select count(*) from offline_students;


select count(*)
from
(
select * from online_students
union all
select * from offline_students
)x;

select count(distinct id) from
(
select * from online_students
union all
select * from offline_students
)x;

select name from online_students
union
select name from offline_students;



-- not allowed
select id,name
from online_students
union
select id from offline_students;


-- this is also not allowed becoz id is int and name is varchar so 
select id,name
from online_students
union
select name,id
from offline_students;


select id from online_students
union all
select id from offline_students
order by id desc;


select count( id) as total_count,
count(distinct id) as unique_count
from
(
select * from online_students
union all
select * from offline_students
)x;




























































