use exercise_hr;
show tables;
-- 1st question
select sum(salary)from employees;
-- 2nd question
select max(salary) as 'Maximum salary', min(salary) as 'Minimum salary' from employees;
-- 3rd question
select avg(salary) as 'average salary', count(*)as 'no.of emlpoyees' from employees;
-- 4th question 
select count(*) from employees