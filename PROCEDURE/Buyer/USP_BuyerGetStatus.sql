USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_BuyerGetStatus] (@Status BIT)
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * 
		FROM Buyer
			WHERE Status = @Status
			ORDER BY BuyerName ASC;
END
GO