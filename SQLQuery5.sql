create database veer

use veer

create table mgrr
(
EID int,
EName varchar(15),
EContact varchar(10),
EDesignation varchar(15)
)

insert into mgrr values(1,'Peter','9876543212','Developer')
insert into mgrr values(2,'Paul','9876543712','Designer')
insert into mgrr values(3,'Sam','9872543212','Developer')
insert into mgrr values(4,'John','9876563212','Developer')
insert into mgrr values(5,'Jancy','9876143212','Designer')


select * from mgrr where eid=1


select * from mgrr

create clustered index ix_ei on mgrr(eid)

create index ix_ename on mgrr(ename)

create unique index ix_sname on mgrr(ename)

select * from mgrr where ename='John'

create index ix_vgk on mgrr(ename) where ename='John'




create table demo
(
id int,
name varchar(10)
)
select * from mgrr



CREATE TRIGGER tr_mgk
on demo
FOR INSERT
as
begin
	print 'You cannot insert data'
	rollback transaction 
end

drop trigger trg_insert

insert into demo values(4,'2/2/2000')

create trigger trg_dml
on demo
FOR INSERT,UPDATE,DELETE
as
begin
	print 'You cannot perform DML Operations'
	rollback transaction 
end

insert into demo values(5,'2/2/2000')

update demo set ID=6 where ID =5

delete from demo where ID =5

select * from demo

drop trigger trg_dml

disable trigger trg_dml on demo

enable trigger trg_dml on demo

select * from mgrr

alter trigger trg_dml
on mgrr
FOR INSERT,UPDATE,DELETE
as
begin
	if DATEPART(DW,GETDATE())=4
	begin
		print 'You cannot perform DML Operations on batch2'
		rollback transaction 
	end
end 

disable trigger trg__ml on mgrr
enable trigger trg_ml on mgrr

INSERT INTO mgrr VALUES(2,'Jancy',25000)

delete from mgrr where id=2


create trigger trg_inserted
on mgrr
for insert
as 
begin 
	 
end

select * from mgrr

insert into mgrr * from insertedch1 values(11,'Lee','79866989','Admin',)

select * from mgrr
INSERT INTO mgrr VALUES(3,'Jamie',25000)

create trigger trg_deleted
on mgrr
for delete
as 
begin 
	select * from deleted 
end

delete from mgrr where eid=4

create trigger trg_update
on mgrr
for update
as 
begin 
    select * from inserted
	select * from deleted 
end

update mgrr set ename='john' where eid=6


create trigger trg_ddl
on database
for CREATE_TABLE,ALTER_TABLE,DROP_TABLE
AS
	begin
		print 'You cannot perform DDL Operations on sqlbatch db'
		rollback transaction 
	end
	drop trigger trg_ml on ALL SERVER
    disable trigger trg_ddl on database


create table demo1
(
id int
)

drop table demo1

create trigger trg_server
on ALL SERVER
for CREATE_TABLE,ALTER_TABLE,DROP_TABLE
AS
	begin
		
	print "hii"
	end
	disable trigger trg_server on ALL server


select * from mgrr

BEGIN TRANSACTION
	insert into mgrr values(6,'Liam',67890765567,'admin') 
	SAVE TRANSACTION insert_stmt
	delete from mgrr where eid=3 
ROLLBACK TRANSACTION insert_stmt
COMMIT TRANSACTION

-
SET IMPLICIT_TRANSACTIONS OFF