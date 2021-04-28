begin
    update  employees 
    set  salary = salary/2
    where employee_id = 100;

    if SQL%ISOPEN  then
       if SQL%NOTFOUND  then
           dbms_output.put_line('No Employee');
       else
           dbms_output.put_line('Rows updated = ' || SQL%ROWCOUNT);
       end if;
    else
       dbms_output.put_line('Implicit Cursor is closed');
    end if;
end;

/