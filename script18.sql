create or replace procedure raisesal
(
    empno  in  employees2.employee_id%type,
    percent in number
)
is
       NO_EMPLOYEE     EXCEPTION;
begin
    	update   employees2
        set	salary = salary + salary*percent/100
	    where	employee_id=empno;

        if sql%rowcount > 0 then
           commit;
        else
           raise NO_EMPLOYEE;
        end if;
exception
        when NO_EMPLOYEE then
             dbms_output.put_line('No Employee');
end;
/