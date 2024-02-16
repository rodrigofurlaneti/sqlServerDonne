USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_Donne_Authentication_GetById] (@Id INT)
AS
BEGIN
	SELECT TOP 1 * 
		FROM [dbo].[Donne_Authentication]
			WHERE Id = @Id;
	SET NOCOUNT ON;
END
GO