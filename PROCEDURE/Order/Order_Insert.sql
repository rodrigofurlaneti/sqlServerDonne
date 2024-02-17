USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_Donne_Order_Insert] (	@CommandId INT,
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
	INSERT INTO [dbo].[Donne_Order]	(CommandId,
								ProductId, 
								ProductName,
								BuyerName,
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
					@BuyerName,
					CONVERT(decimal(11,2), @SalePrice),
					@Amount,
					CONVERT(decimal(11,2), @TotalSalePrice),
					@DateInsert,
					@DateUpdate,
					@UserId,
					@UserName)

	SET NOCOUNT ON;
END
GO