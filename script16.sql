
begin
	for	rec	in	empcursor(select * from employees where job_id=:j)
	loop
		dbms_output.put_line('Last Name : ' || rec.last_name);
		dbms_output.put_line('job id    : ' || rec.job_id);
	end	loop;
end;
/

