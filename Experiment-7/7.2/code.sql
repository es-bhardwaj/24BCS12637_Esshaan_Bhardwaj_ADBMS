declare
    cursor c_orders is
        select order_id, amount
        from orders;

begin
    for ord in c_orders loop
        if ord.amount > 10000 then
            dbms_output.put_line(
                'order id: ' || ord.order_id || ', high value'
            );
        end if;
    end loop;
end;
/