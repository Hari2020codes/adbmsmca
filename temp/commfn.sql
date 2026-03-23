declare
n employsql.eno%type:=&n;
comm number;
begin
comm:=fn2(n);
dbms_output.put_line('commission is '||comm);
end;
