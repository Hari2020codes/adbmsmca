create or replace TRIGGER T12 
BEFORE insert or update on employsql
for EACH row
declare
 ctr number;
begin
select count(*) into ctr from employsql where eno=:NEW.eno;
if ctr > 0 then
 RAISE_APPLICATION_ERROR(-20003, 'Duplication not possible');
end if;
end;

duplicate sql query :---insert into employsql values(1010,'hari','tester',40000,14);

  
o/p
insert into employsql values(1010,'hari','tester',40000,14)
            *
ERROR at line 1:
ORA-20003: Duplication not possible
ORA-06512: at "SYSTEM.T12", line 6
ORA-04088: error during execution of trigger 'SYSTEM.T12'
