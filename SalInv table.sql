USE [Pharmacy_POS]
GO

/****** Object:  Table [dbo].[SalInv]    Script Date: 1/16/2020 1:45:26 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SalInv](
	[ID] [uniqueidentifier] NULL,
	[SIID] [varchar](50) NOT NULL,
	[CST_ID] [int] NULL,
	[CST_Name] [varchar](50) NULL,
	[Total] [float] NULL,
	[Date] [datetime] NULL,
	[Notes] [varchar](max) NULL,
 CONSTRAINT [PK_sal_inv_id] PRIMARY KEY CLUSTERED 
(
	[SIID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


