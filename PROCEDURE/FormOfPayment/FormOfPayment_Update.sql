USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_Donne_FormOfPayment_Update] (@FormOfPaymentId INT,
									@FormOfPaymentName VARCHAR(50),
									@DateInsert DATETIME,
									@DateUpdate DATETIME,
									@UserId INT,
									@UserName VARCHAR(150))
	AS
		BEGIN
			UPDATE Donne_FormOfPayment
			SET FormOfPaymentName = @FormOfPaymentName,
				DateInsert = @DateInsert,
				DateUpdate = @DateUpdate,
				UserId = @UserId,
				UserName = @UserName
					WHERE FormOfPaymentId = @FormOfPaymentId
			SET NOCOUNT ON;
		END
GO