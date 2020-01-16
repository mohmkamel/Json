USE [Pharmacy_POS]
GO

/****** Object:  Table [dbo].[Rtrnd_Sal]    Script Date: 1/16/2020 1:44:24 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Rtrnd_Sal](
	[ID] [uniqueidentifier] NULL,
	[RSID] [varchar](50) NOT NULL,
	[SIID] [varchar](50) NULL,
	[Total] [float] NULL,
	[Date] [datetime] NULL,
	[Notes] [varchar](max) NULL,
 CONSTRAINT [PK_rtrnd_sal_id] PRIMARY KEY CLUSTERED 
(
	[RSID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Rtrnd_Sal]  WITH CHECK ADD  CONSTRAINT [FK_salinv_siid_rtrnd_sal] FOREIGN KEY([SIID])
REFERENCES [dbo].[SalInv] ([SIID])
GO

ALTER TABLE [dbo].[Rtrnd_Sal] CHECK CONSTRAINT [FK_salinv_siid_rtrnd_sal]
GO


