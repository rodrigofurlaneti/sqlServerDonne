USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_Donne_Authentication_Insert] (@HostedServerName VARCHAR(50),
										      @ServerInternetProtocol VARCHAR(50),
											  @AuthenticationDateTime VARCHAR(50),
											  @NavigatorUserAgent VARCHAR(50),
											  @ClientInternetProtocol VARCHAR(50),
										      @Authenticated INT,
											  @Status VARCHAR(50))
AS
BEGIN
	INSERT INTO [dbo].[Donne_Authentication] 
	(HostedServerName, ServerInternetProtocol, AuthenticationDateTime, NavigatorUserAgent, ClientInternetProtocol, Authenticated, Status)
    VALUES
	(@HostedServerName, @ServerInternetProtocol, @AuthenticationDateTime, @NavigatorUserAgent, @ClientInternetProtocol, @Authenticated, @Status)
	SET NOCOUNT ON;
END
GO


