-- Triggers and Events

-- Viewing
select * 
from employee_demographics;

select * 
from employee_salary;

-- Trigger Objective: Automatically update the demographics table when someone is added to the salary table
delimiter $$ -- Define a stored procedure and create automatic triggers for those procedures. 
create trigger employee_insert -- Creating trigger and naming.
	after insert on employee_salary -- After a row is inserted in the target table<- ┐
    for each row -- For each row,													 |
begin -- this happens ↓↓															 |
  --                Going to insert ------- ↓ --------- ↓ --------- ↓ from ->---->-- ┘
  --       Into --------- ↓
	Insert into employee_demographics (employee_id, first_name, last_name)
    values (new.employee_id, new.first_name, new.last_name);
end $$
delimiter ;

-- Testing by inserting a row.
insert into employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
values(13, 'Jean-Ralphio', 'Saperstein', 'Entertainment 720 CEO', 1000000, NULL);


-- Event Objective: Retire those over 60 and give life-time pay.
-- Events are like scheduled automaters rather than triggers.

Delimiter $$
create event delete_retirees -- Creating and naming event.
on schedule every 1 month -- On a Schedule of every month
do -- Do this ↓↓
begin
	delete -- >------>------>-- ┐
	from employee_demographics
    where age >= 60; -- <---<-- ┘
end $$
delimiter ;

-- Double check event_scheduler is On.
show variables like 'event%';