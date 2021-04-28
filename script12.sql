
declare
	v_last_name	employees.last_name%type;
	v_salary	employees.salary%type;
	v_job_id	employees.job_id%type;

    cursor	jobcursor
	is
	select	last_name, salary, job_id
	from	employees
	where	job_id = :j;
begin

    if  not  jobcursor%ISOPEN   then
	    open jobcursor;
    end if;

	loop
		fetch  	jobcursor	into	v_last_name, v_salary, v_job_id;
		exit  when  jobcursor%NOTFOUND;
		dbms_output.put_line('Last Name : ' || v_last_name);
		dbms_output.put_line('Salary    : ' || v_salary);
		dbms_output.put_line('Job ID    : ' || v_job_id);
	end	loop;

	dbms_output.put_line('No. of employees : '||jobcursor%ROWCOUNT);

	close	jobcursor;
end;
/