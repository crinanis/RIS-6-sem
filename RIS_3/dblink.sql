
select * from v$containers;

ALTER PLUGGABLE DATABASE PDBORCL OPEN READ WRITE;
ALTER PLUGGABLE DATABASE PDB_A OPEN READ WRITE;


alter session set container=PDBORCL;

alter session set container=CDB$ROOT;

alter session set container=PDB_A;


drop user U1_TAA_PDB_1;

create user U1_TAA_PDB_1 identified by 1111;

grant connect to U1_TAA_PDB_1;
grant all privileges to U1_TAA_PDB_1; 
GRANT CREATE DATABASE LINK TO U1_TAA_PDB_1;
GRANT CREATE PUBLIC DATABASE LINK TO U1_TAA_PDB_1;

create user U2_TAA_PDB identified by 1111;
grant connect to U2_TAA_PDB;
grant all privileges to U2_TAA_PDB; 
GRANT CREATE DATABASE LINK TO U2_TAA_PDB;
GRANT CREATE PUBLIC DATABASE LINK TO U2_TAA_PDB;


CREATE DATABASE LINK U2_TAA_LINK
    CONNECT TO U2_TAA_PDB IDENTIFIED BY 1111
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



alter session set container=pdborcl;

create table TAACORERIS (
  x int primary key
);

select * from TAACORERIS;

create user U1_TAA_PDB_1 identified by 1111 container=current;
grant connect to U1_TAA_PDB_1;
grant all privileges to U1_TAA_PDB_1; 
GRANT CREATE DATABASE LINK TO U1_TAA_PDB_1;
GRANT CREATE PUBLIC DATABASE LINK TO U1_TAA_PDB_1;


 alter session set "_ORACLE_SCRIPT"=true;

select * from taacoreris;

create table taacorepis (
  x int primary key
);

commit;






