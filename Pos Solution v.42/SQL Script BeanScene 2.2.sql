USE [master]
GO
/****** Object:  Database [BeanScene]    Script Date: 18/06/2013 5:09:21 PM ******/
CREATE DATABASE [BeanScene]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BeanScene', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\BeanScene.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BeanScene_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\BeanScene_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BeanScene] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BeanScene].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BeanScene] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BeanScene] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BeanScene] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BeanScene] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BeanScene] SET ARITHABORT OFF 
GO
ALTER DATABASE [BeanScene] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BeanScene] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [BeanScene] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BeanScene] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BeanScene] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BeanScene] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BeanScene] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BeanScene] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BeanScene] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BeanScene] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BeanScene] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BeanScene] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BeanScene] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BeanScene] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BeanScene] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BeanScene] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BeanScene] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BeanScene] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BeanScene] SET RECOVERY FULL 
GO
ALTER DATABASE [BeanScene] SET  MULTI_USER 
GO
ALTER DATABASE [BeanScene] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BeanScene] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BeanScene] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BeanScene] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BeanScene', N'ON'
GO
USE [BeanScene]
GO
/****** Object:  Table [dbo].[Area]    Script Date: 18/06/2013 5:09:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Area](
	[Id] [uniqueidentifier] NOT NULL,
	[RestaurantId] [uniqueidentifier] NOT NULL,
	[StateId] [int] NOT NULL,
	[Description] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Area] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Category]    Script Date: 18/06/2013 5:09:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [uniqueidentifier] NOT NULL,
	[Description] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 18/06/2013 5:09:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmployeeState]    Script Date: 18/06/2013 5:09:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmployeeState](
	[Id] [int] NOT NULL,
	[Position] [varchar](10) NOT NULL,
 CONSTRAINT [PK_EmployeeState] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 18/06/2013 5:09:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[Id] [uniqueidentifier] NOT NULL,
	[RestaurantId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MenuProduct]    Script Date: 18/06/2013 5:09:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuProduct](
	[Id] [uniqueidentifier] NOT NULL,
	[MenuId] [uniqueidentifier] NOT NULL,
	[ProductId] [uniqueidentifier] NOT NULL,
	[Price] [money] NOT NULL,
 CONSTRAINT [PK_MenuItemPrice] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OTCSale]    Script Date: 18/06/2013 5:09:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OTCSale](
	[Id] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_OTCSale] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Payment]    Script Date: 18/06/2013 5:09:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[Id] [uniqueidentifier] NOT NULL,
	[SaleId] [uniqueidentifier] NOT NULL,
	[Amount] [money] NOT NULL,
	[PaymentTypeId] [int] NOT NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PaymentType]    Script Date: 18/06/2013 5:09:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PaymentType](
	[Id] [int] NOT NULL,
	[Description] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PaymentType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Person]    Script Date: 18/06/2013 5:09:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Person](
	[Id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[RestaurantId] [uniqueidentifier] NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[ContactNumber] [varchar](18) NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product]    Script Date: 18/06/2013 5:09:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [uniqueidentifier] NOT NULL,
	[CategoryId] [uniqueidentifier] NOT NULL,
	[Price] [money] NOT NULL,
	[Description] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Register]    Script Date: 18/06/2013 5:09:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Register](
	[Id] [uniqueidentifier] NOT NULL,
	[AreaId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Register] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Restaurant]    Script Date: 18/06/2013 5:09:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Restaurant](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Restaurant] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sale]    Script Date: 18/06/2013 5:09:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sale](
	[Id] [uniqueidentifier] NOT NULL,
	[RegisterId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_Sale] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SaleLineItem]    Script Date: 18/06/2013 5:09:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SaleLineItem](
	[SaleId] [uniqueidentifier] NOT NULL,
	[MenuProductId] [uniqueidentifier] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Message] [varchar](100) NULL,
 CONSTRAINT [PK_SaleLineItem_1] PRIMARY KEY CLUSTERED 
(
	[SaleId] ASC,
	[MenuProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ServiceState]    Script Date: 18/06/2013 5:09:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ServiceState](
	[Id] [int] NOT NULL,
	[Description] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ServiceState] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table]    Script Date: 18/06/2013 5:09:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table](
	[Id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[StateId] [int] NOT NULL,
	[AreaId] [uniqueidentifier] NOT NULL,
	[TableNumber] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Table] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TableSale]    Script Date: 18/06/2013 5:09:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TableSale](
	[Id] [uniqueidentifier] NOT NULL,
	[TableId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_TableSale] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserAccount]    Script Date: 18/06/2013 5:09:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAccount](
	[Id] [uniqueidentifier] NOT NULL,
	[Password] [int] NOT NULL,
	[StateId] [int] NOT NULL,
 CONSTRAINT [PK_UserAccount] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Area] ([Id], [RestaurantId], [StateId], [Description]) VALUES (N'80a94d23-780e-4fa6-a907-2a83373388a3', N'b177e4c7-ca5f-4266-b1db-5d3fdd704626', 1, N'Main Floor')
INSERT [dbo].[Area] ([Id], [RestaurantId], [StateId], [Description]) VALUES (N'4b01318e-330f-4e79-b31f-993fe4db8ec0', N'b177e4c7-ca5f-4266-b1db-5d3fdd704626', 1, N'Courtyard')
INSERT [dbo].[Category] ([Id], [Description]) VALUES (N'5bcbdda9-f3d9-44ae-804b-1445955bb9c2', N'Pasta')
INSERT [dbo].[Category] ([Id], [Description]) VALUES (N'75ad6b8b-df5d-4453-ac24-31695f4a5396', N'Breakfast')
INSERT [dbo].[Category] ([Id], [Description]) VALUES (N'de95c729-3068-442b-b041-49094a239636', N'Special')
INSERT [dbo].[Category] ([Id], [Description]) VALUES (N'af0d691c-d05b-4b0f-859f-4c08ae0ee0c9', N'Side')
INSERT [dbo].[Category] ([Id], [Description]) VALUES (N'749b2aaf-ddd3-4fb0-b351-4fd6a7463b2d', N'Burgers')
INSERT [dbo].[Category] ([Id], [Description]) VALUES (N'e0620fed-05c8-4e12-a892-77b1f4b06998', N'Salad')
INSERT [dbo].[Category] ([Id], [Description]) VALUES (N'cb41e872-585a-4f57-90d3-a2fe050156b2', N'Steak')
INSERT [dbo].[Category] ([Id], [Description]) VALUES (N'153b2935-9c48-4517-bbb6-cb8b6d47456f', N'Dessert')
INSERT [dbo].[Category] ([Id], [Description]) VALUES (N'8247116d-4d86-4c75-82ae-df64f499efda', N'Coffee')
INSERT [dbo].[Category] ([Id], [Description]) VALUES (N'732614fc-f33b-48c1-bbc1-f34c1c3f8762', N'Beverage')
INSERT [dbo].[Employee] ([Id]) VALUES (N'8511fbff-63d8-411b-aa62-3696fb7d7a70')
INSERT [dbo].[Employee] ([Id]) VALUES (N'e7d72914-96d7-4edd-86c1-40841a49080a')
INSERT [dbo].[Employee] ([Id]) VALUES (N'26c68fd6-a106-48ff-9a37-43399a57c192')
INSERT [dbo].[Employee] ([Id]) VALUES (N'ace67795-fac0-4277-a3e2-a8407a37e102')
INSERT [dbo].[Employee] ([Id]) VALUES (N'15fc49b7-60c0-48f1-b6c7-db8439b7cc66')
INSERT [dbo].[Employee] ([Id]) VALUES (N'8a112892-21dc-4f4b-a62e-e04e9ebb4112')
INSERT [dbo].[EmployeeState] ([Id], [Position]) VALUES (1, N'Staff')
INSERT [dbo].[EmployeeState] ([Id], [Position]) VALUES (2, N'Manager')
INSERT [dbo].[EmployeeState] ([Id], [Position]) VALUES (3, N'Admin')
INSERT [dbo].[Menu] ([Id], [RestaurantId]) VALUES (N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'b177e4c7-ca5f-4266-b1db-5d3fdd704626')
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'56f72333-c38c-4ad1-b635-0106f1f4bd69', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'44c7dfa5-7402-42e5-9cc7-4d44524331cf', 8.9500)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'd2b2164e-d426-4ef8-a8ae-01810371e81f', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'f905fd31-d0f3-43e2-ade7-6e7c2708da1d', 5.5000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'bef31138-88f6-4dae-9be9-023f663cf820', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'9996d41b-c010-43d3-a242-df184f56cf16', 4.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'0d61269c-9374-4977-b55c-029269bdb950', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'cbe2447a-2f0c-4e75-b368-add48fbcf5ea', 7.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'388c4349-0f85-4ab2-a388-02e25d94d20a', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'89a2c11c-3180-4843-97c0-692e69c75081', 5.9500)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'20d2ac2c-06d6-4bc0-b4b5-03db9e8ec41c', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'6877ade7-3b4d-46db-949a-826e66ef98c4', 4.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'a5b0882e-af79-4c8d-ad80-05149eaa4651', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'9b76707e-0e7c-4875-98f2-27902f3d5f35', 1.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'7e9601c3-b163-4795-b257-072069eae05e', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'9996d41b-c010-43d3-a242-df184f56cf16', 5.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'ef71d7cf-3d35-4113-9fdf-0742e0cf52c1', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'b778122b-f197-4743-a484-3c05861f3423', 11.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'60cd3fbb-61d9-44c5-8f44-0d6a03ab2690', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'8266fb25-4bb5-4ec8-8884-e65d4bb276ed', 13.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'1ba81b8a-814c-478d-8c64-0d6b089c4af3', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'daca9ee2-2469-461f-b0d4-60999d13cbc4', 4.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'c5cbe852-fa0b-48a5-b704-0dd528a7b906', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'9b76707e-0e7c-4875-98f2-27902f3d5f35', 1.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'fd85ec58-a621-4fef-a8b2-0ee54730f2e4', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'5e21d470-0097-4e3f-b908-280ea2182ce8', 4.5000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'235f9b75-aea1-4be3-8894-1021a4dc98f5', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'54b80277-6b80-4ddb-a2cc-469219f249fb', 3.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'2c094475-6d47-464f-8e42-10296af62a59', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'542b6313-04c8-4d1b-a17f-e947f217f4f8', 5.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'60dfe054-4adc-4c8a-8c09-1075f62e5e56', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'c8f27940-85da-4eb7-972e-bf06f61a09ed', 10.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'23a436c2-23da-4828-9584-10b44f74ef01', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'0c62cb48-1cfe-4b9b-b69d-76195b6a3c34', 3.5000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'130bf97d-bfcf-4286-979d-11879deffd68', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'00af80bc-34f7-4b42-849d-677f09fcf1db', 11.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'3e813d4c-f303-4aaa-a969-13a01f07867a', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'49f799f9-bcd9-47ee-82d4-6cd7dca9bf51', 17.5000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'5842869e-3c25-451c-9cd1-146f69382cd0', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'2ec925ce-e022-4525-a29f-3ae9730d9e1e', 13.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'07694ddb-355c-42b9-8fa2-14c008b8b78b', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'ca8e198b-28f1-49d1-a1b2-e9acf5c9dcce', 15.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'49aa4a75-80e9-4bd2-af66-15d5952d63c3', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'05dcd1ff-6170-4dad-b400-572725107dc0', 7.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'632db9ed-14bf-4781-880e-16e32691b587', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'4b1085ed-fd40-4550-8ebc-9a6614a81885', 11.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'33ea5f7f-6615-437f-a1ba-17204919508d', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'baa4b385-928d-4fdb-8285-16cb75ddca5a', 8.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'3fd56721-a642-4005-8909-18ae79ea9e1f', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'f3fd9e4c-6bfd-457c-a1fa-fa013bc602ff', 7.5000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'2b284bec-5c7f-4a7a-a09c-1977e6663b8c', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'bf98a74c-ad42-4eaa-8de1-d35610da922b', 10.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'a0218181-31ee-461e-be47-1c652678e52e', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'508ccced-8bd0-4d1d-b3c6-2154eee18441', 3.5000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'd8a22bd0-7e66-47a4-885b-1d5d93187ae6', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'8266fb25-4bb5-4ec8-8884-e65d4bb276ed', 14.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'ebfe4198-ee3c-4896-95cd-1e0f8895d4d0', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'5e21d470-0097-4e3f-b908-280ea2182ce8', 3.5000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'503a4f9b-50f8-492b-a648-1e3738fbee27', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'49f799f9-bcd9-47ee-82d4-6cd7dca9bf51', 16.5000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'8fdabba0-0f4e-4efe-9056-1eefec7c369c', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'5048e53c-7afb-4b0e-a828-fe8bb78f3677', 9.9500)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'7c79e582-e898-4ba3-bf8d-204282e080c6', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'76dbd97d-5013-4f0e-85fb-6a8e8abde7f7', 20.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'be606b8e-9b19-49b8-b728-20ab8b6bdede', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'dd950bda-822c-417a-983a-aa5af9ee096b', 6.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'988d20ad-1b98-4161-8bc0-2334e0b8ddcb', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'897f8702-c9e2-476b-88b8-06cfdee8b197', 9.5000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'ace89a99-7e13-4aa8-a6df-23d52dd20160', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'36e34986-016e-4548-b04f-723d40ea8992', 2.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'd2b27041-6360-4448-8f30-247c4b7834b3', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'e3b58dc9-e94e-4bb6-b403-508421ddbb98', 9.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'bdbc0885-d531-48ae-b871-26702e76c7a0', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'546596ee-d5ac-45ae-bdda-df917b09a822', 11.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'b0f49c45-6f78-4668-b3a7-26d1fdb42db1', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'546596ee-d5ac-45ae-bdda-df917b09a822', 12.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'aa2c122d-f150-4415-9af7-26f96c1b992f', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'5db92842-0438-4d88-9d70-257ab85eac61', 3.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'cf6b323d-728e-435f-9555-2719b26ceb5e', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'c8f27940-85da-4eb7-972e-bf06f61a09ed', 9.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'02818906-f4b2-4572-8e09-28ef6a16e062', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'892bb5fa-72c7-44bc-816e-407e0328b8f4', 3.5000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'9e9ca962-d96c-42df-92eb-297b1b9f6028', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'c5b97ae2-b2f4-4908-b2ed-4614de470dd0', 7.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'381e8e20-246b-4048-ae16-2bbce3ce86c4', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'ca8e198b-28f1-49d1-a1b2-e9acf5c9dcce', 16.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'2222f8a2-69d1-4890-bebe-2dd50cfdbda4', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'baa4b385-928d-4fdb-8285-16cb75ddca5a', 7.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'12e0ca01-570c-4f9f-8ef1-2e570d29c8e5', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'f32594e7-3c4b-472e-a627-fc6cea0ed808', 10.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'f61faf27-b24f-45d0-828d-3041666a3644', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'730b32a4-2213-42c0-894b-ceea4fdd59f7', 13.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'64daed43-c833-4572-9d76-305c73d8d383', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'10ae2c2c-cd02-4776-81ad-5ddf94d25b9f', 2.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'5ea5025e-790e-4e2c-b920-3099d7ecd45e', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'695c7459-6400-4f38-8e02-edb8878deda1', 1.5000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'01f3c961-f0be-4464-bf94-30b5b68668b6', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'00af80bc-34f7-4b42-849d-677f09fcf1db', 12.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'd0d335a2-e1e1-44df-8ed2-327a24f48a9c', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'3a7a2cc6-28b7-4723-b930-afe18a43fed0', 3.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'48668ba8-70c1-41f1-a46d-3d8963010ea8', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'22703874-a27c-400c-b378-2e15c6075544', 6.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'0fd6132f-3011-474d-b723-3fe88ae2b3d3', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'dd950bda-822c-417a-983a-aa5af9ee096b', 7.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'b3f8f7f1-df6b-43fa-9fb7-3fe9732514ee', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'f8881c63-2b7e-48a0-9b77-af75e2788e15', 4.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'7ca1f472-f9ca-4e20-b101-4118f5832bff', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'2bf73ff3-dcce-41cf-b431-21f80177eab8', 2.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'92db3004-b594-4006-adfe-41d67aebe299', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'81026b71-c148-4173-b4fd-6c4e3910ee02', 15.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'603da00b-8880-4876-b62f-43d6f7985e44', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'39074eb1-9fab-4dd1-ac89-27e5903878e5', 11.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'7610b2f2-e9df-4b9c-97fb-478ff14439b3', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'1227768e-d66c-4486-a42f-454e5c9b5732', 14.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'b714547b-78e9-48ed-a7f7-47e0a2026b36', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'2ec925ce-e022-4525-a29f-3ae9730d9e1e', 14.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'a13275d1-34ef-44f1-905f-4e3f7171f5a1', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'81026b71-c148-4173-b4fd-6c4e3910ee02', 14.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'ef63c198-ddc8-4fdc-8f8e-4f3be4b3b37f', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'a5c8abe0-f7ca-48fa-a30f-fe1c565ef678', 10.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'02a82609-2fab-49c9-90d0-5073471d29ce', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'cac28c19-96ea-4287-9745-4f75c9a9dbf9', 12.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'3e886673-799a-4709-b4ad-50ae23cb6864', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'd8879bb2-f209-4144-9ee6-2dbbfb0d619e', 4.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'4e208979-2084-4656-aec3-572f187dc4bf', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'6877ade7-3b4d-46db-949a-826e66ef98c4', 3.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'd334ebf5-c72a-4c54-ba32-5a5f739f123b', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'2bf73ff3-dcce-41cf-b431-21f80177eab8', 3.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'622ef719-1c0a-46b8-83dd-5a6a53c22b59', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'5e3c1482-8464-4dbd-b262-ce6d49bec53f', 12.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'735bdbae-fa12-46ca-8628-5bae0b0b764e', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'44c7dfa5-7402-42e5-9cc7-4d44524331cf', 9.9500)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'dd4c086f-2370-4540-a339-5e6a871f496f', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'f14f02fa-6aff-4203-b86b-063ee2d1b463', 11.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'c5e89984-68ca-42e9-b912-614fafb86604', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'5e3c1482-8464-4dbd-b262-ce6d49bec53f', 13.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'2b0b1729-bc93-4edf-9508-624e0afb94b7', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'7f467f4c-e8bc-4833-b039-fb1108b0d1a0', 11.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'd8af329b-7e53-47ee-9cf6-63235680b7d2', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'f14f02fa-6aff-4203-b86b-063ee2d1b463', 12.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'8251e567-5c21-4d91-80eb-63529938888f', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'cac28c19-96ea-4287-9745-4f75c9a9dbf9', 13.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'fc0ca737-786a-4d4b-8286-65c23fc03261', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'6b1dacde-6a19-48e4-b549-40387599a040', 16.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'4b66919f-9b0e-410d-b51d-699e197dac9c', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'36e34986-016e-4548-b04f-723d40ea8992', 1.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'bc956ea1-0385-447e-b173-6a7b9b7a69a6', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'3cc4b801-6325-485d-9e7e-c5433ed7174e', 3.9500)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'b26892ff-41f6-4d52-b63b-6cfa6a3b54ef', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'c9c41f85-28a5-4d80-9e37-f3a76fc9c860', 4.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'bea34f20-5053-4b76-9605-6e57d02881e6', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'b1caf82c-ff81-497f-b50a-0f9ce9d943b4', 3.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'c20df240-5dcf-42d1-8e7c-72d703a2d20a', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'89a2c11c-3180-4843-97c0-692e69c75081', 4.9500)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'ff9f2543-f637-4ed6-84ac-73900b2a91d2', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'311f5ff9-bacc-4581-a4f6-426ca556daaa', 7.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'ff851b58-9ae0-4cab-8d21-772478369e14', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'd8879bb2-f209-4144-9ee6-2dbbfb0d619e', 5.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'88edb3b8-cfeb-4c8c-aa64-777340451efc', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'173b886e-1a66-415c-880f-5ac93432e3a4', 22.5000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'5483d7a8-d071-4866-8b1a-7a227a7b2d08', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'76dbd97d-5013-4f0e-85fb-6a8e8abde7f7', 19.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'818dde1c-5a9c-4bd1-a607-7aa71c276535', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'c554dd4f-68d5-48a5-847b-40b95ed0a621', 8.9500)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'84a4808a-a40e-4e6d-8ae2-7c6aeff4d88a', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'b8ac72d9-86c6-464c-8f34-14e65f957dd5', 7.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'47513392-ed21-4c04-a272-7ec5585376e9', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'a5c8abe0-f7ca-48fa-a30f-fe1c565ef678', 11.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'70f5cdc9-3a8c-4f22-8386-8260ae6f628a', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'f3fd9e4c-6bfd-457c-a1fa-fa013bc602ff', 7.5000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'68e9012e-a64a-49dd-8551-85f6e38045b0', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'b778122b-f197-4743-a484-3c05861f3423', 10.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'd5f2414d-c579-4bff-9ee2-869ddcea4a52', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'54d11475-71b8-491c-8181-ca32ee51a928', 4.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'cd901009-f0f8-4c20-9a12-887ab8afeb6c', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'54b80277-6b80-4ddb-a2cc-469219f249fb', 4.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'e990088c-5539-4187-ab7f-891b4c9413f5', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'05dcd1ff-6170-4dad-b400-572725107dc0', 8.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'659980c1-d49b-45fe-be32-8edab9a0957b', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'5db92842-0438-4d88-9d70-257ab85eac61', 2.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'890a2642-d2a3-4bc0-89b2-8f00ca94de56', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'2fce5bd6-c9c3-48f0-a4a1-92d12c44ff77', 7.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'b2baeef9-30e8-4ec8-a1c8-922ce2c5e865', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'8a2a3b5c-783d-412c-b982-c24eebebbc7b', 4.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'9b8d57bc-4013-4f34-8766-97d7a483bd8b', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'0c62cb48-1cfe-4b9b-b69d-76195b6a3c34', 4.5000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'9fabda1d-cf64-4706-9c70-9ab21049ff0d', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'3fcad733-877d-498d-a6d1-ac590f1fcab9', 8.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'de7a152e-44d7-43a3-a430-9c3f996bbc78', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'9f9c8c48-6c7f-44c0-b62f-9bc22b80fd40', 7.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'e25ca8c6-38d1-428b-befc-a0714c4dd637', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'695c7459-6400-4f38-8e02-edb8878deda1', 2.5000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'f134d1d6-18d3-4e75-92e2-a0b57c0ffd81', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'54d11475-71b8-491c-8181-ca32ee51a928', 3.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'c1eba441-6be8-407c-8ea5-a2b7d347e980', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'f8881c63-2b7e-48a0-9b77-af75e2788e15', 3.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'1a593762-22fa-4cb3-a4af-a347a4949ed3', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'4738a638-4711-4287-b8f5-67d79eda99ba', 3.5000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'85d42b29-7699-4ba1-86cc-a39403fbd438', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'c5b97ae2-b2f4-4908-b2ed-4614de470dd0', 6.0000)
GO
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'f5e4c143-ffd1-4a3b-a2b5-a47182dae2b8', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'b1caf82c-ff81-497f-b50a-0f9ce9d943b4', 2.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'6ea33cee-50a5-45f6-a69b-a51ce3900294', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'980bb376-53b0-4b9a-93fe-b7b3936bbe0a', 6.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'13543f82-5d3a-40c7-b702-a5399f3d5181', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'1227768e-d66c-4486-a42f-454e5c9b5732', 15.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'15130711-4367-4cbc-ba0a-a7c373d5eed9', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'be9b8536-2d2a-407c-a184-0ea02db07755', 13.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'b57fbab5-57bf-4cae-b1f9-a9659c00e2f9', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'fded1daa-98b9-4f77-a6c4-47e07695d9ff', 4.9500)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'493ce7b6-ef9c-4c5a-baea-af405c6bdebf', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'c9c41f85-28a5-4d80-9e37-f3a76fc9c860', 3.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'f5e79917-2e94-4c96-b53a-b0278601fed7', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'f8e89ac2-4eb5-4f97-bf3b-1b49d40b4974', 11.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'93259fd6-47e2-4543-ad9c-b0396c5f5271', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'4b7d9564-e308-4b98-9dd4-d20ad161a6c0', 4.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'55dfb121-9e8b-4c09-a36e-b086d3f49366', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'b8ac72d9-86c6-464c-8f34-14e65f957dd5', 6.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'e9356776-f0f1-4551-8fff-b1fc313c17d1', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'897f8702-c9e2-476b-88b8-06cfdee8b197', 10.5000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'69ec9d89-02a9-4dc5-b60b-b2fc6d39d791', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'4b1085ed-fd40-4550-8ebc-9a6614a81885', 12.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'9559d1ba-c7de-476b-a814-b507c7b0cb6a', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'22703874-a27c-400c-b378-2e15c6075544', 7.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'107aba7f-b78e-4e3d-891f-b556093fcf29', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'f32594e7-3c4b-472e-a627-fc6cea0ed808', 11.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'8263d06a-8f98-4613-a162-b89b2ed22448', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'6b1dacde-6a19-48e4-b549-40387599a040', 15.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'fa2b211a-c349-45b8-8f0c-b9757b9d8f04', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'5048e53c-7afb-4b0e-a828-fe8bb78f3677', 9.9500)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'97dc093a-5691-4cf0-8fde-ba718f4cd401', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'730b32a4-2213-42c0-894b-ceea4fdd59f7', 12.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'f6a47c3f-2bb6-4792-84ab-bb49cb46da21', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'd29d882a-655a-461f-8e89-0273d54a12ed', 3.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'db75db81-1a95-4621-92a1-bc7af06828de', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'cbe2447a-2f0c-4e75-b368-add48fbcf5ea', 8.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'b2d6ab41-492c-46ef-9bc2-befff6c737fb', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'3cc4b801-6325-485d-9e7e-c5433ed7174e', 4.9500)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'3e6a7dcf-10ab-4728-9b1e-c0324e1472fa', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'd7a93221-52c4-4f7a-aef4-5c20be89b828', 21.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'8cf7d038-c7e3-4d72-9139-c700504001b5', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'c554dd4f-68d5-48a5-847b-40b95ed0a621', 9.9500)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'50d8b9e0-5a98-4d0e-be42-c8ab5a72c996', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'39074eb1-9fab-4dd1-ac89-27e5903878e5', 12.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'17e33f97-46c9-4270-9ce9-cb5e80507fce', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'fe7f95ff-871a-4aff-a737-8ad2f34ab9d3', 3.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'5effa008-14e0-436d-8782-cd3936afbec6', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'a454f560-46e7-45d9-8793-72c380734e93', 3.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'c7b85588-d39a-4af4-91ea-cd8bf761280e', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'4b7d9564-e308-4b98-9dd4-d20ad161a6c0', 3.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'43c51ea9-0c8f-4ca8-9f4a-d2205e0eae87', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'be9b8536-2d2a-407c-a184-0ea02db07755', 14.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'87a42879-a583-47f3-becd-d37976304afa', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'508ccced-8bd0-4d1d-b3c6-2154eee18441', 4.5000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'b5d69582-0a90-4836-a9ac-d43a1429434d', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'a080c9e9-24bc-41ea-9737-89e6ca15c521', 3.5000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'e08a1957-c73a-4e7f-aa2f-d5bcb4ccbe3a', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'a2296d83-6215-4f29-9805-40efe0cbaa6a', 13.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'438aef22-d164-4e3c-ad6b-d8164570f4bf', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'311f5ff9-bacc-4581-a4f6-426ca556daaa', 8.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'b1bcc590-b73b-4580-91ce-d9a05489f1d4', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'fe7f95ff-871a-4aff-a737-8ad2f34ab9d3', 2.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'19a9ee58-bb08-4a2f-9f9a-d9aeebb11022', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'7f467f4c-e8bc-4833-b039-fb1108b0d1a0', 10.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'0eb85ce8-6645-4a8e-ab87-df16f2de177c', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'14fd73ca-3cc8-433a-98d4-faeee648f472', 10.9500)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'9e990bdc-b88f-4a29-9126-e01dcfefb921', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'542b6313-04c8-4d1b-a17f-e947f217f4f8', 6.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'991b4eda-3bd1-4571-8d8e-e17954887ce1', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'10ae2c2c-cd02-4776-81ad-5ddf94d25b9f', 3.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'b5f5a8a7-7003-4eed-b27f-e1f340397125', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'3fcad733-877d-498d-a6d1-ac590f1fcab9', 7.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'c9e2bcd9-8db0-4524-9062-e30fa2835bb0', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'3a7a2cc6-28b7-4723-b930-afe18a43fed0', 4.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'a7477589-79f3-41fd-9b2e-e4123972a904', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'a080c9e9-24bc-41ea-9737-89e6ca15c521', 2.5000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'f5528482-e06c-4820-b0ff-e4a55d2a0488', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'980bb376-53b0-4b9a-93fe-b7b3936bbe0a', 7.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'c294aa53-e98e-454f-b60c-e5b71dafa8a0', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'65d56402-ab8f-498d-b3ab-b3010851b5bd', 4.5000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'b6fef1e9-9ba5-4a64-9b3c-e6c6f1485fb7', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'4738a638-4711-4287-b8f5-67d79eda99ba', 4.5000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'5dc3031d-73d9-4932-b7ed-e7cc9cad181c', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'14fd73ca-3cc8-433a-98d4-faeee648f472', 11.9500)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'707da4d4-cdd0-4c90-97a6-e7dad5ea6424', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'e3b58dc9-e94e-4bb6-b403-508421ddbb98', 8.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'64b56db6-2072-4b44-94c4-e8a4053e3e05', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'9f9c8c48-6c7f-44c0-b62f-9bc22b80fd40', 8.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'8e97e687-747b-437d-a5b7-e93be5638b2b', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'2fce5bd6-c9c3-48f0-a4a1-92d12c44ff77', 8.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'e231e34e-5e5d-4653-be12-e9909912202f', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'd29d882a-655a-461f-8e89-0273d54a12ed', 2.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'00be2857-fd8d-4955-b56a-ea78b98f2d48', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'65d56402-ab8f-498d-b3ab-b3010851b5bd', 3.5000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'4bc322c4-d21b-496b-97de-ec192ad5ff05', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'd7a93221-52c4-4f7a-aef4-5c20be89b828', 22.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'f715e044-3f38-428b-92cc-ed56e468fe13', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'a2296d83-6215-4f29-9805-40efe0cbaa6a', 14.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'133e1a06-d832-4ba2-b784-f0bbc251d475', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'8a2a3b5c-783d-412c-b982-c24eebebbc7b', 5.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'0ec033a9-6e33-4a22-8ae0-f16c976dec7c', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'fded1daa-98b9-4f77-a6c4-47e07695d9ff', 3.9500)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'13269f5e-de04-40b4-b10c-f1f83e679aaa', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'a454f560-46e7-45d9-8793-72c380734e93', 4.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'6f2adf91-c451-4eb7-bf02-f2c4b543c411', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'daca9ee2-2469-461f-b0d4-60999d13cbc4', 5.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'9cfe1f04-de87-44f1-8e0d-f55294e01011', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'bf98a74c-ad42-4eaa-8de1-d35610da922b', 11.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'822f8b9c-2ccc-4492-936c-fcfc238608ba', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'f905fd31-d0f3-43e2-ade7-6e7c2708da1d', 4.5000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'fafcd412-5ad5-45e7-9493-fd1686554c4a', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'173b886e-1a66-415c-880f-5ac93432e3a4', 21.5000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'f6d4a761-beb5-4ee2-9b96-ff72e9711609', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'f8e89ac2-4eb5-4f97-bf3b-1b49d40b4974', 10.0000)
INSERT [dbo].[MenuProduct] ([Id], [MenuId], [ProductId], [Price]) VALUES (N'6c6c57b4-0581-42e6-b284-ff81ba311600', N'01c91cd2-e731-441e-927f-cdabff6eaf7e', N'892bb5fa-72c7-44bc-816e-407e0328b8f4', 4.5000)
INSERT [dbo].[PaymentType] ([Id], [Description]) VALUES (1, N'Cash')
INSERT [dbo].[PaymentType] ([Id], [Description]) VALUES (2, N'Efptos')
INSERT [dbo].[Person] ([Id], [RestaurantId], [FirstName], [LastName], [ContactNumber], [Email]) VALUES (N'8511fbff-63d8-411b-aa62-3696fb7d7a70', N'b177e4c7-ca5f-4266-b1db-5d3fdd704626', N'Youngkoo', N'Kim', N'0293885943', N'kim@mail.com')
INSERT [dbo].[Person] ([Id], [RestaurantId], [FirstName], [LastName], [ContactNumber], [Email]) VALUES (N'e7d72914-96d7-4edd-86c1-40841a49080a', N'b177e4c7-ca5f-4266-b1db-5d3fdd704626', N'Sean', N'Narayan', N'0414311355', N'narayan@mail.com')
INSERT [dbo].[Person] ([Id], [RestaurantId], [FirstName], [LastName], [ContactNumber], [Email]) VALUES (N'26c68fd6-a106-48ff-9a37-43399a57c192', N'b177e4c7-ca5f-4266-b1db-5d3fdd704626', N'Erik', N'Beltran', N'0398227839', N'beltran@mail.com')
INSERT [dbo].[Person] ([Id], [RestaurantId], [FirstName], [LastName], [ContactNumber], [Email]) VALUES (N'ace67795-fac0-4277-a3e2-a8407a37e102', N'b177e4c7-ca5f-4266-b1db-5d3fdd704626', N'Dale', N'Hogan', N'0211982231', N'hogan@mail.com')
INSERT [dbo].[Person] ([Id], [RestaurantId], [FirstName], [LastName], [ContactNumber], [Email]) VALUES (N'15fc49b7-60c0-48f1-b6c7-db8439b7cc66', N'b177e4c7-ca5f-4266-b1db-5d3fdd704626', N'Timothy', N'Tjahjadi', N'0439887261', N'Tjahjadi@mail.com')
INSERT [dbo].[Person] ([Id], [RestaurantId], [FirstName], [LastName], [ContactNumber], [Email]) VALUES (N'8a112892-21dc-4f4b-a62e-e04e9ebb4112', N'b177e4c7-ca5f-4266-b1db-5d3fdd704626', N'Admin', N'Admin', N'0498827893', NULL)
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'd29d882a-655a-461f-8e89-0273d54a12ed', N'75ad6b8b-df5d-4453-ac24-31695f4a5396', 3.0000, N'Eggs')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'f14f02fa-6aff-4203-b86b-063ee2d1b463', N'5bcbdda9-f3d9-44ae-804b-1445955bb9c2', 12.0000, N'Pasta Papalini')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'897f8702-c9e2-476b-88b8-06cfdee8b197', N'749b2aaf-ddd3-4fb0-b351-4fd6a7463b2d', 10.5000, N'Pacific Burger')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'be9b8536-2d2a-407c-a184-0ea02db07755', N'cb41e872-585a-4f57-90d3-a2fe050156b2', 14.0000, N'Black Pepper Steak')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'b1caf82c-ff81-497f-b50a-0f9ce9d943b4', N'8247116d-4d86-4c75-82ae-df64f499efda', 3.0000, N'Hot Chocolate')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'b8ac72d9-86c6-464c-8f34-14e65f957dd5', N'e0620fed-05c8-4e12-a892-77b1f4b06998', 7.0000, N'Seaweed Salad')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'baa4b385-928d-4fdb-8285-16cb75ddca5a', N'e0620fed-05c8-4e12-a892-77b1f4b06998', 8.0000, N'Apple Colesaw')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'f8e89ac2-4eb5-4f97-bf3b-1b49d40b4974', N'5bcbdda9-f3d9-44ae-804b-1445955bb9c2', 11.0000, N'Baked Pasta')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'508ccced-8bd0-4d1d-b3c6-2154eee18441', N'8247116d-4d86-4c75-82ae-df64f499efda', 4.5000, N'Long Black')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'2bf73ff3-dcce-41cf-b431-21f80177eab8', N'75ad6b8b-df5d-4453-ac24-31695f4a5396', 3.0000, N'Fruit')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'5db92842-0438-4d88-9d70-257ab85eac61', N'732614fc-f33b-48c1-bbc1-f34c1c3f8762', 3.0000, N'Caffeine Hit')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'9b76707e-0e7c-4875-98f2-27902f3d5f35', N'5bcbdda9-f3d9-44ae-804b-1445955bb9c2', 11.0000, N'Spaghetti Napoletana')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'39074eb1-9fab-4dd1-ac89-27e5903878e5', N'749b2aaf-ddd3-4fb0-b351-4fd6a7463b2d', 12.0000, N'Beef Burger')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'5e21d470-0097-4e3f-b908-280ea2182ce8', N'8247116d-4d86-4c75-82ae-df64f499efda', 4.5000, N'Flat White')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'd8879bb2-f209-4144-9ee6-2dbbfb0d619e', N'af0d691c-d05b-4b0f-859f-4c08ae0ee0c9', 5.0000, N'Cheesy Bread')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'22703874-a27c-400c-b378-2e15c6075544', N'e0620fed-05c8-4e12-a892-77b1f4b06998', 7.0000, N'Lamb Salad')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'2ec925ce-e022-4525-a29f-3ae9730d9e1e', N'de95c729-3068-442b-b041-49094a239636', 14.0000, N'Chef Made Chocolate Pudding')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'b778122b-f197-4743-a484-3c05861f3423', N'749b2aaf-ddd3-4fb0-b351-4fd6a7463b2d', 11.0000, N'Big Bacon Burgers')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'6b1dacde-6a19-48e4-b549-40387599a040', N'cb41e872-585a-4f57-90d3-a2fe050156b2', 16.0000, N'T-Bone Steak')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'892bb5fa-72c7-44bc-816e-407e0328b8f4', N'8247116d-4d86-4c75-82ae-df64f499efda', 4.5000, N'Mocha')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'c554dd4f-68d5-48a5-847b-40b95ed0a621', N'5bcbdda9-f3d9-44ae-804b-1445955bb9c2', 9.9500, N'Lasagne')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'a2296d83-6215-4f29-9805-40efe0cbaa6a', N'cb41e872-585a-4f57-90d3-a2fe050156b2', 14.0000, N'Kangaroo Steak')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'311f5ff9-bacc-4581-a4f6-426ca556daaa', N'e0620fed-05c8-4e12-a892-77b1f4b06998', 8.0000, N'Green Salad with Mango')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'1227768e-d66c-4486-a42f-454e5c9b5732', N'749b2aaf-ddd3-4fb0-b351-4fd6a7463b2d', 15.0000, N'Dino Burger')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'c5b97ae2-b2f4-4908-b2ed-4614de470dd0', N'153b2935-9c48-4517-bbb6-cb8b6d47456f', 7.0000, N'Mud Cake')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'54b80277-6b80-4ddb-a2cc-469219f249fb', N'732614fc-f33b-48c1-bbc1-f34c1c3f8762', 4.0000, N'Quick Regen')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'fded1daa-98b9-4f77-a6c4-47e07695d9ff', N'8247116d-4d86-4c75-82ae-df64f499efda', 4.9500, N'Cappuccino')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'44c7dfa5-7402-42e5-9cc7-4d44524331cf', N'749b2aaf-ddd3-4fb0-b351-4fd6a7463b2d', 9.9500, N'Chicken Burger')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'cac28c19-96ea-4287-9745-4f75c9a9dbf9', N'75ad6b8b-df5d-4453-ac24-31695f4a5396', 13.0000, N'Breafast Bunch')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'e3b58dc9-e94e-4bb6-b403-508421ddbb98', N'153b2935-9c48-4517-bbb6-cb8b6d47456f', 9.0000, N'Pavlova')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'05dcd1ff-6170-4dad-b400-572725107dc0', N'e0620fed-05c8-4e12-a892-77b1f4b06998', 8.0000, N'Baby Beetroot Salad')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'173b886e-1a66-415c-880f-5ac93432e3a4', N'de95c729-3068-442b-b041-49094a239636', 22.5000, N'Chicken on Deck')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'd7a93221-52c4-4f7a-aef4-5c20be89b828', N'cb41e872-585a-4f57-90d3-a2fe050156b2', 22.0000, N'Prime Grilled Chiefs Best')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'10ae2c2c-cd02-4776-81ad-5ddf94d25b9f', N'75ad6b8b-df5d-4453-ac24-31695f4a5396', 3.0000, N'Breakfast Cereal')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'daca9ee2-2469-461f-b0d4-60999d13cbc4', N'af0d691c-d05b-4b0f-859f-4c08ae0ee0c9', 5.0000, N'Chicken Skewers')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'00af80bc-34f7-4b42-849d-677f09fcf1db', N'e0620fed-05c8-4e12-a892-77b1f4b06998', 12.0000, N'Ceasar Salad')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'4738a638-4711-4287-b8f5-67d79eda99ba', N'af0d691c-d05b-4b0f-859f-4c08ae0ee0c9', 4.5000, N'Cheesy Baked Potato')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'89a2c11c-3180-4843-97c0-692e69c75081', N'af0d691c-d05b-4b0f-859f-4c08ae0ee0c9', 5.9500, N'Sauteed Baby Spinach')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'76dbd97d-5013-4f0e-85fb-6a8e8abde7f7', N'de95c729-3068-442b-b041-49094a239636', 20.0000, N'Great Pasta')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'81026b71-c148-4173-b4fd-6c4e3910ee02', N'de95c729-3068-442b-b041-49094a239636', 15.0000, N'Breakfast Buritos')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'49f799f9-bcd9-47ee-82d4-6cd7dca9bf51', N'de95c729-3068-442b-b041-49094a239636', 17.5000, N'Grilled Beef Bonanza')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'f905fd31-d0f3-43e2-ade7-6e7c2708da1d', N'8247116d-4d86-4c75-82ae-df64f499efda', 5.5000, N'Iced Tea')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'36e34986-016e-4548-b04f-723d40ea8992', N'732614fc-f33b-48c1-bbc1-f34c1c3f8762', 2.0000, N'Bottled Water')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'a454f560-46e7-45d9-8793-72c380734e93', N'75ad6b8b-df5d-4453-ac24-31695f4a5396', 4.0000, N'Frittata')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'0c62cb48-1cfe-4b9b-b69d-76195b6a3c34', N'75ad6b8b-df5d-4453-ac24-31695f4a5396', 4.5000, N'Bacon And Egg Foldover')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'6877ade7-3b4d-46db-949a-826e66ef98c4', N'75ad6b8b-df5d-4453-ac24-31695f4a5396', 4.0000, N'Muffin')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'a080c9e9-24bc-41ea-9737-89e6ca15c521', N'75ad6b8b-df5d-4453-ac24-31695f4a5396', 3.5000, N'Toast')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'fe7f95ff-871a-4aff-a737-8ad2f34ab9d3', N'75ad6b8b-df5d-4453-ac24-31695f4a5396', 3.0000, N'Pancakes')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'2fce5bd6-c9c3-48f0-a4a1-92d12c44ff77', N'153b2935-9c48-4517-bbb6-cb8b6d47456f', 8.0000, N'Banana Split')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'4b1085ed-fd40-4550-8ebc-9a6614a81885', N'e0620fed-05c8-4e12-a892-77b1f4b06998', 12.0000, N'Gardan Salad')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'9f9c8c48-6c7f-44c0-b62f-9bc22b80fd40', N'e0620fed-05c8-4e12-a892-77b1f4b06998', 8.0000, N'Antipasto Salad')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'dd950bda-822c-417a-983a-aa5af9ee096b', N'af0d691c-d05b-4b0f-859f-4c08ae0ee0c9', 7.0000, N'Side Salad')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'3fcad733-877d-498d-a6d1-ac590f1fcab9', N'153b2935-9c48-4517-bbb6-cb8b6d47456f', 8.0000, N'Tiramisu')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'cbe2447a-2f0c-4e75-b368-add48fbcf5ea', N'153b2935-9c48-4517-bbb6-cb8b6d47456f', 8.0000, N'Candy Caramel Dream')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'f8881c63-2b7e-48a0-9b77-af75e2788e15', N'732614fc-f33b-48c1-bbc1-f34c1c3f8762', 4.0000, N'Soft Drink Bottle')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'3a7a2cc6-28b7-4723-b930-afe18a43fed0', N'8247116d-4d86-4c75-82ae-df64f499efda', 4.0000, N'Latte')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'65d56402-ab8f-498d-b3ab-b3010851b5bd', N'8247116d-4d86-4c75-82ae-df64f499efda', 4.5000, N'Macchito')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'980bb376-53b0-4b9a-93fe-b7b3936bbe0a', N'153b2935-9c48-4517-bbb6-cb8b6d47456f', 7.0000, N'Hot Fudge Sunday')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'c8f27940-85da-4eb7-972e-bf06f61a09ed', N'749b2aaf-ddd3-4fb0-b351-4fd6a7463b2d', 10.0000, N'The Works Burgers')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'8a2a3b5c-783d-412c-b982-c24eebebbc7b', N'8247116d-4d86-4c75-82ae-df64f499efda', 5.0000, N'Caramel Latte')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'3cc4b801-6325-485d-9e7e-c5433ed7174e', N'8247116d-4d86-4c75-82ae-df64f499efda', 4.9500, N'Expresso')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'54d11475-71b8-491c-8181-ca32ee51a928', N'732614fc-f33b-48c1-bbc1-f34c1c3f8762', 4.0000, N'Fruit Juice')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'5e3c1482-8464-4dbd-b262-ce6d49bec53f', N'cb41e872-585a-4f57-90d3-a2fe050156b2', 13.0000, N'Beef Maranade')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'730b32a4-2213-42c0-894b-ceea4fdd59f7', N'cb41e872-585a-4f57-90d3-a2fe050156b2', 13.0000, N'Chicken Fried Steak')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'4b7d9564-e308-4b98-9dd4-d20ad161a6c0', N'af0d691c-d05b-4b0f-859f-4c08ae0ee0c9', 4.0000, N'Potato Wedges')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'bf98a74c-ad42-4eaa-8de1-d35610da922b', N'749b2aaf-ddd3-4fb0-b351-4fd6a7463b2d', 11.0000, N'Thunder Blunder Burger')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'9996d41b-c010-43d3-a242-df184f56cf16', N'af0d691c-d05b-4b0f-859f-4c08ae0ee0c9', 5.0000, N'Garlic Bread')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'546596ee-d5ac-45ae-bdda-df917b09a822', N'5bcbdda9-f3d9-44ae-804b-1445955bb9c2', 12.0000, N'Bolognese')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'8266fb25-4bb5-4ec8-8884-e65d4bb276ed', N'cb41e872-585a-4f57-90d3-a2fe050156b2', 14.0000, N'Grilled Tuna Steak')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'542b6313-04c8-4d1b-a17f-e947f217f4f8', N'af0d691c-d05b-4b0f-859f-4c08ae0ee0c9', 6.0000, N'Dunkin Dippers')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'ca8e198b-28f1-49d1-a1b2-e9acf5c9dcce', N'cb41e872-585a-4f57-90d3-a2fe050156b2', 16.0000, N'Rump Steak')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'695c7459-6400-4f38-8e02-edb8878deda1', N'732614fc-f33b-48c1-bbc1-f34c1c3f8762', 2.5000, N'Mineral Water')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'c9c41f85-28a5-4d80-9e37-f3a76fc9c860', N'75ad6b8b-df5d-4453-ac24-31695f4a5396', 4.0000, N'Breakfast Pizza')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'f3fd9e4c-6bfd-457c-a1fa-fa013bc602ff', N'153b2935-9c48-4517-bbb6-cb8b6d47456f', 7.5000, N'Vanilla Waterfall')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'14fd73ca-3cc8-433a-98d4-faeee648f472', N'5bcbdda9-f3d9-44ae-804b-1445955bb9c2', 11.9500, N'Greek Pasta')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'7f467f4c-e8bc-4833-b039-fb1108b0d1a0', N'749b2aaf-ddd3-4fb0-b351-4fd6a7463b2d', 11.0000, N'Hot And Spicy Burger')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'f32594e7-3c4b-472e-a627-fc6cea0ed808', N'5bcbdda9-f3d9-44ae-804b-1445955bb9c2', 11.0000, N'Carbonara')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'a5c8abe0-f7ca-48fa-a30f-fe1c565ef678', N'5bcbdda9-f3d9-44ae-804b-1445955bb9c2', 11.0000, N'Cheesy Peasy Pasta')
INSERT [dbo].[Product] ([Id], [CategoryId], [Price], [Description]) VALUES (N'5048e53c-7afb-4b0e-a828-fe8bb78f3677', N'153b2935-9c48-4517-bbb6-cb8b6d47456f', 9.9500, N'Cheese Cake')
INSERT [dbo].[Register] ([Id], [AreaId], [Name]) VALUES (N'376b44b3-2235-4bf8-b560-ed085692b30d', N'80a94d23-780e-4fa6-a907-2a83373388a3', N'Bean Scene Register')
INSERT [dbo].[Restaurant] ([Id], [Name]) VALUES (N'b177e4c7-ca5f-4266-b1db-5d3fdd704626', N'Bean Scene')
INSERT [dbo].[ServiceState] ([Id], [Description]) VALUES (1, N'Open')
INSERT [dbo].[ServiceState] ([Id], [Description]) VALUES (2, N'Closed')
INSERT [dbo].[ServiceState] ([Id], [Description]) VALUES (3, N'Reserved')
INSERT [dbo].[Table] ([Id], [StateId], [AreaId], [TableNumber]) VALUES (N'89a9a0d1-4a57-4c3d-b59e-03883e7799da', 1, N'4b01318e-330f-4e79-b31f-993fe4db8ec0', N'19')
INSERT [dbo].[Table] ([Id], [StateId], [AreaId], [TableNumber]) VALUES (N'bac61a22-8c97-4f9d-8615-03f9269d79ed', 1, N'80a94d23-780e-4fa6-a907-2a83373388a3', N'09')
INSERT [dbo].[Table] ([Id], [StateId], [AreaId], [TableNumber]) VALUES (N'4220f038-eed0-479c-84f2-238e1346a423', 1, N'4b01318e-330f-4e79-b31f-993fe4db8ec0', N'15')
INSERT [dbo].[Table] ([Id], [StateId], [AreaId], [TableNumber]) VALUES (N'd54fca69-c91b-47a5-bd05-360f27a0f55b', 1, N'4b01318e-330f-4e79-b31f-993fe4db8ec0', N'16')
INSERT [dbo].[Table] ([Id], [StateId], [AreaId], [TableNumber]) VALUES (N'44fb85f1-0b67-40ba-8b38-40af311b2b44', 1, N'4b01318e-330f-4e79-b31f-993fe4db8ec0', N'11')
INSERT [dbo].[Table] ([Id], [StateId], [AreaId], [TableNumber]) VALUES (N'85f70441-f8bd-4ff9-b3f3-5a62c37fa1f6', 1, N'80a94d23-780e-4fa6-a907-2a83373388a3', N'08')
INSERT [dbo].[Table] ([Id], [StateId], [AreaId], [TableNumber]) VALUES (N'da507171-5320-4a92-9932-a1cd3bec462a', 1, N'4b01318e-330f-4e79-b31f-993fe4db8ec0', N'20')
INSERT [dbo].[Table] ([Id], [StateId], [AreaId], [TableNumber]) VALUES (N'5cd9bcfd-4a8b-42bc-974b-a4e57495380f', 1, N'80a94d23-780e-4fa6-a907-2a83373388a3', N'03')
INSERT [dbo].[Table] ([Id], [StateId], [AreaId], [TableNumber]) VALUES (N'1d9e0603-85ba-4239-af9e-a521fc2e2837', 1, N'80a94d23-780e-4fa6-a907-2a83373388a3', N'06')
INSERT [dbo].[Table] ([Id], [StateId], [AreaId], [TableNumber]) VALUES (N'c77e7ee5-e3ef-48d1-840c-ac5364d20b6e', 1, N'4b01318e-330f-4e79-b31f-993fe4db8ec0', N'13')
INSERT [dbo].[Table] ([Id], [StateId], [AreaId], [TableNumber]) VALUES (N'81c095ec-97df-4473-9ca2-bf8f14ca694a', 1, N'80a94d23-780e-4fa6-a907-2a83373388a3', N'07')
INSERT [dbo].[Table] ([Id], [StateId], [AreaId], [TableNumber]) VALUES (N'6eed402c-d5e8-4b8f-a5aa-c416881c5097', 1, N'4b01318e-330f-4e79-b31f-993fe4db8ec0', N'18')
INSERT [dbo].[Table] ([Id], [StateId], [AreaId], [TableNumber]) VALUES (N'66221d08-249c-4277-8c6b-d27b17c44bb3', 1, N'80a94d23-780e-4fa6-a907-2a83373388a3', N'01')
INSERT [dbo].[Table] ([Id], [StateId], [AreaId], [TableNumber]) VALUES (N'fc89f2c9-c824-4fb6-96df-e30a5b370eaf', 1, N'4b01318e-330f-4e79-b31f-993fe4db8ec0', N'14')
INSERT [dbo].[Table] ([Id], [StateId], [AreaId], [TableNumber]) VALUES (N'b676feff-3077-43bd-8101-ed5457215825', 1, N'80a94d23-780e-4fa6-a907-2a83373388a3', N'10')
INSERT [dbo].[Table] ([Id], [StateId], [AreaId], [TableNumber]) VALUES (N'57190050-1766-4f67-8a33-ee6b9f015e86', 1, N'80a94d23-780e-4fa6-a907-2a83373388a3', N'02')
INSERT [dbo].[Table] ([Id], [StateId], [AreaId], [TableNumber]) VALUES (N'a0fc1eb1-6df1-4b6e-a15c-f6e7410612d4', 1, N'80a94d23-780e-4fa6-a907-2a83373388a3', N'05')
INSERT [dbo].[Table] ([Id], [StateId], [AreaId], [TableNumber]) VALUES (N'3d56ef30-c483-4bb8-bc2e-faae65134ab0', 1, N'4b01318e-330f-4e79-b31f-993fe4db8ec0', N'12')
INSERT [dbo].[Table] ([Id], [StateId], [AreaId], [TableNumber]) VALUES (N'9807e672-ee90-4260-81a8-fc73c0da1477', 1, N'80a94d23-780e-4fa6-a907-2a83373388a3', N'04')
INSERT [dbo].[Table] ([Id], [StateId], [AreaId], [TableNumber]) VALUES (N'0981627b-4b55-4e76-a374-fe3d8bdd4926', 1, N'4b01318e-330f-4e79-b31f-993fe4db8ec0', N'17')
INSERT [dbo].[UserAccount] ([Id], [Password], [StateId]) VALUES (N'8511fbff-63d8-411b-aa62-3696fb7d7a70', 2222, 2)
INSERT [dbo].[UserAccount] ([Id], [Password], [StateId]) VALUES (N'e7d72914-96d7-4edd-86c1-40841a49080a', 1111, 1)
INSERT [dbo].[UserAccount] ([Id], [Password], [StateId]) VALUES (N'26c68fd6-a106-48ff-9a37-43399a57c192', 3333, 2)
INSERT [dbo].[UserAccount] ([Id], [Password], [StateId]) VALUES (N'ace67795-fac0-4277-a3e2-a8407a37e102', 5555, 2)
INSERT [dbo].[UserAccount] ([Id], [Password], [StateId]) VALUES (N'15fc49b7-60c0-48f1-b6c7-db8439b7cc66', 4444, 2)
INSERT [dbo].[UserAccount] ([Id], [Password], [StateId]) VALUES (N'8a112892-21dc-4f4b-a62e-e04e9ebb4112', 6666, 3)
ALTER TABLE [dbo].[Area] ADD  CONSTRAINT [DF_Area_AreaId]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Area] ADD  CONSTRAINT [DF_Area_StateId]  DEFAULT ((1)) FOR [StateId]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[EmployeeState] ADD  CONSTRAINT [DF_EmployeeState_Id]  DEFAULT ((1)) FOR [Id]
GO
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[MenuProduct] ADD  CONSTRAINT [DF_MenuItemPrice_MenuItemPriceId]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[MenuProduct] ADD  CONSTRAINT [DF_MenuItemPrice_MenuId]  DEFAULT (newid()) FOR [MenuId]
GO
ALTER TABLE [dbo].[MenuProduct] ADD  CONSTRAINT [DF_MenuItemPrice_ProductId]  DEFAULT (newid()) FOR [ProductId]
GO
ALTER TABLE [dbo].[Payment] ADD  CONSTRAINT [DF_Payment_PaymentId]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Payment] ADD  CONSTRAINT [DF_Payment_SaleId]  DEFAULT (newid()) FOR [SaleId]
GO
ALTER TABLE [dbo].[Person] ADD  CONSTRAINT [DF_Person_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Register] ADD  CONSTRAINT [DF_Register_RegisterId]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Restaurant] ADD  CONSTRAINT [DF_Restaurant_RestaurantId]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Sale] ADD  CONSTRAINT [DF_Sale_SaleId]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Sale] ADD  CONSTRAINT [DF_Sale_RegisterId]  DEFAULT (newid()) FOR [RegisterId]
GO
ALTER TABLE [dbo].[Sale] ADD  CONSTRAINT [DF_Sale_Date]  DEFAULT (getdate()) FOR [Date]
GO
ALTER TABLE [dbo].[SaleLineItem] ADD  CONSTRAINT [DF_SaleLineItem_SaleId]  DEFAULT (newid()) FOR [SaleId]
GO
ALTER TABLE [dbo].[SaleLineItem] ADD  CONSTRAINT [DF_SaleLineItem_MenuItemPrice]  DEFAULT (newid()) FOR [MenuProductId]
GO
ALTER TABLE [dbo].[SaleLineItem] ADD  CONSTRAINT [DF_SaleLineItem_Quantity]  DEFAULT ((1)) FOR [Quantity]
GO
ALTER TABLE [dbo].[ServiceState] ADD  CONSTRAINT [DF_ServiceState_Id]  DEFAULT ((1)) FOR [Id]
GO
ALTER TABLE [dbo].[Table] ADD  CONSTRAINT [DF_Table_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Table] ADD  CONSTRAINT [DF_Table_StateId]  DEFAULT ((1)) FOR [StateId]
GO
ALTER TABLE [dbo].[Area]  WITH CHECK ADD  CONSTRAINT [FK_Area_Restaurant] FOREIGN KEY([RestaurantId])
REFERENCES [dbo].[Restaurant] ([Id])
GO
ALTER TABLE [dbo].[Area] CHECK CONSTRAINT [FK_Area_Restaurant]
GO
ALTER TABLE [dbo].[Area]  WITH CHECK ADD  CONSTRAINT [FK_Area_ServiceState] FOREIGN KEY([StateId])
REFERENCES [dbo].[ServiceState] ([Id])
GO
ALTER TABLE [dbo].[Area] CHECK CONSTRAINT [FK_Area_ServiceState]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Person] FOREIGN KEY([Id])
REFERENCES [dbo].[Person] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Person]
GO
ALTER TABLE [dbo].[Menu]  WITH CHECK ADD  CONSTRAINT [FK_Menu_Restaurant] FOREIGN KEY([RestaurantId])
REFERENCES [dbo].[Restaurant] ([Id])
GO
ALTER TABLE [dbo].[Menu] CHECK CONSTRAINT [FK_Menu_Restaurant]
GO
ALTER TABLE [dbo].[MenuProduct]  WITH CHECK ADD  CONSTRAINT [FK_MenuItemPrice_Menu] FOREIGN KEY([MenuId])
REFERENCES [dbo].[Menu] ([Id])
GO
ALTER TABLE [dbo].[MenuProduct] CHECK CONSTRAINT [FK_MenuItemPrice_Menu]
GO
ALTER TABLE [dbo].[MenuProduct]  WITH CHECK ADD  CONSTRAINT [FK_MenuItemPrice_Product1] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[MenuProduct] CHECK CONSTRAINT [FK_MenuItemPrice_Product1]
GO
ALTER TABLE [dbo].[OTCSale]  WITH CHECK ADD  CONSTRAINT [FK_OTCSale_Sale] FOREIGN KEY([Id])
REFERENCES [dbo].[Sale] ([Id])
GO
ALTER TABLE [dbo].[OTCSale] CHECK CONSTRAINT [FK_OTCSale_Sale]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_PaymentType] FOREIGN KEY([PaymentTypeId])
REFERENCES [dbo].[PaymentType] ([Id])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_PaymentType]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_Sale] FOREIGN KEY([SaleId])
REFERENCES [dbo].[Sale] ([Id])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_Sale]
GO
ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [FK_Person_Restaurant] FOREIGN KEY([RestaurantId])
REFERENCES [dbo].[Restaurant] ([Id])
GO
ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [FK_Person_Restaurant]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Register]  WITH CHECK ADD  CONSTRAINT [FK_Register_Area] FOREIGN KEY([AreaId])
REFERENCES [dbo].[Area] ([Id])
GO
ALTER TABLE [dbo].[Register] CHECK CONSTRAINT [FK_Register_Area]
GO
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK_Sale_Register] FOREIGN KEY([RegisterId])
REFERENCES [dbo].[Register] ([Id])
GO
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK_Sale_Register]
GO
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK_Sale_UserAccount] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserAccount] ([Id])
GO
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK_Sale_UserAccount]
GO
ALTER TABLE [dbo].[SaleLineItem]  WITH CHECK ADD  CONSTRAINT [FK_SaleLineItem_MenuItemPrice] FOREIGN KEY([MenuProductId])
REFERENCES [dbo].[MenuProduct] ([Id])
GO
ALTER TABLE [dbo].[SaleLineItem] CHECK CONSTRAINT [FK_SaleLineItem_MenuItemPrice]
GO
ALTER TABLE [dbo].[SaleLineItem]  WITH CHECK ADD  CONSTRAINT [FK_SaleLineItem_Sale] FOREIGN KEY([SaleId])
REFERENCES [dbo].[Sale] ([Id])
GO
ALTER TABLE [dbo].[SaleLineItem] CHECK CONSTRAINT [FK_SaleLineItem_Sale]
GO
ALTER TABLE [dbo].[Table]  WITH CHECK ADD  CONSTRAINT [FK_Table_Area] FOREIGN KEY([AreaId])
REFERENCES [dbo].[Area] ([Id])
GO
ALTER TABLE [dbo].[Table] CHECK CONSTRAINT [FK_Table_Area]
GO
ALTER TABLE [dbo].[Table]  WITH CHECK ADD  CONSTRAINT [FK_Table_ServiceState] FOREIGN KEY([StateId])
REFERENCES [dbo].[ServiceState] ([Id])
GO
ALTER TABLE [dbo].[Table] CHECK CONSTRAINT [FK_Table_ServiceState]
GO
ALTER TABLE [dbo].[TableSale]  WITH CHECK ADD  CONSTRAINT [FK_TableSale_Sale] FOREIGN KEY([Id])
REFERENCES [dbo].[Sale] ([Id])
GO
ALTER TABLE [dbo].[TableSale] CHECK CONSTRAINT [FK_TableSale_Sale]
GO
ALTER TABLE [dbo].[UserAccount]  WITH CHECK ADD  CONSTRAINT [FK_UserAccount_Employee] FOREIGN KEY([Id])
REFERENCES [dbo].[Employee] ([Id])
GO
ALTER TABLE [dbo].[UserAccount] CHECK CONSTRAINT [FK_UserAccount_Employee]
GO
ALTER TABLE [dbo].[UserAccount]  WITH CHECK ADD  CONSTRAINT [FK_UserAccount_EmployeeState] FOREIGN KEY([StateId])
REFERENCES [dbo].[EmployeeState] ([Id])
GO
ALTER TABLE [dbo].[UserAccount] CHECK CONSTRAINT [FK_UserAccount_EmployeeState]
GO
USE [master]
GO
ALTER DATABASE [BeanScene] SET  READ_WRITE 
GO
