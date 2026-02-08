USE [OperatorDB]
GO
Create Procedure Insert_tbl_Operator_SP
@name varchar(30),
@marks int,
@course varchar(10)
As
INSERT INTO [dbo].[tbl_Operator]
           ([name]
           ,[marks]
           ,[course])
     VALUES
           (@name,
           @marks, 
           @course)
GO


