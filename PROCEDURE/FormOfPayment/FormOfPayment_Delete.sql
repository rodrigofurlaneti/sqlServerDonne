USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_Donne_FormOfPayment_Delete] (@FormOfPaymentId INT)
AS
BEGIN
	DELETE FROM Donne_FormOfPayment
		WHERE FormOfPaymentId = @FormOfPaymentId
	SET NOCOUNT ON;
END
GO


