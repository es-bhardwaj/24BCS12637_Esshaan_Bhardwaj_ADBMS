declare
    cursor c_employee is
        select name, salary
        from employee
        order by salary desc;

    v_count number := 0;

begin
    for emp in c_employee loop
        exit when v_count = 5;

        dbms_output.put_line(
            'name: ' || emp.name || ', salary: ' || emp.salary
        );

        v_count := v_count + 1;
    end loop;
end;
/