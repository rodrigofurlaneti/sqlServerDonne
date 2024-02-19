USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_Donne_Product_Insert] (@ProductName VARCHAR(150),
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
	INSERT INTO Donne_Product
                        (ProductName,
                         CategoryId,
                         CategoryName,
                         CostPrice,
						 SalePrice,
						 QuantityStock,
						 MinimumStockQuantity,
						 TotalValueCostOfInventory,
						 TotalValueSaleStock,
						 DateInsert,
						 DateUpdate,
						 NeedToPrint,
                         UserId,
                         UserName,
  						 Status,
						 QuantityToBuy,
						 TotalValueOfLastPurchase)
            VALUES     ( @ProductName,
                         @CategoryId,
                         @CategoryName,
                         CONVERT(decimal(11,2), @CostPrice),
                         CONVERT(decimal(11,2), @SalePrice),
						 @QuantityStock,
						 @MinimumStockQuantity,
						 CONVERT(decimal(11,2), @TotalValueCostOfInventory),
						 CONVERT(decimal(11,2), @TotalValueSaleStock),
						 @DateInsert,
						 @DateUpdate,
						 @NeedToPrint,
						@UserId,
						@UserName,
						@Status,
						@QuantityToBuy,
						CONVERT(decimal(11,2), @TotalValueOfLastPurchase))
	SET NOCOUNT ON;
END
GO