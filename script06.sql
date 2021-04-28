
declare
  v_bonusper number(5);
  v_department_id employees.department_id%type;
begin
  select department_id
  into v_department_id
  from employees
  where employee_id = 120;

  v_bonusper :=
     case  v_department_id
        when 30 then 20
        when 40 then 15
        when 50 then 10
        else 5
     end;

  dbms_output.put_line('Bonus % for employee 120 is : ' || v_bonusper);
end;
/