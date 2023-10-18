USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_ProductUpdate] (@ProductId INT,
									@ProductName VARCHAR(150),
									@CategoryId INT,
									@CategoryName VARCHAR(150),
									@CostPrice VARCHAR(50),
									@SalePrice VARCHAR(50),
									@QuantityStock INT,
									@MinimumStockQuantity INT,
									@TotalValueCostOfInventory VARCHAR(50),
									@TotalValueSaleStock VARCHAR(50),
									@DateInsert DATETIME,
									@DateUpdate DATETIME,
									@NeedToPrint BIT,
									@UserId INT,
									@UserName VARCHAR(150),
									@Status BIT)

AS
BEGIN
	UPDATE Product
    SET ProductName = @ProductName,
		CategoryId = @CategoryId,
        CategoryName = @CategoryName,
        CostPrice = @CostPrice,
		SalePrice = @SalePrice,
		QuantityStock = @QuantityStock,
		MinimumStockQuantity = @MinimumStockQuantity,
		TotalValueCostOfInventory = @TotalValueCostOfInventory,
		TotalValueSaleStock = @TotalValueSaleStock,
		DateInsert = @DateInsert,
		DateUpdate = @DateUpdate,
		NeedToPrint = @NeedToPrint,
		UserId = @UserId,
		UserName = @UserName,
		Status = @Status
			WHERE ProductId = @ProductId
	SET NOCOUNT ON;
END
GO


