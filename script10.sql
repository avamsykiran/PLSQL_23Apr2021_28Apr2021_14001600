declare
   v_manager_id 	employees.manager_id%type;
   v_manager_name 	employees.first_name%type;
   NO_MANAGER   	EXCEPTION;
begin
   select manager_id
   into   v_manager_id
   from   employees
   where  employee_id = 100;

   if v_manager_id is null then
      RAISE    NO_MANAGER;
   end if;

   select first_name
   into   v_manager_name
   from   employees
   where  manager_id = v_manager_id;

   dbms_output.put_line('Manager Name : ' || v_manager_name);
exception
   when  TOO_MANY_ROWS then
       dbms_output.put_line('More Employees are working under this Manager');
   when  NO_MANAGER  then
       dbms_output.put_line('No Manager For This Employee');
end;
/