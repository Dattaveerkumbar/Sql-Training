create database brook
use brook


create table employees
(
EID INT PRIMARY KEY,
ENAME VARCHAR(20) NOT NULL,
EDESIGNATION VARCHAR(20) NOT NULL
)

insert into employees values(1,'jack','Admin')

select * from employees

insert into employees(EID,ENAME,EDESIGNATION) values(3,'mer','testlead')

select * from edetails

insert into edetails(EID,ENAME) values(9,'rosy')

create table ertk
(
id int not null,
name varchar(25) not null,
salary int not null
)


alter table ertk add constraint pk_idname PRIMARY KEY(ID,NAME)

insert into ertk values(3,'Jackk',25000)

select * from ertk


create table mcrk
(
ID int Primary key,
Name varchar(25) UNIQUE NOT NULL,
dob datetime NOT NULL CHECK(dob <= CURRENT_TIMESTAMP),
age int NOT NULL CHECK(age >= 18),
designation varchar(25) DEFAULT 'self-employeed'
)

insert into mcrk values(1,'John','2022-04-05 12:12:12',22,'IT Employee')
insert into mcrk values(2,'Jancy','2022-04-05 12:12:12',22,'IT Employee')
insert into mcrk values(3,'Peter','2022-04-05 12:12:12.57',22,'IT Employee')
insert into mcrk (id,name,dob,age) values(4,'Paul','2001-01-07 12:12:12.567',22)

select * from mcrk


create table dmg
(
did int PRIMARY KEY,
dname varchar(20) NOT NULL
)

insert into dmg values(1,'Admin')
insert into dmg values(2,'Developer')
insert into dmg values(3,'Designer')
insert into dmg values(4,'Tester')

select * from dmg
delete from dmg where did=3
update dmg set did=1001 where did=1

create table empyyy
(
eid int PRIMARY KEY,
ename varchar(25) NOT NULL,
salary MONEY,
dno int FOREIGN KEY REFERENCES dmg(did)
)

insert into empyyy values(10,'srk',25333,2)
insert into empyyy values(11,'cba',26100,4)
insert into empyyy values(12,'mgh',27000,2)
insert into empyyy values(13,'mac',28500,4)

select * from empyyy



create table p1
(
pid int primary key,
pname varchar(20) not null
)


insert into p1 values(1,'p23')
insert into p1 values(2,'p24')
insert into p1 values(3,'p35')

create table c1
(
cid int primary key,
cname varchar(20) not null,
pno int foreign key references p1(pid) on delete cascade on update cascade
)
insert into c1 values(100,'zk1',1)
insert into c1 values(101,'zk2',2)
insert into c1 values(102,'zk3',1)
insert into c1 values(103,'zk4',3)

select * from c1

update p1 set pid=10 where pid=1

select * from p1

select * from c1

delete from p1 where pid=10


alter table c1 drop constraint FK__c1__pno__2A6B46EF

alter table c1 add constraint FK__c1__pno foreign key(pno) references p1(pid) on delete set null on update set null

update p1 set pid=1 where pid=10
select * from p1
select * from c1
delete from p1 where pid=2



create table c2
(
cid int primary key,
cname varchar(20) not null,
pno int default 1 foreign key references p1(pid) on delete set default on update set default
)
insert into c2 values(123,'c21',3)
insert into c2 values(124,'c22',3)
insert into c2 values(126,'c24',3)

update p1 set pid=20 where pid=3
select * from p1
select * from c1
delete from p1 where pid=3