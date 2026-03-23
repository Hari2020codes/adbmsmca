declare
n number := &n;
sum number := 0;
rem number;
rev number := 0;
temp number := n;
begin 
while n>0 loop
 rem := MOD(n,10);
 rev := (rev*10)+rem;
 n := TRUNC(n,10);
end loop;
if temp=rev then
 dbms_output.put_line(temp||' is palindrome');
else
 dbms_output.put_line(temp||' is not palindrome');
end if;
end;
 