USE [OperatorDB]
GO
Create Procedure Delete_tbl_Operator_SP
@id int
As
DELETE FROM [dbo].[tbl_Operator]
      WHERE id = @id
GO


-- How to use it
-- Exec Delete_tbl_Operator_SP 1