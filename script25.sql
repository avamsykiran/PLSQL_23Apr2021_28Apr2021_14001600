create or replace trigger rejecttrig
before update or delete
on employees2
for each row
begin
  raise_application_error(-20001, 'Illegal Operation');	
end;
/