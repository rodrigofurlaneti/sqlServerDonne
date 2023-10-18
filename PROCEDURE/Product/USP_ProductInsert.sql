USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_ProductInsert] (@ProductName VARCHAR(150),
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
	INSERT INTO Product
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
  					 Status)
            VALUES     ( @ProductName,
                         @CategoryId,
                         @CategoryName,
                         @CostPrice,
                         @SalePrice,
						 @QuantityStock,
						 @MinimumStockQuantity,
						 CONVERT(decimal(11,2), @TotalValueCostOfInventory),
						 CONVERT(decimal(11,2), @TotalValueSaleStock),
						 @DateInsert,
						 @DateUpdate,
						 @NeedToPrint,
						@UserId,
						@UserName,
						@Status)
	SET NOCOUNT ON;
END
GO


