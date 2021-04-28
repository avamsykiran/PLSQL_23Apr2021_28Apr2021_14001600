declare
	cursor	jobcursor
	is
	select	*
	from	employees
	where	job_id = :j;
begin
	for  rec   in   jobcursor
	loop
		dbms_output.put_line('Last Name : ' || rec.last_name);
		dbms_output.put_line('Salary    : ' || rec.salary);
		dbms_output.put_line('Job ID    : ' || rec.job_id);
	end	loop;
end;
/