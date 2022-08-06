
create database hakuna

use hakuna


create table edetails
(
EID int,
EName varchar(25),
EContact varchar(25),
EDesignation varchar(27)
)


create view vrk as 
select Ename,EDesignation from edetails

select * from edetails


insert into edetails values(1,'abc','8565467890','testengineer')

insert into edetails values(2,'cba','6345678910','business analyst')

insert into edetails values(3,'mhj','9164442089','sales')

insert into edetails values(4,'jhm','8123567890','Developer')

insert into edetails values(5,'rfg','8234590234','ceo')

insert into edetails values(6,'mgf','8235678904','hr manager')

update edetails set EDesignation='HR TEAM' where EID=3

update edetails set EName='SIDDU' where EName='John'

delete from edetails where EID=6

create table facebook
(
id int,
desig varchar(10)
)

select * from facebook

alter table facebook add ename varchar(10)


alter table facebook add mb_numbr varchar(10)


alter table facebook drop column ename


insert into facebook values(1,'Developer','8123334567')


truncate table facebook


drop table facebook


create database school

use school


alter database school Modify Name=college


drop database college


create schema sql_devlopers


create table m1
(
id int
)


create table sql_devlopers.m1
(
id int
)

drop schema if exists sql_devlopers

drop table sql_devlopers.m1

drop schema if exists sql_devlopers

select * from edetails

delete from edetails where EID=5

select * from edetails

select EID,EName from edetails
--
select EID as empid,EName as 'Enam' from edetails

select * from edetails where EName='santu'


select * from edetails where EName='Santu' Collate SQL_Latin1_General_CP1_CS_AS;

alter table edetails add ESalary int

update edetails set ESalary=30000 where Ename='santu'


insert into edetails values(9,'Shiva',97878,'supportteam',45000)


insert into edetails values(10,'fbr',674566,'feildteam',45679)


select * from edetails where ESalary>21200

select * from edetails where ESalary<=100000

select * from edetails where ESalary=30000 AND Ename='santu'


select * from edetails where ESalary>25000 OR EDesignation='supportteam'


select * from edetails where ESalary between 40000 and 46000




select * from edetails WHERE Eid in (1,3,5)


select * from edetails WHERE Eid not in (1,3)


select * from edetails WHERE EDesignation in ('Developer','fieldteam')


select * from edetails WHERE EDesignation not in ('business analyst','supportteam')


select * from edetails where EName like 'a%'

select * from edetails where EName like '_h%'

select * from edetails where EName like '%r'

select * from edetails where EName like 'a__'

select * from edetails where EName like '[sj]%'

select * from edetails where EName not like '[sj]%'


select * from edetails where EName not like '[a-e]%'


Select EDesignation from edetails


Select DISTINCT EDesignation from edetails




