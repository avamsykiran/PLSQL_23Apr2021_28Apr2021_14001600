
declare
    limit1 number(10);
    limit2 number(10);
    i number(5);
begin
  limit1 := 1;
  limit2 := 10;

  for i in limit1..limit2 
  loop
    dbms_output.put_line('for loop ' || i);
  end loop;


  i := limit1;

  loop
    dbms_output.put_line('base loop ' || i);
    i := i+1;
    exit when i=limit2;
  end loop;

  i := limit1; 

  while i <= limit2
  loop
    dbms_output.put_line('while loop ' || i);
    i := i+1;   
  end loop;


end;
/