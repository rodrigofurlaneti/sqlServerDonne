USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_UserGetAll] 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM [dbo].[User];
END
GO


