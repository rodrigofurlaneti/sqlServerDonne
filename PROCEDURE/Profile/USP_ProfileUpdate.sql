USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_ProfileUpdate] (@ProfileId INT,
												@ProfileName VARCHAR(50),
												@DateInsert DATETIME,
												@DateUpdate DATETIME,
												@UserId INT,
												@UserName VARCHAR(150))
AS
BEGIN
	UPDATE [dbo].[Profile]
    SET ProfileName = @ProfileName,
		DateInsert = @DateInsert,
		DateUpdate = @DateUpdate,
		UserId = @UserId,
		UserName = @UserName
        WHERE ProfileId = @ProfileId
	SET NOCOUNT ON;
END
GO


