USE [Donne]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Donne_Order](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[CommandId] [int] NULL,
	[ProductId] [int] NULL,
	[ProductName] [varchar](150) NULL,
	[BuyerName] [varchar](50) NULL,
	[SalePrice] [varchar](50) NULL,
	[Amount] [int] NULL,
	[TotalSalePrice] [varchar](50) NULL,
	[DateInsert] [datetime] NULL,
	[DateUpdate] [datetime] NULL,
	[UserId] [int] NULL,
	[UserName] [varchar](150) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


