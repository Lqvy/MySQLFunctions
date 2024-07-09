-- CTEs

-- create table name
with CTE_Example AS
-- create table
(
select gender, avg(salary) as avg_sal, max(salary) as max_sal, min(salary) as min_sal, count(salary) as count_sal
from employee_demographics ED
join employee_salary ES
	on ED.employee_id = ES.employee_id
group by gender
)
-- query table
select * from CTE_Example
;

-- Same function as query, harder to read.
select *
from (select gender, avg(salary) as avg_sal, max(salary) as max_sal, min(salary) as min_sal, count(salary) as count_sal
from employee_demographics ED
join employee_salary ES
	on ED.employee_id = ES.employee_id
group by gender
) as subquery -- e.g. Subquery
;
-- Won't work, table isn't a permanent object, temp table, or view. Nothing is being created. Just a Common Table Expression
select * from CTE_Example;

-- Joining CTE's
with CTE_Example AS
(
select employee_id, gender, birth_date
from employee_demographics
where birth_date > '1985-01-01'
),
CTE_Example2 as
(
select employee_id, salary
from employee_salary
where salary > 50000
)
select * 
from CTE_Example
Join CTE_Example2
	on CTE_Example.employee_id = CTE_Example2.employee_id
;