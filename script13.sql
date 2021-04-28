declare
	cursor	jobcursor(p_job_id varchar)
	is
	select	last_name, salary, job_id
	from	employees
	where	job_id = p_job_id;

	v_last_name	employees.last_name%type;
	v_salary	employees.salary%type;
	v_job_id	employees.job_id%type;
begin
    if   not  jobcursor%ISOPEN   then
	    open  	jobcursor(:j);
    end   if;

	loop
		fetch  	jobcursor	into	v_last_name, v_salary, v_job_id;
		exit  when  jobcursor%NOTFOUND;
		dbms_output.put_line('Last Name : ' || v_last_name);
		dbms_output.put_line('Salary    : ' || v_salary);
		dbms_output.put_line('Job ID    : ' || v_job_id);
	end	loop;
	dbms_output.put_line('No. of IT Programmers : '||jobcursor%ROWCOUNT);
	close	jobcursor;
end;
/