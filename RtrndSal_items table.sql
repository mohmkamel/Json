USE [Pharmacy_POS]
GO

/****** Object:  Table [dbo].[RtrndSal_items]    Script Date: 1/16/2020 1:44:40 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[RtrndSal_items](
	[ID] [uniqueidentifier] NULL,
	[RSID] [varchar](50) NULL,
	[InvID] [varchar](50) NULL,
	[PID] [uniqueidentifier] NULL,
	[Itm_Qty] [int] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RtrndSal_items]  WITH CHECK ADD  CONSTRAINT [FK_Pitems_PID_RtrndSal_items] FOREIGN KEY([PID])
REFERENCES [dbo].[PItems] ([PID])
GO

ALTER TABLE [dbo].[RtrndSal_items] CHECK CONSTRAINT [FK_Pitems_PID_RtrndSal_items]
GO

ALTER TABLE [dbo].[RtrndSal_items]  WITH CHECK ADD  CONSTRAINT [FK_Rtrnd_Sal_RSID_RtrndSal_items] FOREIGN KEY([RSID])
REFERENCES [dbo].[Rtrnd_Sal] ([RSID])
GO

ALTER TABLE [dbo].[RtrndSal_items] CHECK CONSTRAINT [FK_Rtrnd_Sal_RSID_RtrndSal_items]
GO

ALTER TABLE [dbo].[RtrndSal_items]  WITH CHECK ADD  CONSTRAINT [FK_Rtrnd_Sal_SIID_RtrndSal_items] FOREIGN KEY([InvID])
REFERENCES [dbo].[SalInv] ([SIID])
GO

ALTER TABLE [dbo].[RtrndSal_items] CHECK CONSTRAINT [FK_Rtrnd_Sal_SIID_RtrndSal_items]
GO


