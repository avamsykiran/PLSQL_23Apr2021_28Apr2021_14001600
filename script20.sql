create or replace function getname
(p_employee_id  employees.employee_id%type)
return employees.first_name%type
is
	v_first_name	employees.first_name%type;
begin
	select	first_name
	into	v_first_name
	from	employees
	where	employee_id = p_employee_id;
    
	return	v_first_name;
exception
        when  no_data_found  then
             return 'Employee Not Found';
end;
/