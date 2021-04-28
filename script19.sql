create or replace procedure get_min_max_salary
(
    p_job_id in varchar,
    p_minsalary out number,
    p_maxsalary out number
)
is
begin
    select min(salary), max(salary)
    into p_minsalary, p_maxsalary
    from employees
    where job_id = p_job_id;
end;

/