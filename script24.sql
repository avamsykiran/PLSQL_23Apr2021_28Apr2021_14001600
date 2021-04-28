create or replace trigger ucasetrig
before insert or update
on employees2
for each row
begin
   :new.first_name := upper(:new.first_name);
   :new.last_name := upper(:new.last_name);
end;
/