USE [OperatorDB]
GO

Create Procedure Update_tbl_Operator_SP
@name varchar(30),
@marks int,
@course varchar(10),
@id int 
As

UPDATE [dbo].[tbl_Operator]
   SET name = @name, 
	   marks = @marks,
       course = @course
 WHERE id = @id
GO


-- How to use it 
-- Exec Update_tbl_Operator_SP 'Vivek Saha', 400, 'CS', 1