create or replace trigger trg_employee_hire_date_check
before insert or update
on employees2
for each row
begin
   if  :new.hire_date > sysdate  then
      raise_application_error (-20100, 'Hire date cannot be after system date');
   end   if;
end;
/