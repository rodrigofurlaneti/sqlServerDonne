USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Donne_Authentication](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HostedServerName] [varchar](50) NULL,
	[ServerInternetProtocol] [varchar](50) NULL,
	[AuthenticationDateTime] [varchar](50) NULL,
	[NavigatorUserAgent] [varchar](50) NULL,
	[ClientInternetProtocol] [varchar](50) NULL,
	[Authenticated] [bit] NULL,
	[Status] [varchar](50) NULL,
 CONSTRAINT [PK_Donne_Authentication] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


