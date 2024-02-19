USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_Donne_Product_Update] (@ProductId INT,
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
									@NeedToPrint INT,
									@UserId INT,
									@UserName VARCHAR(150),
									@Status INT,
									@QuantityToBuy INT,
									@TotalValueOfLastPurchase VARCHAR(50))

AS
BEGIN
	UPDATE Donne_Product
    SET ProductName = @ProductName,
		CategoryId = @CategoryId,
        CategoryName = @CategoryName,
        CostPrice = CONVERT(decimal(11,2), @CostPrice),
		SalePrice = CONVERT(decimal(11,2), @SalePrice),
		QuantityStock = @QuantityStock,
		MinimumStockQuantity = @MinimumStockQuantity,
		TotalValueCostOfInventory = CONVERT(decimal(11,2), @TotalValueCostOfInventory),
		TotalValueSaleStock = CONVERT(decimal(11,2), @TotalValueSaleStock),
		DateInsert = @DateInsert,
		DateUpdate = @DateUpdate,
		NeedToPrint = @NeedToPrint,
		UserId = @UserId,
		UserName = @UserName,
		Status = @Status,
		QuantityToBuy = @QuantityToBuy,
		TotalValueOfLastPurchase = CONVERT(decimal(11,2), @TotalValueOfLastPurchase)
			WHERE ProductId = @ProductId
	SET NOCOUNT ON;
END
GO