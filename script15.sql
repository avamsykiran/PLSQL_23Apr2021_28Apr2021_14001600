declare
	cursor	empcursor(p_job_id   varchar)
	is
	select	*
	from	employees
	where	job_id = p_job_id;
begin
	for	rec	in	empcursor(:j)
	loop
		dbms_output.put_line('Last Name : ' || rec.last_name);
		dbms_output.put_line('job id    : ' || rec.job_id);
	end	loop;
end;
/