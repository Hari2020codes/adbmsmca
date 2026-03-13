create or replace procedure pr2(p_eno in employsql.eno%type, p_comm out number) as 
begin 
select sal*0.10 into p_comm from employsql where eno=p_eno;
end;