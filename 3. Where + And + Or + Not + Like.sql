-- Where Clause

Select *
from employee_salary
where  first_name = 'Leslie' 
;

select *
from employee_salary
where salary >= 50000
;

select *
from employee_demographics
where gender != 'Female'
;

-- Logical Operators

-- And
select *
from employee_demographics
where birth_date > '1985-01-01'
and gender = 'male'
;

-- Or
select *
from employee_demographics
where (first_name = 'Leslie' AND age = 44) OR age > 55;

-- Not 
select *
from employee_demographics
where not first_name = 'Leslie'
;

-- Like
-- % and _
select *
from employee_demographics
where birth_date LIKE '1989%'
;