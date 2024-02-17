USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_Donne_Order_Update] (@OrderId INT,
										 @CommandId INT,
										 @ProductId INT,
										 @ProductName VARCHAR(150),
										 @BuyerName VARCHAR(50),
										 @SalePrice VARCHAR(50),
										 @Amount INT,
										 @TotalSalePrice VARCHAR(50),
										 @DateInsert DATETIME,
										 @DateUpdate DATETIME,
										 @UserId INT,
										 @UserName VARCHAR(150))

AS
BEGIN
	UPDATE [dbo].[Donne_Order]
    SET CommandId = @CommandId,
		ProductId = @ProductId,
        ProductName = @ProductName,
		BuyerName = @BuyerName,
		SalePrice = CONVERT(decimal(11,2),@SalePrice),
		Amount = @Amount,
		TotalSalePrice = CONVERT(decimal(11,2), @TotalSalePrice),
		DateInsert = @DateInsert,
		DateUpdate = @DateUpdate,
		UserId = @UserId,
		UserName = @UserName
			WHERE OrderId = @OrderId
	SET NOCOUNT ON;
END
GO