USE [Pharmacy_POS]
GO

/****** Object:  Table [dbo].[PurInv_items]    Script Date: 1/16/2020 1:44:01 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PurInv_items](
	[InvID] [varchar](50) NULL,
	[PID] [uniqueidentifier] NULL,
	[Itm_Qty] [int] NULL,
	[Expr_Date] [date] NULL,
	[Cst_Pric] [decimal](19, 4) NULL,
	[Sell_Pric] [decimal](19, 4) NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PurInv_items]  WITH CHECK ADD  CONSTRAINT [FK_Pitems_PID] FOREIGN KEY([PID])
REFERENCES [dbo].[PItems] ([PID])
GO

ALTER TABLE [dbo].[PurInv_items] CHECK CONSTRAINT [FK_Pitems_PID]
GO

ALTER TABLE [dbo].[PurInv_items]  WITH CHECK ADD  CONSTRAINT [FK_purinv_piid] FOREIGN KEY([InvID])
REFERENCES [dbo].[PurInv] ([PIID])
GO

ALTER TABLE [dbo].[PurInv_items] CHECK CONSTRAINT [FK_purinv_piid]
GO


