USE [master]
GO
/****** Object:  Database [AirConditionerShop2023DB]    Script Date: 2/27/2024 8:12:10 AM ******/
CREATE DATABASE [AirConditionerShop2023DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AirConditionerShop2023DB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.TRANHOANGANH\MSSQL\DATA\AirConditionerShop2023DB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AirConditionerShop2023DB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.TRANHOANGANH\MSSQL\DATA\AirConditionerShop2023DB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [AirConditionerShop2023DB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AirConditionerShop2023DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AirConditionerShop2023DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AirConditionerShop2023DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AirConditionerShop2023DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AirConditionerShop2023DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AirConditionerShop2023DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [AirConditionerShop2023DB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [AirConditionerShop2023DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AirConditionerShop2023DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AirConditionerShop2023DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AirConditionerShop2023DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AirConditionerShop2023DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AirConditionerShop2023DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AirConditionerShop2023DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AirConditionerShop2023DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AirConditionerShop2023DB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AirConditionerShop2023DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AirConditionerShop2023DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AirConditionerShop2023DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AirConditionerShop2023DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AirConditionerShop2023DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AirConditionerShop2023DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AirConditionerShop2023DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AirConditionerShop2023DB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AirConditionerShop2023DB] SET  MULTI_USER 
GO
ALTER DATABASE [AirConditionerShop2023DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AirConditionerShop2023DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AirConditionerShop2023DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AirConditionerShop2023DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AirConditionerShop2023DB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AirConditionerShop2023DB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [AirConditionerShop2023DB] SET QUERY_STORE = OFF
GO
USE [AirConditionerShop2023DB]
GO
/****** Object:  Table [dbo].[AirConditioner]    Script Date: 2/27/2024 8:12:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AirConditioner](
	[AirConditionerId] [int] NOT NULL,
	[AirConditionerName] [nvarchar](200) NOT NULL,
	[Warranty] [nvarchar](60) NULL,
	[SoundPressureLevel] [nvarchar](80) NULL,
	[FeatureFunction] [nvarchar](250) NULL,
	[Quantity] [int] NULL,
	[DollarPrice] [float] NULL,
	[SupplierId] [nvarchar](50) NULL,
 CONSTRAINT [PK__AirCondi__EE2EB7399C8F3B5E] PRIMARY KEY CLUSTERED 
(
	[AirConditionerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 2/27/2024 8:12:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] NOT NULL,
	[MemberID] [int] NULL,
	[OrderDate] [datetime] NOT NULL,
	[ShippedDate] [datetime] NULL,
	[Total] [money] NULL,
	[OrderStatus] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 2/27/2024 8:12:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderID] [int] NOT NULL,
	[AirConditionerId] [int] NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Discount] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[AirConditionerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StaffMember]    Script Date: 2/27/2024 8:12:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StaffMember](
	[MemberID] [int] IDENTITY(1,1) NOT NULL,
	[Password] [nvarchar](40) NOT NULL,
	[FullName] [nvarchar](60) NOT NULL,
	[EmailAddress] [nvarchar](60) NULL,
	[Role] [int] NULL,
 CONSTRAINT [PK__StaffMem__0CF04B38FA63FBDF] PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SupplierCompany]    Script Date: 2/27/2024 8:12:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupplierCompany](
	[SupplierId] [nvarchar](50) NOT NULL,
	[SupplierName] [nvarchar](80) NOT NULL,
	[SupplierDescription] [nvarchar](250) NULL,
	[PlaceOfOrigin] [nvarchar](60) NULL,
 CONSTRAINT [PK__Supplier__4BE666B4B8FDAC27] PRIMARY KEY CLUSTERED 
(
	[SupplierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AirConditioner] ([AirConditionerId], [AirConditionerName], [Warranty], [SoundPressureLevel], [FeatureFunction], [Quantity], [DollarPrice], [SupplierId]) VALUES (100, N'hihiihhi', N'nnnnnn', N'hhjhj', N'hhh', 321, 123, N'SC0006')
INSERT [dbo].[AirConditioner] ([AirConditionerId], [AirConditionerName], [Warranty], [SoundPressureLevel], [FeatureFunction], [Quantity], [DollarPrice], [SupplierId]) VALUES (101, N'4-16KW A+++ DC Inverter Monoblock Air Source Heat Pump for Hot Water Home Heating Cooling', N'4 years', N'53dB(A)', N'House Heating Cooling and Water Heating', 12, 2978, N'SC0005')
INSERT [dbo].[AirConditioner] ([AirConditionerId], [AirConditionerName], [Warranty], [SoundPressureLevel], [FeatureFunction], [Quantity], [DollarPrice], [SupplierId]) VALUES (102, N'Quạt máy', N'5 years ', N'54db', N'321', 22, 123, N'SC0007')
INSERT [dbo].[AirConditioner] ([AirConditionerId], [AirConditionerName], [Warranty], [SoundPressureLevel], [FeatureFunction], [Quantity], [DollarPrice], [SupplierId]) VALUES (103, N'Hisense AC 9000btu 12000btu 18000btu 24000btu Cooling Inverter Super Save Energy wall mounted Wifi Home Air Conditioner Factory', N'6 years', N'18-45dB', N'Split Wall Mounted Air Conditioners', 10, 4412, N'SC0006')
INSERT [dbo].[AirConditioner] ([AirConditionerId], [AirConditionerName], [Warranty], [SoundPressureLevel], [FeatureFunction], [Quantity], [DollarPrice], [SupplierId]) VALUES (104, N'Gree Air To Water Versati III Split Inverter Heat Pump 380v 10kw 12kw 14kw 16kw 18kw', N'2 years', N'48dB(A)', N'House Heating Cooling and Water Heating', 15, 3765, N'SC0005')
INSERT [dbo].[AirConditioner] ([AirConditionerId], [AirConditionerName], [Warranty], [SoundPressureLevel], [FeatureFunction], [Quantity], [DollarPrice], [SupplierId]) VALUES (105, N'Gree 2022 R32 R410a Split Heatpump 10kw 15kw 20kw Germany Warmepumpe Mini Split Inverter Air Source Heat Pump For Sale', N'1 years', N'49/50dB(A)', N'Air Source Heat Pump', 18, 2034, N'SC0007')
INSERT [dbo].[AirConditioner] ([AirConditionerId], [AirConditionerName], [Warranty], [SoundPressureLevel], [FeatureFunction], [Quantity], [DollarPrice], [SupplierId]) VALUES (106, N'R290 Monoblock DC EVI Invert Air to Water Heat Pump for Home Central Heating air conditioner Sanitary Hot water', N'10 years', N'18-60dB', N'Heating + Hot Water+cooling', 15, 3120, N'SC0005')
INSERT [dbo].[AirConditioner] ([AirConditionerId], [AirConditionerName], [Warranty], [SoundPressureLevel], [FeatureFunction], [Quantity], [DollarPrice], [SupplierId]) VALUES (107, N'Competitive Portable Heat Pump Air Conditioner Hot Water Heating Cooling Heat Pumps', N'6 years', N'44/45dB', N'Swimming Pool Heating Cooling', 10, 3600, N'SC0005')
GO
INSERT [dbo].[Order] ([OrderID], [MemberID], [OrderDate], [ShippedDate], [Total], [OrderStatus]) VALUES (4000, 1986, CAST(N'2023-04-26T00:00:00.000' AS DateTime), CAST(N'2023-04-27T00:00:00.000' AS DateTime), 670.0000, N'Done      ')
INSERT [dbo].[Order] ([OrderID], [MemberID], [OrderDate], [ShippedDate], [Total], [OrderStatus]) VALUES (4001, 1987, CAST(N'2023-04-26T00:00:00.000' AS DateTime), CAST(N'2023-04-27T00:00:00.000' AS DateTime), 295.0000, N'Done      ')
INSERT [dbo].[Order] ([OrderID], [MemberID], [OrderDate], [ShippedDate], [Total], [OrderStatus]) VALUES (4002, 1988, CAST(N'2023-04-29T00:00:00.000' AS DateTime), CAST(N'2023-04-30T00:00:00.000' AS DateTime), 510.0000, N'Done      ')
GO
INSERT [dbo].[OrderDetail] ([OrderID], [AirConditionerId], [UnitPrice], [Quantity], [Discount]) VALUES (4000, 101, 100.0000, 2, 0)
INSERT [dbo].[OrderDetail] ([OrderID], [AirConditionerId], [UnitPrice], [Quantity], [Discount]) VALUES (4000, 103, 230.0000, 1, 0)
INSERT [dbo].[OrderDetail] ([OrderID], [AirConditionerId], [UnitPrice], [Quantity], [Discount]) VALUES (4001, 101, 120.0000, 1, 0)
INSERT [dbo].[OrderDetail] ([OrderID], [AirConditionerId], [UnitPrice], [Quantity], [Discount]) VALUES (4001, 106, 175.0000, 1, 0)
INSERT [dbo].[OrderDetail] ([OrderID], [AirConditionerId], [UnitPrice], [Quantity], [Discount]) VALUES (4002, 103, 230.0000, 1, 0)
INSERT [dbo].[OrderDetail] ([OrderID], [AirConditionerId], [UnitPrice], [Quantity], [Discount]) VALUES (4002, 104, 140.0000, 2, 0)
GO
SET IDENTITY_INSERT [dbo].[StaffMember] ON 

INSERT [dbo].[StaffMember] ([MemberID], [Password], [FullName], [EmailAddress], [Role]) VALUES (1982, N'@1', N'Administrator', N'admin@AirConditionerShop.com.sg', 1)
INSERT [dbo].[StaffMember] ([MemberID], [Password], [FullName], [EmailAddress], [Role]) VALUES (1983, N'@2', N'Manager', N'manager@AirConditionerShop.com.sg', 2)
INSERT [dbo].[StaffMember] ([MemberID], [Password], [FullName], [EmailAddress], [Role]) VALUES (1984, N'@3', N'User', N'user@AirConditionerShop.com.sg', 3)
INSERT [dbo].[StaffMember] ([MemberID], [Password], [FullName], [EmailAddress], [Role]) VALUES (1986, N'123', N'Hoang', N'Hoang123@gmail.com', 2)
INSERT [dbo].[StaffMember] ([MemberID], [Password], [FullName], [EmailAddress], [Role]) VALUES (1987, N'123', N'Hoa', N'Hoa@gmail.com', 3)
INSERT [dbo].[StaffMember] ([MemberID], [Password], [FullName], [EmailAddress], [Role]) VALUES (1988, N'123', N'Hieu', N'Hieu@gmail.com', 3)
INSERT [dbo].[StaffMember] ([MemberID], [Password], [FullName], [EmailAddress], [Role]) VALUES (1989, N'123', N'Bay', N'Bay@gmail.com', 2)
INSERT [dbo].[StaffMember] ([MemberID], [Password], [FullName], [EmailAddress], [Role]) VALUES (2016, N'123', N'Hoang Anh', N'Hoang@gmail.com', 2)
SET IDENTITY_INSERT [dbo].[StaffMember] OFF
GO
INSERT [dbo].[SupplierCompany] ([SupplierId], [SupplierName], [SupplierDescription], [PlaceOfOrigin]) VALUES (N'SC0005', N'Daikin', N'A global leader in air conditioning manufacturing that provides energy-efficient and reliable for both residential and commercial use.', N'Japan')
INSERT [dbo].[SupplierCompany] ([SupplierId], [SupplierName], [SupplierDescription], [PlaceOfOrigin]) VALUES (N'SC0006', N'Carrier ', N'A well-known brand that offers a variety of air conditioning units, including split systems, window units, and portable systems.', N'Korea')
INSERT [dbo].[SupplierCompany] ([SupplierId], [SupplierName], [SupplierDescription], [PlaceOfOrigin]) VALUES (N'SC0007', N'Mitsubishi Electric', N'A top supplier of ductless air conditioning units that are ideal for small or confined spaces.', N'Germany')
INSERT [dbo].[SupplierCompany] ([SupplierId], [SupplierName], [SupplierDescription], [PlaceOfOrigin]) VALUES (N'SC0008', N'Lennox', N'A popular supplier of central air conditioning systems known for its high-quality and energy-efficient units.', N'United Kingdom')
INSERT [dbo].[SupplierCompany] ([SupplierId], [SupplierName], [SupplierDescription], [PlaceOfOrigin]) VALUES (N'SC0009', N'Trane ', N'A trusted brand that provides a range of air conditioning units, including split systems, heat pumps.', N'Nauy')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__StaffMem__49A147405BABC6ED]    Script Date: 2/27/2024 8:12:10 AM ******/
ALTER TABLE [dbo].[StaffMember] ADD  CONSTRAINT [UQ__StaffMem__49A147405BABC6ED] UNIQUE NONCLUSTERED 
(
	[EmailAddress] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AirConditioner]  WITH CHECK ADD  CONSTRAINT [FK__AirCondit__Suppl__3B75D760] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[SupplierCompany] ([SupplierId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AirConditioner] CHECK CONSTRAINT [FK__AirCondit__Suppl__3B75D760]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_StaffMember] FOREIGN KEY([MemberID])
REFERENCES [dbo].[StaffMember] ([MemberID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_StaffMember]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_AirConditioner] FOREIGN KEY([AirConditionerId])
REFERENCES [dbo].[AirConditioner] ([AirConditionerId])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_AirConditioner]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
USE [master]
GO
ALTER DATABASE [AirConditionerShop2023DB] SET  READ_WRITE 
GO
