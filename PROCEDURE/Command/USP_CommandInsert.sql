USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_CommandInsert] (@BuyerId INT,
											@BuyerName VARCHAR(50),
											@DateInsert DATETIME,
											@DateUpdate DATETIME,
											@UserId INT,
											@UserName VARCHAR(150),
											@Status BIT)

AS
BEGIN
	INSERT INTO Command (BuyerId,
						 BuyerName,
						 DateInsert,
						 DateUpdate,
						 UserId,
						 UserName,
						 Status)
            VALUES (@BuyerId,
					@BuyerName,
					@DateInsert,
					@DateUpdate,
					@UserId,
					@UserName,
					1)
	UPDATE Buyer
		SET DateUpdate = @DateUpdate,
			UserId = @UserId,
			UserName = @UserName,
			Status = 1
			WHERE BuyerId = @BuyerId
	SET NOCOUNT ON;
END
GO


