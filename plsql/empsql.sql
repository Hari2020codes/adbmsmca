 CREATE TABLE EMPLOYsql(ENO NUMBER(4), ENAME VARCHAR(5), DGN VARCHAR(8), SAL NUMBER(5), DEPTNO NUMBER(2));

Table created.

SQL> INSERT INTO EMPLOYsql VALUES(1010, 'sree,'mngr',50000,12);
ERROR:
ORA-01756: quoted string not properly terminated


SQL> INSERT INTO EMPLOYsql VALUES(1010, 'sree','mngr',50000,12);

1 row created.

SQL> INSERT INTO EMPLOYsql VALUES(1011, 'reema','engineer',25000,13);

1 row created.

SQL> INSERT INTO EMPLOYsql VALUES(1013, 'anjna','tester',25000,14);

1 row created.

SQL> ed employsql.sql

 select * from employsql;

       ENO ENAME DGN             SAL     DEPTNO
---------- ----- -------- ---------- ----------
      1010 sree  mngr          50000         12
      1011 reema engineer      25000         13
      1013 anjna tester        25000         14
      1013 anjna tester        25000         14
      1013 anjna tester        25000         14
