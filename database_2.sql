select 171*214 + 625 as value;

USE exercise_hr;
show tables;
select first_name"FIRST_NAME",last_name"LAST_NAME" from employees;
select first_name,last_name,salary,salary*0.15 as PF from employees;
select distinct department_id from employees;


use store;
show tables;
select*, unit_price*1.1 as new_price from products;

select*from customers where points>3000;
select*from customers where state="FL";
select*from customers where birth_date>="1990-01-01";
select*from customers where state="FL" AND birth_date>"1990-01-01";
select*from customers where points>3000 or birth_date>"1990-01-01";

select*from customers where points<4000 or birth_date>="1990-01-01" and state="VA";
select*from customers where (points<4000 and birth_date>="1990-01-01") and state="VA";

select*from customers where state!="FL";

use store;
-- show tables;
-- select * from customers where state like '%A';
-- select * from customers where last_name regexp 'age';
-- select * from customers where last_name regexp 'field$';
-- select * from customers where last_name regexp 'field$|^Mac|rose';
show tables;
select * from customers where first_name regexp '^elka|ambur$';
select * from customers where last_name regexp 'EY$|^ON';
select * from customers where last_name regexp'^my' or last_name like'%se%';
select * from customers where last_name like '%BR%' or last_name like '%BU%';
-- ^ (caret)- starts with
-- $ (dollar) - ends with
-- | (pipe) - or symbol
-- last name has ae,be,ce,de,ee,fe,ge,he
select * from customers where last_name regexp ('[a-h]e');  
select * from customers where last_name regexp('[gim]e');
select * from customers where last_name regexp('^.{6}$');
-- .*

select * from customers where last_name regexp ('.*b.r|.*b.u');

use exercise_hr;
show tables;
select*from employees where last_name regexp('b.*[ru]'); 

use exercise_hr;
show tables;
explain
select*from employees;
select count(*)as  no_of_employees from employees order by last_name;


