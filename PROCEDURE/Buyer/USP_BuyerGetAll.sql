USE [Donne]
GO

/****** Object:  StoredProcedure [dbo].[USP_BuyerGetAll]    Script Date: 18/10/2023 06:47:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[USP_BuyerGetAll] 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * 
		FROM Buyer
			ORDER BY BuyerName ASC;
END
GO
