USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_Donne_Payment_Update] (@PaymentId INT,
										@CommandId INT,
										@FormOfPaymentId INT,
										@FormOfPaymentName VARCHAR(50),
										@PaymentAmount VARCHAR(50),
										@PaymentType VARCHAR(50),
										@DateInsert DATETIME,
										@DateUpdate DATETIME,
										@UserId INT,
										@UserName VARCHAR(150))
	AS
		BEGIN
			UPDATE Donne_Payment
			SET CommandId = @CommandId,
				FormOfPaymentId = @FormOfPaymentId,
				FormOfPaymentName = @FormOfPaymentName,
				PaymentAmount = @PaymentAmount,
				PaymentType = PaymentType,
				DateInsert = @DateInsert,
				DateUpdate = @DateUpdate,
				UserId = @UserId,
				UserName = @UserName
					WHERE PaymentId = @PaymentId
			SET NOCOUNT ON;
		END
GO