USE [Pharmacy_POS]
GO

/****** Object:  Table [dbo].[PItems]    Script Date: 1/16/2020 1:43:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PItems](
	[PID] [uniqueidentifier] NOT NULL,
	[P_Name] [varchar](50) NOT NULL,
	[P_AName] [varchar](50) NULL,
	[AI] [varchar](50) NOT NULL,
	[UOM] [tinyint] NOT NULL,
	[Notes] [varbinary](max) NULL,
	[Qty] [int] NULL,
	[BC] [int] NULL,
 CONSTRAINT [PK_PItems] PRIMARY KEY CLUSTERED 
(
	[PID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'pharmacitical english name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PItems', @level2type=N'COLUMN',@level2name=N'P_Name'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'pharmacitical arabic name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PItems', @level2type=N'COLUMN',@level2name=N'P_AName'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'the active igredient for PItems' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PItems', @level2type=N'COLUMN',@level2name=N'AI'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'the unit of measure ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PItems', @level2type=N'COLUMN',@level2name=N'UOM'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'this table contain the all pharmacitical items as unique enteries' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PItems'
GO


