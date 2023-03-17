-- Use get_well_soon;
-- create table if not exists Countries(
-- country_id varchar(2) primary key,
-- country_name varchar(40),
-- region_id int
-- );

-- insert into Countries(country_id,country_name,region_id) values('13','Africa','235');
-- select*from Countries

use exercise_hr;
show tables;
select*from employees;
select*from departments;
select department_id from departments where department_name='IT';
select first_name,last_name,department_id from employees where department_id=60;
select*from employees inner join departments on employees.department_id = departments.department_id;
select*
from employees inner join departments 
on employees.department_id = departments.department_id 
where department_name = 'IT';

select first_name, last_name, e.department_id, department_name
from employees as e  inner join departments as d 
on e.department_id = d.department_id;

select department_id,count(*) as 'number of employees in each department' 
from employees  group by department_id;

select*from employees as e inner join employees  as d on e.manager_id = d.manager_id;
select e.employee_id as 'employee id', concat(e.first_name,e.last_name) as 'employee name',concat(d.first_name,d.last_name) as 'manager name', d.employee_id as 'manager id' from employees as e inner join employees  as d on e.manager_id = d.manager_id;