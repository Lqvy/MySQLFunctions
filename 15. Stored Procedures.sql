-- Stored Procedures

use `parks_and_recreation`;
drop procedure if exists `large_salaries`;

delimiter $$
use `parks_and_recreation` $$
create procedure large_salaries()
begin
	select *
	from employee_salary
	where salary >= 50000;
	select *
	from employee_salary
	where salary >= 10000;
end $$
delimiter ;

call large_salaries();



delimiter $$
use `parks_and_recreation` $$
create procedure large_salaries2(employee_id_param INT)
begin
	select salary
    from employee_salary
    where employee_id = employee_id_param
    ;
end $$
delimiter ;

call large_salaries2(1);