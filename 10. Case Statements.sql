-- Case Statements

select first_name, last_name, age,
case 
	when age <= 30 then 'Young'
    when age between 31 and 50 then 'Old'
    when age >= 50 then "Near retirement"
end as Age_Bracket
from employee_demographics;

-- Pay increase and Bonus
-- > 50000 = 8%
-- < 50000 = 12%
-- Finance = 15%

select first_name, last_name, salary,
case
	when salary > 50000 then salary * 1.08
    when salary < 50000 then salary * 1.12
end as new_salary,
case 
	when dept_id = 6 then salary * .10
end as bonus
from employee_salary;

-- Reference Table for dept_id
select *
from employee_departments;