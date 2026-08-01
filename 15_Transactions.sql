use vaishnavi1;

create table bank_accounts_practice(
accound_id INT PRIMARY KEY,
customer_name VARCHAR(30),
balance INT
);

INSERT INTO bank_accounts_practice VALUES
(101,'Rahul',10000),
(102,'Neha',5000),
(103,'Amit',8000),
(104,'Priya',12000),
(105,'Kiran',7000);


select * from bank_accounts_practice;

start transaction;

update bank_accounts_practice
set balance = 8000
where accound_id = 101;

update bank_accounts_practice
set balance = 7000
where accound_id = 102;

commit;


start transaction;

update bank_accounts_practice
set balance = balance - 2000
where accound_id = 103;

update bank_accounts_practice
set balance = balance + 2000
where accound_id = 104;

rollback;

select * from bank_accounts_practice;

start transaction;

update bank_accounts_practice
set balance = balance - 2000
where accound_id = 101;

update bank_accounts_practice
set balance = balance + 2000
where accound_id = 102;

commit ;

start transaction;

update bank_accounts_practice
set balance = balance - 3000
where accound_id = 103;

update bank_accounts_practice
set balance = balance + 3000
where accound_id = 104;

rollback;



start transaction;

update bank_accounts_practice
set balance = balance - 1000
where accound_id = 101;

update bank_accounts_practice
set balance = balance + 1000
where accound_id = 102;

savepoint sp1;

update bank_accounts_practice
set balance = balance - 2000
where accound_id = 101;

update bank_accounts_practice
set balance = balance + 2000
where accound_id = 103;

rollback to sp1;

commit;
select * from bank_accounts_practice;
























































































































































