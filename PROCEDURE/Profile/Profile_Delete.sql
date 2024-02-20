USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_Donne_Profile_Delete] (@ProfileId INT)
AS
BEGIN
	DELETE FROM [dbo].[Donne_Profile]
		WHERE ProfileId = @ProfileId
	SET NOCOUNT ON;
END
GO