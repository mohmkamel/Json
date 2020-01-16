USE [Pharmacy_POS]
GO

/****** Object:  Table [dbo].[SalInv_items]    Script Date: 1/16/2020 1:45:36 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SalInv_items](
	[InvID] [varchar](50) NULL,
	[PID] [uniqueidentifier] NULL,
	[Itm_Qty] [int] NULL,
	[Cst_Pric] [decimal](19, 4) NULL,
	[Sell_Pric] [decimal](19, 4) NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[SalInv_items]  WITH CHECK ADD  CONSTRAINT [FK_Pitems_PID_salinv_items] FOREIGN KEY([PID])
REFERENCES [dbo].[PItems] ([PID])
GO

ALTER TABLE [dbo].[SalInv_items] CHECK CONSTRAINT [FK_Pitems_PID_salinv_items]
GO

ALTER TABLE [dbo].[SalInv_items]  WITH CHECK ADD  CONSTRAINT [FK_purinv_piid_salinv_items] FOREIGN KEY([InvID])
REFERENCES [dbo].[SalInv] ([SIID])
GO

ALTER TABLE [dbo].[SalInv_items] CHECK CONSTRAINT [FK_purinv_piid_salinv_items]
GO


