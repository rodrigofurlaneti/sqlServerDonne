USE [Donne]
GO

/****** Object:  StoredProcedure [dbo].[USP_CommandGetByStatus]    Script Date: 18/10/2023 07:05:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_CommandGetByStatus] (@Status BIT)
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	COM.CommandId,
			BUY.BuyerName
		FROM Buyer AS BUY
			INNER JOIN Command AS COM
				ON BUY.BuyerId = COM.BuyerId
					WHERE COM.Status = @Status
END
GO
