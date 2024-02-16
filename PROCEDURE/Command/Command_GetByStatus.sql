USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_Donne_Command_GetByStatus] (@Status INT)
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	COM.CommandId,
			BUY.BuyerName
		FROM Donne_Buyer AS BUY
			INNER JOIN Donne_Command AS COM
				ON BUY.BuyerId = COM.BuyerId
					WHERE COM.Status = @Status
END
GO
