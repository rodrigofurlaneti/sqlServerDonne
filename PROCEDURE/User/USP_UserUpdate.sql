USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_UserUpdate]   (@UserId INT,
											@UserName VARCHAR(50),
											@UserPassword VARCHAR(50),
											@ProfileId INT,
											@ProfileName VARCHAR(50),
											@Status BIT)

AS
BEGIN
	UPDATE [dbo].[User]
    SET UserName = @UserName,
		UserPassword = @UserPassword,
		ProfileId = @ProfileId,
		ProfileName = @ProfileName,
		Status = @Status
        WHERE UserId = @UserId
	SET NOCOUNT ON;
END
GO


