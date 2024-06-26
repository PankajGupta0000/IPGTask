USE [TestData]
GO
/****** Object:  Table [dbo].[BoxItem]******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoxItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LotNumber] [int] NULL,
	[SequenceNumber] [int] NULL,
	[BoxId] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BoxItem] ON 

INSERT [dbo].[BoxItem] ([Id], [LotNumber], [SequenceNumber], [BoxId]) VALUES (1, 300, 1, 1)
INSERT [dbo].[BoxItem] ([Id], [LotNumber], [SequenceNumber], [BoxId]) VALUES (2, 300, 2, 1)
INSERT [dbo].[BoxItem] ([Id], [LotNumber], [SequenceNumber], [BoxId]) VALUES (3, 300, 3, 1)
INSERT [dbo].[BoxItem] ([Id], [LotNumber], [SequenceNumber], [BoxId]) VALUES (4, 300, 4, 1)
INSERT [dbo].[BoxItem] ([Id], [LotNumber], [SequenceNumber], [BoxId]) VALUES (5, 300, 5, 1)
INSERT [dbo].[BoxItem] ([Id], [LotNumber], [SequenceNumber], [BoxId]) VALUES (6, 307, 1, 1)
INSERT [dbo].[BoxItem] ([Id], [LotNumber], [SequenceNumber], [BoxId]) VALUES (7, 307, 2, 1)
INSERT [dbo].[BoxItem] ([Id], [LotNumber], [SequenceNumber], [BoxId]) VALUES (8, 307, 5, 1)
INSERT [dbo].[BoxItem] ([Id], [LotNumber], [SequenceNumber], [BoxId]) VALUES (9, 307, 6, 1)
INSERT [dbo].[BoxItem] ([Id], [LotNumber], [SequenceNumber], [BoxId]) VALUES (10, 307, 7, 1)
INSERT [dbo].[BoxItem] ([Id], [LotNumber], [SequenceNumber], [BoxId]) VALUES (11, 307, 9, 1)
INSERT [dbo].[BoxItem] ([Id], [LotNumber], [SequenceNumber], [BoxId]) VALUES (12, 307, 10, 1)
INSERT [dbo].[BoxItem] ([Id], [LotNumber], [SequenceNumber], [BoxId]) VALUES (13, 307, 11, 1)
INSERT [dbo].[BoxItem] ([Id], [LotNumber], [SequenceNumber], [BoxId]) VALUES (14, 341, 1, 1)
INSERT [dbo].[BoxItem] ([Id], [LotNumber], [SequenceNumber], [BoxId]) VALUES (15, 341, 5, 1)
INSERT [dbo].[BoxItem] ([Id], [LotNumber], [SequenceNumber], [BoxId]) VALUES (16, 341, 6, 2)
INSERT [dbo].[BoxItem] ([Id], [LotNumber], [SequenceNumber], [BoxId]) VALUES (17, 341, 7, 2)
INSERT [dbo].[BoxItem] ([Id], [LotNumber], [SequenceNumber], [BoxId]) VALUES (18, 341, 8, 2)
INSERT [dbo].[BoxItem] ([Id], [LotNumber], [SequenceNumber], [BoxId]) VALUES (19, 341, 20, 2)
INSERT [dbo].[BoxItem] ([Id], [LotNumber], [SequenceNumber], [BoxId]) VALUES (20, 341, 21, 2)
INSERT [dbo].[BoxItem] ([Id], [LotNumber], [SequenceNumber], [BoxId]) VALUES (21, 341, 22, 2)
INSERT [dbo].[BoxItem] ([Id], [LotNumber], [SequenceNumber], [BoxId]) VALUES (22, 341, 23, 2)
INSERT [dbo].[BoxItem] ([Id], [LotNumber], [SequenceNumber], [BoxId]) VALUES (23, 341, 24, 2)
INSERT [dbo].[BoxItem] ([Id], [LotNumber], [SequenceNumber], [BoxId]) VALUES (24, 341, 25, 3)
INSERT [dbo].[BoxItem] ([Id], [LotNumber], [SequenceNumber], [BoxId]) VALUES (25, 388, 1, 3)
INSERT [dbo].[BoxItem] ([Id], [LotNumber], [SequenceNumber], [BoxId]) VALUES (26, 388, 2, 3)
INSERT [dbo].[BoxItem] ([Id], [LotNumber], [SequenceNumber], [BoxId]) VALUES (27, 388, 3, 3)
INSERT [dbo].[BoxItem] ([Id], [LotNumber], [SequenceNumber], [BoxId]) VALUES (28, 388, 4, 3)
INSERT [dbo].[BoxItem] ([Id], [LotNumber], [SequenceNumber], [BoxId]) VALUES (29, 388, 5, 3)
INSERT [dbo].[BoxItem] ([Id], [LotNumber], [SequenceNumber], [BoxId]) VALUES (30, 388, 6, 3)
SET IDENTITY_INSERT [dbo].[BoxItem] OFF
GO
