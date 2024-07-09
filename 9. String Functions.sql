-- String Functions

-- Basics
select length('BouncingBall');
select upper('SKY');
select lower('BALL');
select trim('             ball             ');
select Ltrim('             ball             ');
select Rtrim('             ball             ');

select first_name, length(first_name) as Length
from employee_demographics
order by length;

select first_name, upper(first_name) as Uppercase
from employee_demographics
order by first_name asc;

select first_name, lower(first_name) as Lowercase
from employee_demographics
order by first_name asc;

-- Number is character count
select first_name, 
left(first_name, 4),
right(first_name, 4),
-- (column, starting location, how far from starting location)
substring(first_name, 3, 2),
birth_date,
-- Use case
substring(birth_date,6,2) as birth_month
from employee_demographics;

-- Replace
select replace('Ball', 'B', 'C');

select first_name, replace(first_name, 'a', 'z')
from employee_demographics;

-- Locate
select locate('s', 'Chase');

select first_name, locate('An', first_name)
from employee_demographics;

-- Concatenate
select first_name,last_name,
CONCAT(first_name,' ', last_name) as full_name
from employee_demographics;