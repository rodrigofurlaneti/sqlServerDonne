USE [Donne]
USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_Donne_Category_Update]	(@CategoryId INT,
											@CategoryName VARCHAR(50),
											@DateInsert DATETIME,
											@DateUpdate DATETIME,
											@UserId INT,
											@UserName VARCHAR(150))

AS
BEGIN
	UPDATE Donne_Category
		SET CategoryName = @CategoryName,
			DateInsert = @DateInsert,
			DateUpdate = @DateUpdate,
			UserId = @UserId,
			UserName = @UserName
				WHERE CategoryId = @CategoryId
	SET NOCOUNT ON;
END
GO