
declare
    v_sal employees.salary%type;
    v_mgr_sal employees.salary%type;
begin
  
  select salary into v_sal from employees where employee_id=110;
  select salary into v_mgr_sal from employees where employee_id =(
        select manager_id from employees where employee_id=110);
  
  if  v_sal = v_mgr_sal  then
     dbms_output.put_line('employee draw equal to that of his manager');
  elsif v_sal < v_mgr_sal then
     dbms_output.put_line('employee draws less than that of his manager');
  else
     dbms_output.put_line('employee draws more than that of his manager');
  end if;
end;
/