-- Unions
-- Unions are by default Distinct
select first_name, last_name
from employee_demographics
union all
select first_name, last_name
from employee_salary;


-- Use case, cutting budget via pay cuts or layoffs.
select first_name, last_name, 'Old Man' as Label
from employee_demographics
where age > 40 and gender = 'Male'
union
select first_name, last_name, 'Old Lady' as Label
from employee_demographics
where age > 40 and gender = 'Female'
union 
select first_name, last_name, 'Highly Paid Employee' as Label
from employee_salary
where salary > 70000
order by first_name, last_name
;