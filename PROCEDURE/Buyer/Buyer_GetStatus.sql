USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_Donne_Buyer_GetStatus] (@Status BIT)
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * 
		FROM Donne_Buyer
			WHERE Status = @Status
			ORDER BY BuyerName ASC;
END
GO
