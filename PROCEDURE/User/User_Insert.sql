USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_Donne_User_Insert] (@UserName VARCHAR(50),
										  @UserPassword VARCHAR(50),
										  @ProfileId INT,
										  @ProfileName VARCHAR(50),
										  @Status INT)
AS
BEGIN
	INSERT INTO [dbo].[Donne_User] (UserName, UserPassword, ProfileId, ProfileName, Status)
            VALUES     (@UserName, @UserPassword, @ProfileId, @ProfileName, @Status)
	SET NOCOUNT ON;
END
GO