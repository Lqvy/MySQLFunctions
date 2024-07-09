-- Joins

select *
from employee_demographics;

select *
from employee_salary;

select ED.employee_id, age, occupation
from employee_demographics as ED
inner join employee_salary as ES
	on ED.employee_id = ES.employee_id
;


-- outer joins
-- from is left table, join is right table

select ED.employee_id, age, occupation
from employee_demographics as ED
left join employee_salary as ES
	on ED.employee_id = ES.employee_id
;

select ED.employee_id, age, occupation
from employee_demographics as ED
right join employee_salary as ES
	on ED.employee_id = ES.employee_id
;

-- self join 
-- Secret santa style gifts
select 
emp1.employee_id as emp_valentine,
emp1.first_name as first_name_valentine,
emp1.last_name as last_name_valentine,

emp2.employee_id as emp_name,
emp2.first_name as first_name_emp,
emp2.last_name as last_name_emp

from employee_salary as emp1
join employee_salary as emp2
	on emp1.employee_id + 1 = emp2.employee_id
;

-- Joining multiple tables together

select *
from employee_demographics as ED
inner join employee_salary as ES
	on ED.employee_id = ES.employee_id
inner join parks_departments as PD
	on ES.dept_id = PD.department_id
;

-- reference table; usually static
select*
from parks_departments