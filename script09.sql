declare
  child_record_exception  EXCEPTION;

  PRAGMA
     EXCEPTION_INIT(child_record_exception, -2292);
    /* assign the name to pre-defined error whose oracle error number is -2292 */

begin
  delete from departments
  where department_id = 10;
exception
   when child_record_exception then
     dbms_output.put_line('Cannot Delete - Employees Found For The Department');
end;

/