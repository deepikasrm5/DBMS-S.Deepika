-- SQL is case insensitive
/*
UPPERCASE :keywords
lowercase :non-keywords
*/ 

use exercise_hr;
show tables;
select*from employees order by first_name desc;
select employee_id,first_name,last_name,salary from employees order by salary asc;
select*from employees order by first_name asc, last_name desc;


use store;
show tables;
select first_name,last_name,points,points*1.1 as 'discount factor' from customers;

/*
data types
strings, numbers, dates 

-- select <column-1>,<column-2>,....<column-n> from <table_name>; --> syntax for select query */

select*from customers;
select DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(),birth_date)), '%Y') + 0 as age  from customers;
use store;
show tables;
select * 
from customers 
where state='FL' or state='VA' or state='GA';
select*from customers where state in('FL','VA','GA');


select*from products where quantity_in_stock in(49,38,72);
select*from customers where birth_date between '1990-01-01' and '2000-01-01';
select*from customers where last_name like 'b%';
