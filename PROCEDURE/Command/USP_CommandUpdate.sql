USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_CommandUpdate] (@CommandId INT,
									@BuyerId INT,
									@BuyerName VARCHAR(150),
									@DateInsert DATETIME,
									@DateUpdate DATETIME,
									@UserId INT,
									@UserName VARCHAR(150),
									@Status BIT)
	AS
		BEGIN
			UPDATE Command
			SET BuyerId = @BuyerId,
				BuyerName = @BuyerName,
				DateInsert = @DateInsert,
				DateUpdate = @DateUpdate,
				UserId = @UserId,
				UserName = @UserName,
				Status = @Status
					WHERE CommandId = @CommandId
			SET NOCOUNT ON;
		END
GO


