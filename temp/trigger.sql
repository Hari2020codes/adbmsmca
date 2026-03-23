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
