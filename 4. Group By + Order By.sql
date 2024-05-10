-- Group By

Select *
from employee_demographics;


Select gender, AVG(age), Max(age), MIN(age), COUNT(age)
from employee_demographics
group by gender
;

Select occupation, salary
from employee_salary
group by occupation, salary
;

-- Order By
Select *
from employee_demographics
order by gender, age desc
;

-- Bad Practice but quick ad hoc (numbers)
Select *
from employee_demographics
order by 5, 4 desc
;