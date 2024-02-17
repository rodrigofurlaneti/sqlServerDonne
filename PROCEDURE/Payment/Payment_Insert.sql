USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_Donne_Payment_Insert] (@CommandId INT,
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
--DECLARE @BuyerId INT = 0;
	INSERT INTO Donne_Payment (CommandId,
						FormOfPaymentId,
						FormOfPaymentName,
						PaymentAmount,
						PaymentType,
						DateInsert,
						DateUpdate,
						UserId,
						UserName)
            VALUES (@CommandId,
					@FormOfPaymentId,
					@FormOfPaymentName,
					@PaymentAmount,
					@PaymentType,
					@DateInsert,
					@DateUpdate,
					@UserId,
					@UserName)
	--IF @PaymentType='Total'
	--UPDATE Command
	--	SET DateUpdate = @DateUpdate,
	--		UserId = @UserId,
	--		UserName = @UserName,
	--		Status = 0
	--		WHERE CommandId = @CommandId;
	--SET @BuyerId = (SELECT BuyerId 
	--					FROM Command 
	--						WHERE CommandId = @CommandId);
	--UPDATE Buyer
	--	SET DateUpdate = @DateUpdate,
	--		UserId = @UserId,
	--		UserName = @UserName,
	--		Status = 0
	--		WHERE BuyerId = @BuyerId
	
	SET NOCOUNT ON;
END
GO