USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_OrderUpdate] (@OrderId INT,
										 @CommandId INT,
										 @ProductId INT,
										 @ProductName VARCHAR(150),
										 @SalePrice VARCHAR(50),
										 @Amount INT,
										 @TotalSalePrice VARCHAR(50),
										 @DateInsert DATETIME,
										 @DateUpdate DATETIME,
										 @UserId INT,
										 @UserName VARCHAR(150))

AS
BEGIN
	UPDATE [dbo].[Order]
    SET CommandId = @CommandId,
		ProductId = @ProductId,
        ProductName = @ProductName,
		SalePrice = @SalePrice,
		Amount = @Amount,
		TotalSalePrice = @TotalSalePrice,
		DateInsert = @DateInsert,
		DateUpdate = @DateUpdate,
		UserId = @UserId,
		UserName = @UserName
			WHERE OrderId = @OrderId
	SET NOCOUNT ON;
END
GO


