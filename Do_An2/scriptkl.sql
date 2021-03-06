USE [SE_13]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 30/04/2020 10:53:06 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id_Category] [int] IDENTITY(1,1) NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id_Category] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Drink]    Script Date: 30/04/2020 10:53:06 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Drink](
	[id_Drink] [int] IDENTITY(1,1) NOT NULL,
	[id_Name_drink] [int] NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
	[Price] [float] NOT NULL,
 CONSTRAINT [PK_Drink] PRIMARY KEY CLUSTERED 
(
	[id_Drink] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Local_Store]    Script Date: 30/04/2020 10:53:06 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Local_Store](
	[id_Local_store] [int] IDENTITY(1,1) NOT NULL,
	[idManager] [int] NOT NULL,
	[dia_chi] [nvarchar](50) NOT NULL,
	[SDT] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Local_Store] PRIMARY KEY CLUSTERED 
(
	[id_Local_store] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manager]    Script Date: 30/04/2020 10:53:06 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manager](
	[idManager] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[SDT] [nvarchar](50) NOT NULL,
	[CMND] [nchar](50) NOT NULL,
	[Dia_Chi] [nvarchar](100) NOT NULL,
	[Ngay_Vo_Lam] [datetime] NOT NULL,
	[Ngay_Sinh] [datetime] NOT NULL,
	[Gioi_Tinh] [bit] NOT NULL,
	[idTaiKhoan] [int] NOT NULL,
 CONSTRAINT [PK_Manager] PRIMARY KEY CLUSTERED 
(
	[idManager] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 30/04/2020 10:53:06 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID_Order] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[SDT_Nhan] [nvarchar](50) NOT NULL,
	[Dia_Chi] [nvarchar](100) NOT NULL,
	[Ngay_Dat] [datetime] NOT NULL,
	[Status] [nvarchar](50) NULL,
	[FeedBack] [nvarchar](50) NULL,
	[id_Name_User] [int] NOT NULL,
 CONSTRAINT [PK_Don_Mua] PRIMARY KEY CLUSTERED 
(
	[ID_Order] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_detail]    Script Date: 30/04/2020 10:53:06 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_detail](
	[id] [int] NOT NULL,
	[id_Name_SP] [int] NOT NULL,
	[so_luong] [nvarchar](50) NOT NULL,
	[thanh_tien] [nchar](10) NOT NULL,
	[ID_Order] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_bill_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 30/04/2020 10:53:06 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[idTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[TenTaiKhoan] [nvarchar](50) NOT NULL,
	[pass] [nvarchar](100) NOT NULL,
	[LoaiTK] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Account_Manager] PRIMARY KEY CLUSTERED 
(
	[idTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 30/04/2020 10:53:06 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[id_Name_User] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[SDT] [nchar](50) NOT NULL,
	[Dia_Chi] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Ngay_Sinh] [date] NOT NULL,
	[Gioi_Tinh] [bit] NOT NULL,
	[idTaiKhoan] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[id_Name_User] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([idTaiKhoan], [TenTaiKhoan], [pass], [LoaiTK]) VALUES (3, N'PHU', N'123', N'USER')
INSERT [dbo].[TaiKhoan] ([idTaiKhoan], [TenTaiKhoan], [pass], [LoaiTK]) VALUES (4, N'NAM', N'123', N'MANAGER')
INSERT [dbo].[TaiKhoan] ([idTaiKhoan], [TenTaiKhoan], [pass], [LoaiTK]) VALUES (5, N'BINH', N'132', N'ADMIN')
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
/****** Object:  Index [Unique_LK]    Script Date: 30/04/2020 10:53:06 SA ******/
ALTER TABLE [dbo].[Local_Store] ADD  CONSTRAINT [Unique_LK] UNIQUE NONCLUSTERED 
(
	[idManager] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [TkUnique_]    Script Date: 30/04/2020 10:53:06 SA ******/
ALTER TABLE [dbo].[Manager] ADD  CONSTRAINT [TkUnique_] UNIQUE NONCLUSTERED 
(
	[idTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Unique_TK1]    Script Date: 30/04/2020 10:53:06 SA ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [Unique_TK1] UNIQUE NONCLUSTERED 
(
	[idTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Drink]  WITH CHECK ADD  CONSTRAINT [FK_Drink_Category] FOREIGN KEY([id_Name_drink])
REFERENCES [dbo].[Category] ([id_Category])
GO
ALTER TABLE [dbo].[Drink] CHECK CONSTRAINT [FK_Drink_Category]
GO
ALTER TABLE [dbo].[Local_Store]  WITH CHECK ADD  CONSTRAINT [FK_Local_Store_Manager] FOREIGN KEY([idManager])
REFERENCES [dbo].[Manager] ([idManager])
GO
ALTER TABLE [dbo].[Local_Store] CHECK CONSTRAINT [FK_Local_Store_Manager]
GO
ALTER TABLE [dbo].[Manager]  WITH CHECK ADD  CONSTRAINT [FK_Manager_TaiKhoan] FOREIGN KEY([idTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([idTaiKhoan])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Manager] CHECK CONSTRAINT [FK_Manager_TaiKhoan]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Order_detail] FOREIGN KEY([id_Name_User])
REFERENCES [dbo].[Order_detail] ([id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Order_detail]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([id_Name_User])
REFERENCES [dbo].[User] ([id_Name_User])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[Order_detail]  WITH CHECK ADD  CONSTRAINT [FK_Order_detail_Drink] FOREIGN KEY([id])
REFERENCES [dbo].[Drink] ([id_Drink])
GO
ALTER TABLE [dbo].[Order_detail] CHECK CONSTRAINT [FK_Order_detail_Drink]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_TaiKhoan] FOREIGN KEY([idTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([idTaiKhoan])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_TaiKhoan]
GO
