USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_Donne_Payment_Delete] (@PaymentId INT)
AS
BEGIN
	DELETE FROM Donne_Payment
		WHERE PaymentId = @PaymentId
	SET NOCOUNT ON;
END
GO