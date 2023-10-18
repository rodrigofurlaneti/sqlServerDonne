USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_CategoryInsert] (@CategoryName VARCHAR(150), 
											@DateInsert DATETIME,
											@DateUpdate DATETIME,
											@UserId INT,
											@UserName VARCHAR(150))

AS
BEGIN
	INSERT INTO Category
                        (CategoryName,
						 DateInsert,
						 DateUpdate,
						 UserId,
						 UserName)
            VALUES     (@CategoryName, 
						@DateInsert,
						@DateUpdate,
						@UserId,
						@UserName)
	SET NOCOUNT ON;
END
GO


