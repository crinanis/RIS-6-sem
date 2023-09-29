select * from V$CONTAINERS;

alter session set container=pdborcl;

drop user U2_TAA_PDB_2 ;

create user U2_TAA_PDB identified by 1111;

grant connect to U2_TAA_PDB_2;
grant all privileges to U2_TAA_PDB_2; 
GRANT CREATE DATABASE LINK TO U2_TAA_PDB_2;
GRANT CREATE PUBLIC DATABASE LINK TO U2_TAA_PDB_2;



CREATE DATABASE LINK U1_TAA_LINK_2 CONNECT TO U1_TAA_PDB_1 IDENTIFIED BY password
USING '(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=DESKTOP-LIKKU38)(PORT=1521))(CONNECT_DATA=(SERVICE_NAME=orcl)))';
 

CREATE DATABASE LINK U1_TAA_LINK CONNECT TO U1_TAA_PDB_1 IDENTIFIED BY "1111" 
USING '(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=DESKTOP-LIKKU38)(PORT=1521))(CONNECT_DATA=(SERVICE_NAME=orcl)))';
            
drop database link U1_TAA_LINK;
            
select * from TAACORERIS@U1_TAA_LINK;

select * from TAACORERIS@U1_TAA_LINK_2;

------------------------------
create table TAACORERIS(
  x int primary key
);
 insert into TAACORERIS values(5);
 select * from TAACORERIS;
 commit;

 insert into TAACORERIS values(5);
commit


drop database link U1_TAA_LINK;

CREATE DATABASE LINK U1_TAA_LINK
    CONNECT TO U1 IDENTIFIED BY "1111"
    USING '(DESCRIPTION=
                (ADDRESS=(PROTOCOL=TCP)(HOST=10.0.2.4)(PORT=1521))
                (CONNECT_DATA=(SERVICE_NAME=ORCL))
            )';

  
select * from taacorepis@U1_TAA_LINK;

insert into taacorepis@U1_TAA_LINK values (2);



