USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_BuyerInsert] (	@BuyerName VARCHAR(50),
											@BuyerPhone VARCHAR(50),
											@BuyerAddress VARCHAR(100),
											@DateInsert DATETIME,
											@DateUpdate DATETIME,
											@UserId INT,
											@UserName VARCHAR(150))

AS
BEGIN
	INSERT INTO Buyer	(BuyerName, 
						BuyerPhone, 
						BuyerAddress,
						DateInsert,
						DateUpdate,
						UserId,
						UserName,
						Status)
            VALUES	(@BuyerName, 
					@BuyerPhone, 
					@BuyerAddress,
					@DateInsert,
					@DateUpdate,
					@UserId,
					@UserName,
					0)
	SET NOCOUNT ON;
END
GO
