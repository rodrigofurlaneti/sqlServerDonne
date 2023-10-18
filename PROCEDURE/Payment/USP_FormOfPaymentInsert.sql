USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_FormOfPaymentInsert] (@FormOfPaymentName VARCHAR(50),
												@DateInsert DATETIME,
												@DateUpdate DATETIME,
												@UserId INT,
												@UserName VARCHAR(150))

AS
BEGIN
	INSERT INTO FormOfPayment (FormOfPaymentName,
						DateInsert,
						DateUpdate,
						UserId,
						UserName)

            VALUES (@FormOfPaymentName,
						@DateInsert,
						@DateUpdate,
						@UserId,
						@UserName)
	SET NOCOUNT ON;
END
GO


