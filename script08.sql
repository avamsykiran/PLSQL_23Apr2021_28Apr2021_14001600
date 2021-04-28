declare
   v_employees_rec   employees%rowtype;
begin
   select   *
   into     v_employees_rec
   from     employees
   where    job_id = 'AD_VP';

   dbms_output.put_line('employee id : ' || v_employees_rec.employee_id);
   dbms_output.put_line('last name   : ' || v_employees_rec.last_name);
   dbms_output.put_line('job id      : ' || v_employees_rec.job_id);

exception
   when no_data_found then
        dbms_output.put_line('No such employee');
   when too_many_rows then
        dbms_output.put_line('More employees');
end;