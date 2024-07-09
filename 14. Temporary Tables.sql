-- Temporary Tables

-- Creating the temp tables rows and columns
create temporary table temp_table
(first_name varchar (50),
last_name varchar (50),
favorite_food varchar (50)
);

-- Populating the temp table
insert into temp_table
values('Chase','Breisinger','Hot Wings');

-- Viewing
select * 
from temp_table;

-- Temp table from an existing table
create temporary table salary_over_50k
select *
from employee_salary
where salary >= 50000;

select * from 
salary_over_50k;
