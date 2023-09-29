select * from V$CONTAINERS;

create user U1_TAA_PDB_1 identified by 1111 container=current;
grant connect to U1_TAA_PDB_1;
grant all privileges to U1_TAA_PDB_1; 
GRANT CREATE DATABASE LINK TO U1_TAA_PDB_1;
GRANT CREATE PUBLIC DATABASE LINK TO U1_TAA_PDB_1;

create user U2_TAA_PDB identified by 1111 container=current;
grant connect to U2_TAA_PDB;
grant all privileges to U2_TAA_PDB; 
GRANT CREATE DATABASE LINK TO U2_TAA_PDB;
GRANT CREATE PUBLIC DATABASE LINK TO U2_TAA_PDB;




CREATE DATABASE LINK U1_TAA_LINK
    CONNECT TO U1_TAA_PDB_1 IDENTIFIED BY 1111
    USING '(DESCRIPTION=
                (ADDRESS=(PROTOCOL=TCP)(HOST=10.0.2.4)(PORT=1521))
                (CONNECT_DATA=(SERVICE_NAME=orcl))
            )';
            
CREATE DATABASE LINK U2_TAA_LINK
    CONNECT TO U2_TAA_PDB_2 IDENTIFIED BY 1111
    USING '(DESCRIPTION=
                (ADDRESS=(PROTOCOL=TCP)(HOST=10.0.2.5)(PORT=1521))
                (CONNECT_DATA=(SERVICE_NAME=orcl))
            )';




------------------------------
create table TAACORERIS(
  x int primary key
);
 insert into TAACORERIS values(5);
 select * from TAACORERIS;
 commit;

 insert into TAACORERIS values(5);
commit


grant connect to u1;
grant all privileges to u1;
GRANT CREATE DATABASE LINK TO u1;
GRANT CREATE PUBLIC DATABASE LINK TO u1;

