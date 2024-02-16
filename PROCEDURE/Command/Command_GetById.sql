USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_Donne_Command_GetById] (@CommandId INT)
AS
BEGIN
	SELECT TOP 1 * 
		FROM Donne_Command
			WHERE Status = 1 AND CommandId = @CommandId
				ORDER BY CommandId ASC
	SET NOCOUNT ON;
END
GO