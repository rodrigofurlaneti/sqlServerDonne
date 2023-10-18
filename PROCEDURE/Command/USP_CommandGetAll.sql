USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_CommandGetAll] 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * 
		FROM Command
			WHERE Status = 1
			ORDER BY CommandId ASC;
END
GO
