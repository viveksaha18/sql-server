USE [OperatorDB]
GO

Create Procedure Select_tbl_Operator_SP
As

SELECT [id]
      ,[name]
      ,[marks]
      ,[course]
  FROM [dbo].[tbl_Operator]

GO


-- How to use it 
-- Exec Select_tbl_Operator_SP