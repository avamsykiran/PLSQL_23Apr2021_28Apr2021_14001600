
declare
  v_salary        employees.salary%type;
  v_avg_salary    employees.salary%type;
begin
  select  avg(salary) 
  into      v_avg_salary 
  from     employees
  where   job_id = (select   job_id 
                             from     employees
                             where  employee_id = 110);
  select  salary
  into      v_salary
  from    employees
  where  employee_id = 100;

  if    v_salary   >   v_avg_salary    then
     dbms_output.put_line('Salary is more than average salary of employee in his job');
  else
     dbms_output.put_line('Salary is NOT more than average salary of employee in his job');
  end if;
end;
/