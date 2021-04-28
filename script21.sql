create or replace package mypack
is
	procedure raisesal(p_empno  employees2.employee_id%type, p_per  number);
	function  getename(p_empno  employees2.employee_id%type)
	return employees2.first_name%type;
end mypack;		-- package specification
/

