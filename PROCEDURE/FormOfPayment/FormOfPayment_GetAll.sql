USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_Donne_FormOfPayment_GetAll] 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * 
		FROM Donne_FormOfPayment
			ORDER BY FormOfPaymentId ASC;
END
GO