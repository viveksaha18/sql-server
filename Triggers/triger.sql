--Trigger

CREATE TABLE Employee_Test
(
Emp_ID INT Identity,
Emp_name Varchar(100),
Emp_Sal Decimal (10,2)
)

INSERT INTO Employee_Test VALUES ('Anees',1000);
INSERT INTO Employee_Test VALUES ('Rick',1200);
INSERT INTO Employee_Test VALUES ('John',1100);
INSERT INTO Employee_Test VALUES ('Stephen',1300);
INSERT INTO Employee_Test VALUES ('Maria',1400);

CREATE TABLE Employee_Test_Audit
(
Emp_ID int,
Emp_name varchar(100),
Emp_Sal decimal (10,2),
Audit_Action varchar(100),
Audit_Timestamp datetime,
Audit_Name varchar(50)
)

select * from Employee_Test
select * from Employee_Test_Audit

CREATE TRIGGER trgInsertMira ON [dbo].[Employee_Test] 
FOR INSERT
AS
	declare @empid int;
	declare @empname varchar(100);
	declare @empsal decimal(10,2);
	declare @audit_action varchar(100);

	select @empid=i.Emp_ID from inserted i;	
	select @empname=i.Emp_Name from inserted i;	
	select @empsal=i.Emp_Sal from inserted i;	
	set @audit_action='Inserted Record -- After Insert Trigger Mira.';

	insert into Employee_Test_Audit
           (Emp_ID,Emp_Name,Emp_Sal,Audit_Action,Audit_Timestamp,Audit_Name) 
	values(@empid,@empname,@empsal,@audit_action,getdate(),'OmmPrakash');

	PRINT 'AFTER INSERT trigger fired.'
GO

insert into Employee_Test values('Rakesk',1500);
insert into Employee_Test values('Ommkar',1500);
insert into Employee_Test values('Sangeetha',1500);
insert into Employee_Test values('Suchismita',1500);
insert into Employee_Test values('Lissa',1500);
insert into Employee_Test values('Prakash',1500);
insert into Employee_Test values('Debasish',1500);
insert into Employee_Test values('Ram',1500);


select * from Employee_Test
select * from Employee_Test_Audit


CREATE TRIGGER trgUpdateMira ON [dbo].[Employee_Test] 
FOR UPDATE
AS
	declare @empid int;
	declare @empname varchar(100);
	declare @empsal decimal(10,2);
	declare @audit_action varchar(100);

	select @empid=i.Emp_ID from inserted i;	
	select @empname=i.Emp_Name from inserted i;	
	select @empsal=i.Emp_Sal from inserted i;	
	
	if update(Emp_Name)
		set @audit_action='Updated Record -- After Update Trigger Anusha.';
	if update(Emp_Sal)
		set @audit_action='Updated Record -- After Update Trigger Anusha.';

	insert into Employee_Test_Audit(Emp_ID,Emp_Name,Emp_Sal,Audit_Action,Audit_Timestamp,Audit_Name) 
	values(@empid,@empname,@empsal,@audit_action,getdate(),'Satyajit');

	PRINT 'AFTER UPDATE Trigger fired.'
GO

Select * from Employee_Test
Select * from Employee_Test_Audit
begin Tran
update Employee_Test set Emp_Sal=500 where Emp_ID=8

Rollback Tran

select * from Employee_Test
select * from Employee_Test_Audit


CREATE TRIGGER trgDeleteMira ON [dbo].[Employee_Test] 
AFTER DELETE
AS
	declare @empid int;
	declare @empname varchar(100);
	declare @empsal decimal(10,2);
	declare @audit_action varchar(100);

	select @empid=d.Emp_ID from deleted d;	
	select @empname=d.Emp_Name from deleted d;	
	select @empsal=d.Emp_Sal from deleted d;	
	set @audit_action='Deleted -- After Delete Trigger.';

	insert into Employee_Test_Audit
(Emp_ID,Emp_Name,Emp_Sal,Audit_Action,Audit_Timestamp,Audit_Name) 
	values(@empid,@empname,@empsal,@audit_action,getdate(),'Mira');

	PRINT 'AFTER DELETE TRIGGER fired.'
GO

delete from Employee_Test where Emp_ID=12

select * from Employee_Test
select * from Employee_Test_Audit