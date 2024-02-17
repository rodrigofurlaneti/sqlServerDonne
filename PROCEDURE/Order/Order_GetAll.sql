USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_Donne_Order_GetAll] 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT ORD.OrderId,
			ORD.CommandId,
			ORD.ProductId,
			ORD.ProductName,
			ORD.BuyerName,
			ORD.SalePrice,
			ORD.Amount,
			ORD.TotalSalePrice,
			ORD.DateInsert,
			ORD.DateUpdate,
			ORD.UserId,
			ORD.UserName
		FROM [dbo].[Donne_Order] AS ORD
END
GO