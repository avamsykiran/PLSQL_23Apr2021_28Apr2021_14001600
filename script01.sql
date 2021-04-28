declare
   v_employee_id    employees.employee_id%type;
   v_last_name      employees.last_name%type;
   v_job_id         employees.job_id%type;
begin
   select   employee_id,last_name,job_id
   into     v_employee_id, v_last_name, v_job_id
   from     employees
   where    employee_id = 100;
   dbms_output.put_line('employee id : ' || v_employee_id);
   dbms_output.put_line('last name   : ' || v_last_name);
   dbms_output.put_line('job id      : ' || v_job_id);
end;

/