USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_Donne_FormOfPayment_GetById] (@FormOfPaymentId INT)
AS
BEGIN
	SELECT TOP 1 * 
		FROM Donne_FormOfPayment
			WHERE FormOfPaymentId = @FormOfPaymentId;
	SET NOCOUNT ON;
END
GO