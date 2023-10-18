USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_FormOfPaymentGetById] (@FormOfPaymentId INT)
AS
BEGIN
	SELECT TOP 1 * 
		FROM FormOfPayment
			WHERE FormOfPaymentId = @FormOfPaymentId;
	SET NOCOUNT ON;
END
GO
