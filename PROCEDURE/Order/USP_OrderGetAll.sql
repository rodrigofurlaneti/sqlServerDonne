USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[USP_OrderGetAll] 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT ORD.OrderId,
			ORD.CommandId,
			ORD.ProductId,
			ORD.ProductName,
			ORD.SalePrice,
			ORD.Amount,
			ORD.TotalSalePrice,
			ORD.DateInsert,
			ORD.DateUpdate,
			ORD.UserId,
			ORD.UserName
		FROM [dbo].[Order] AS ORD
END
GO



