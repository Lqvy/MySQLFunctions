-- Window Functions

-- Average Salary via Gender
Select gender, avg(salary) as avg_salary
from employee_demographics ED
join employee_salary ES
	on ED.employee_id = ES.employee_id
group by gender;

-- Incorrect Average Salary via each row
Select ED.first_name, ED.last_name, gender, avg(salary) as avg_salary
from employee_demographics ED
join employee_salary ES
	on ED.employee_id = ES.employee_id
group by ED.first_name, ED.last_name, gender;

-- Average Salary via Gender based on specific column
Select ED.first_name, ED.last_name, gender, avg(salary) over(partition by gender) -- windows function based on this column
from employee_demographics ED
join employee_salary ES
	on ED.employee_id = ES.employee_id;
    
-- Rolling Total
Select ED.first_name, ED.last_name, gender, salary,
    sum(salary) over(partition by gender order by ED.employee_id) as Rolling_Total-- windows function based on this column
from employee_demographics ED
join employee_salary ES
	on ED.employee_id = ES.employee_id;
    
-- Row number by salary and gender
Select ED.employee_id, ED.first_name, ED.last_name, gender, salary,
row_number() over(partition by gender order by salary desc) as row_num, -- counts row number
rank() over(partition by gender order by salary desc) rank_num, -- Skips Duplicates  and counts positionally
dense_rank() over(partition by gender order by salary desc) dense_rank_num -- Skips Duplicates and counts numerically
from employee_demographics ED
join employee_salary ES
	on ED.employee_id = ES.employee_id;