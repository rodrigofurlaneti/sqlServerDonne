USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_PaymentDelete] (@PaymentId INT)
AS
BEGIN
	DELETE FROM Payment
		WHERE PaymentId = @PaymentId
	SET NOCOUNT ON;
END
GO

