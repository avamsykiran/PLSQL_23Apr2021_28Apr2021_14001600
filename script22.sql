create or replace package body mypack
is
	procedure raisesal(p_empno  employees2.employee_id%type, p_per  number)
	is
	begin
		update employees2
        set	salary = salary + salary * p_per/100
        where employee_id = p_empno;
	end;
	
	function getename(p_empno employees2.employee_id%type)
	return employees2.first_name%type
	is
		v_ename	employees2.first_name%type;
	begin
		select first_name
        into    v_ename
        from employees2
        where employee_id = p_empno;
        
        return v_ename;
	exception
		when no_data_found  then
			return 'Not Found';
        when too_many_rows  then
            return 'More Employees';
	end;
end mypack;	-- package body
/