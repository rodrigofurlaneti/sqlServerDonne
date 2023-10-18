USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_CommandOrdersById] (@CommandId INT)
AS
BEGIN
	SELECT	ORD.CommandId,
			COM.BuyerId,
			COM.BuyerName,
			ORD.ProductId,
			ORD.ProductName,
			ORD.SalePrice,
			ORD.Amount,
			ORD.TotalSalePrice
				FROM [dbo].[Command] AS COM
				INNER JOIN [dbo].[Order] AS ORD
					ON COM.CommandId = ORD.CommandId
						WHERE COM.CommandId = @CommandId;
	SET NOCOUNT ON;
END
GO


