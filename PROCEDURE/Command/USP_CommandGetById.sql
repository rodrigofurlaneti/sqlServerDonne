USE [Donne]
GO

/****** Object:  StoredProcedure [dbo].[USP_CommandGetById]    Script Date: 18/10/2023 07:04:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_CommandGetById] (@CommandId INT)
AS
BEGIN
	SELECT TOP 1 * 
		FROM Command
			WHERE CommandId = @CommandId;
	SET NOCOUNT ON;
END
GO
