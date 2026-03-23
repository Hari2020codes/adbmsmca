create or replace function fn2(n number)
return number
is 
s employsql.sal%type;
begin 
select sal into s from employsql where eno=n;
return s*0.10;
end;
