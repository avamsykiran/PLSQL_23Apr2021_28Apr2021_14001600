
declare
    cursor  sal_cursor
    is   
      select  e.department_id, employee_id, last_name, salary
      from    employees    e inner join departments   d
      on e.department_id=d.department_id
      and      d.department_id = 60
      for  update  of  salary  nowait;
begin
      for emp_record in sal_cursor
      loop
            dbms_output.put_line(emp_record.salary);
            if emp_record.salary < 5000 then
                  update  employees
                  set  salary = emp_record.salary * 1.10
                  where  current  of  sal_cursor;
            end   if;
            dbms_output.put_line(emp_record.salary || ' modified');
      end loop;
end;

/
