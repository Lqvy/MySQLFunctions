-- Limit and Aliasing

-- Three oldest employee's
select *
from employee_demographics
order by age desc
limit 3
;

-- Multiple limit factors
select *
from employee_demographics
order by age desc
-- Starting at row 2, then moving down 1 row.
limit 2, 1
;

-- Compare to above code, run both for live example.
select *
from employee_demographics
order by age desc
limit 3
;

-- Aliasing
select gender, avg(age) as avg_age
from employee_demographics
group by gender
having avg_age > 40
;