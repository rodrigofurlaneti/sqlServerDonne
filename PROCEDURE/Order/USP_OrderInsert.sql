USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

  CREATE PROCEDURE [dbo].[USP_OrderInsert] (	@CommandId INT,
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
	INSERT INTO [dbo].[Order]	(CommandId,
								ProductId, 
								ProductName, 
								SalePrice,
								Amount,
								TotalSalePrice,
								DateInsert,
								DateUpdate,
								UserId,
								UserName)								
            VALUES	(@CommandId,
					@ProductId, 
					@ProductName, 
					@SalePrice,
					@Amount,
					@TotalSalePrice,
					@DateInsert,
					@DateUpdate,
					@UserId,
					@UserName)

	DECLARE @CategoriaId INT;
	SELECT @CategoriaId = (SELECT CategoryId FROM Product WHERE ProductId = @ProductId);

	DECLARE @CategoriaName VARCHAR(150);
	SELECT @CategoriaName = (SELECT CategoryName FROM Product WHERE ProductId = @ProductId);

	DECLARE @CostPrice VARCHAR(50);
	SELECT @CostPrice = (SELECT CostPrice FROM Product WHERE ProductId = @ProductId);

	DECLARE @QuantityStock INT;
	DECLARE @QuantityStockUpdate INT;
	SELECT @QuantityStock = (SELECT QuantityStock FROM Product WHERE ProductId = @ProductId);
	SET @QuantityStockUpdate = @QuantityStock - @Amount;

	DECLARE @MinimumStockQuantity INT;
	SELECT @MinimumStockQuantity = (SELECT MinimumStockQuantity FROM Product WHERE ProductId = @ProductId);

	DECLARE @TotalValueCostOfInventory VARCHAR(50);
	DECLARE @TotalValueCostOfInventoryUpdate  VARCHAR(50);
	DECLARE @TotalValueCostOfInventoryDiferenca  VARCHAR(50);
	SELECT @TotalValueCostOfInventory = (SELECT TotalValueCostOfInventory FROM Product WHERE ProductId = @ProductId);
	SET @TotalValueCostOfInventoryDiferenca = CONVERT(decimal(11,2),@CostPrice) * @Amount;
	SET @TotalValueCostOfInventoryUpdate = CONVERT(decimal(11,2), @TotalValueCostOfInventory) - CONVERT(decimal(11,2), @TotalValueCostOfInventoryDiferenca);

	DECLARE @TotalValueSaleStock VARCHAR(50);
	DECLARE @TotalValueSaleStockUpdate  VARCHAR(50);
	DECLARE @TotalValueSaleStockDiferenca  VARCHAR(50);
	SELECT @TotalValueSaleStock = (SELECT TotalValueSaleStock FROM Product WHERE ProductId = @ProductId);
	SET @TotalValueSaleStockDiferenca = CONVERT(decimal(11,2),@SalePrice) * @Amount;
	SET @TotalValueSaleStockUpdate = CONVERT(decimal(11,2), @TotalValueSaleStock) - CONVERT(decimal(11,2), @TotalValueSaleStockDiferenca);


	DECLARE @DateInsertProduct DATETIME;
	SELECT @DateInsertProduct = (SELECT DateInsert FROM Product WHERE ProductId = @ProductId);

	DECLARE @DateUpdateProduct DATETIME;
	SELECT @DateUpdateProduct = GETDATE();

	DECLARE @NeedToPrint BIT;
	SELECT @NeedToPrint = (SELECT NeedToPrint FROM Product WHERE ProductId = @ProductId);

	DECLARE @Status BIT;
	SELECT @Status = (SELECT Status FROM Product WHERE ProductId = @ProductId);

	EXECUTE USP_ProductUpdate @ProductId, @ProductName, @CategoriaId, @CategoriaName, @CostPrice, @SalePrice, 
	@QuantityStockUpdate, @MinimumStockQuantity, @TotalValueCostOfInventoryUpdate, @TotalValueSaleStockUpdate, 
	@DateInsertProduct,	@DateUpdateProduct, @NeedToPrint, @UserId, @UserName, @Status;


	SET NOCOUNT ON;
END
GO


