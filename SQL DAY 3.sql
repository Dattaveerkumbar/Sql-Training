CREATE DATABASE FERK;

USE FERK;

CREATE TABLE MGHK(
EID INT PRIMARY KEY,
ESALARY MONEY,
ENAME VARCHAR (40),
EDESIGNATION VARCHAR(50),
)

INSERT INTO MGHK VALUES(1,'1100','VEER','DEVELOPER')

INSERT INTO MGHK VALUES(2,'1101','CHANNAVEER','TEST ENGINEER')

INSERT INTO MGHK VALUES(3,'1102','SOUMYA','AUTOMATION ENGINEER')

INSERT INTO MGHK VALUES(4,'1103','SUDHA','TEST ENGINEER')

INSERT INTO MGHK VALUES(5,'1104','SAGAR','DEVELOPER')

SELECT * FROM MGHK


select * from MGHK
select avg(ESalary) as 'Average Salary' from MGHK
select min(ESalary) as 'Minimum Salary' from MGHK
select max(ESalary) as 'Maximum Salary' from MGHK
select count(ESalary) as 'Count Salary' from MGHK
select sum(ESalary) as 'Sum Salary' from MGHK


select avg(ESalary) as 'Average Salary',EDESIGNATION from MGHK where Edesignation='Developer'


select avg(ESalary) as 'Average Salary',Edesignation from MGHK group by EDesignation


select avg(ESalary) as 'Average Salary',Edesignation from MGHK group by EDesignation having Edesignation='Developer'

select * from MGHK order by Esalary 
select * from MGHK order by Esalary desc

select * from MGHK order by Esalary desc,Eid desc


create synonym e3 for MGHK
select * from MGHK
select * from e3

drop synonym if exists e1
DROP SYNONYM IF EXISTS E3

create table BTVP1
(
SID int primary key,
SName varchar(25) not null,
SDept int not null,
SClub int not null,
)

INSERT INTO BTVP1 VALUES (8,'VEER1',1,102)

INSERT INTO BTVP1 VALUES (9,'MHJK',2,104)

INSERT INTO BTVP1 VALUES (10,'ABC',3,106)

INSERT INTO BTVP1 VALUES (11,'REDK',4,108)

INSERT INTO BTVP1 VALUES (12,'SRKH',3,109)

INSERT INTO BTVP1 VALUES (13,'SRTY',105,103)

create table GND
(
DID int primary key,
DeptName varchar(25) not null
)
INSERT INTO GND VALUES (6,'1')

INSERT INTO GND VALUES (7,'2')

INSERT INTO GND VALUES (8,'3')

INSERT INTO GND VALUES (9,'4')

INSERT INTO GND VALUES (10,'5')

create table PDA
(
CID int primary key,
ClubName varchar(25) not null
)
INSERT INTO PDA VALUES (6,'1')

INSERT INTO PDA VALUES (8,'2')

INSERT INTO PDA VALUES (9,'2')

INSERT INTO PDA VALUES (10,'3')

INSERT INTO PDA VALUES (7,'4')

select * from BTVP1
select * from GND
 
select SID,SName,SDept,DeptName from BTVP1 inner join GND on SDept=DID

select BTVP1.SID,BTVP1.SName,BTVP1.SDept,GND.DeptName from BTVP1 inner join GND on BTVP1.SDept=GND.DID

select * from GND

select s.SID,s.SName,s.SClub,s.SDept,d.DeptName from BTVP1 as s inner join GND as d on s.SDept=d.DID

select * from PDA

select s.SID,s.SName,s.SDept,d.DeptName,c.ClubName,s.SClub from BTVP1 as s inner join GND as d on s.SDept=d.DID inner join PDA as c on s.SClub=c.CID


select s.SID,s.SName,s.SClub,s.SDept,d.DeptName from BTVP1 as s inner join GND as d on s.SDept=d.DID
select s.SID,s.SName,s.SClub,s.SDept,d.DeptName from BTVP1 as s left join GND as d on s.SDept=d.DID
select s.SID,s.SName,s.SClub,s.SDept,d.DeptName from BTVP1 as s right join GND as d on s.SDept=d.DID
select s.SID,s.SName,s.SClub,s.SDept,d.DeptName from BTVP1 as s full join GND as d on s.SDept=d.DID

select s.SID,s.SName,s.SDept,d.DeptName,c.ClubName,s.SClub from BTVP1 as s left join GND as d on s.SDept=d.DID full join PDA as c on s.SClub=c.CID


create table srp
(
id int primary key IDENTITY(2,2),
name varchar(20)
)
insert into srp values('Sam')

insert into srp values('jam')
select * from srp


create sequence mgr as INT start with 3 increment by 4
create table srep
(
id int primary key ,
name varchar(20)
)
insert into srep values(NEXT VALUE FOR mgr,'Peter')
select * from srep
insert into srep values(NEXT VALUE FOR mgr,'Paul')
insert into srep values(NEXT VALUE FOR mgr,'John')

alter sequence mgr restart with 1 increment by 4
create table sdr
(
id int primary key ,
name varchar(20)
)
insert into sdr values(NEXT VALUE FOR mgr,'Peter')
select * from sdr
insert into sdr values(NEXT VALUE FOR mgr,'Paul')
insert into sdr values(NEXT VALUE FOR mgr,'John')


select NEXT VALUE FOR mgr


select * from BTVP1

create view Spr
as 
select * from BTVP1 where SClub=2

select * from SpR


create view stD
as
select s.SID,s.SName,s.SClub,s.SDept,d.DeptName from BTVP1 as s inner join GND as d on s.SDept=d.DID

select * from stD
