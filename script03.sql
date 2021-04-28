declare
   v_employees_rec   employees%rowtype;
begin
   select   *
   into     v_employees_rec
   from     employees
   where    employee_id = 100;
   dbms_output.put_line('employee id : ' || v_employees_rec.employee_id);
   dbms_output.put_line('first name  : ' || v_employees_rec.first_name);
   dbms_output.put_line('last name   : ' || v_employees_rec.last_name);
   dbms_output.put_line('job id      : ' || v_employees_rec.job_id);
end;
/