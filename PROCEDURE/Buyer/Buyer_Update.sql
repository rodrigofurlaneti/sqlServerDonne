USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_Donne_Buyer_Update]	(@BuyerId INT,
											@BuyerName VARCHAR(50),
											@BuyerPhone VARCHAR(50),
											@BuyerAddress VARCHAR(100),
											@DateInsert DATETIME,
											@DateUpdate DATETIME,
											@UserId INT,
											@UserName VARCHAR(150),
											@Status INT)

AS
BEGIN
	UPDATE Donne_Buyer
		SET BuyerName = @BuyerName,
			BuyerPhone = @BuyerPhone,
			BuyerAddress = @BuyerAddress,
			DateInsert = @DateInsert,
			DateUpdate = @DateUpdate,
			UserId = @UserId,
			UserName = @UserName,
			Status = @Status
				WHERE BuyerId = @BuyerId
	SET NOCOUNT ON;
END
GO


