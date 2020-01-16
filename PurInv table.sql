USE [Pharmacy_POS]
GO

/****** Object:  Table [dbo].[PurInv]    Script Date: 1/16/2020 1:43:53 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PurInv](
	[ID] [uniqueidentifier] NULL,
	[PIID] [varchar](50) NOT NULL,
	[Vndr_Name] [varchar](50) NOT NULL,
	[Vndr_AName] [varchar](50) NULL,
	[Total] [float] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Notes] [varchar](max) NULL,
 CONSTRAINT [PK] PRIMARY KEY CLUSTERED 
(
	[PIID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


