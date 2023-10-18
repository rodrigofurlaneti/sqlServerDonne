USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_OrderGetAll] 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT ORD.OrderId,
			ORD.CommandId,
			COM.BuyerName,
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
		INNER JOIN [dbo].[Command] AS COM
		ON ORD.CommandId = COM.CommandId
END
GO


