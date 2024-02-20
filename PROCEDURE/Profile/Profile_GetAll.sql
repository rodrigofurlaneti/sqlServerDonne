USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_Donne_Profile_GetAll] 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT *
		FROM [dbo].[Donne_Profile]
			ORDER BY ProfileName ASC;
END
GO