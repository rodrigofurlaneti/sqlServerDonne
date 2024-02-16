USE [rodrigofurlaneti31_donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_Donne_Authentication_Update](@Id INT,
											  @HostedServerName VARCHAR(50),
										      @ServerInternetProtocol VARCHAR(50),
											  @AuthenticationDateTime VARCHAR(50),
											  @NavigatorUserAgent VARCHAR(50),
											  @ClientInternetProtocol VARCHAR(50),
										      @Authenticated INT,
											  @Status VARCHAR(50))

AS
BEGIN
	UPDATE [dbo].[Donne_Authentication]
    SET HostedServerName = @HostedServerName,
		ServerInternetProtocol = @ServerInternetProtocol,
		AuthenticationDateTime = @AuthenticationDateTime,
		NavigatorUserAgent = @NavigatorUserAgent,
		ClientInternetProtocol = @ClientInternetProtocol,
		Authenticated = @Authenticated,
		Status = @Status
        WHERE Id = @Id
	SET NOCOUNT ON;
END
GO


