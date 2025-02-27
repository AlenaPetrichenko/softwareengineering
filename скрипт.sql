USE [master]
GO
/****** Object:  Database [Furniture_Factory]    Script Date: 27.11.2018 15:28:50 ******/
CREATE DATABASE [Furniture_Factory]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Furniture factory', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER1\MSSQL\DATA\Furniture factory.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Furniture factory_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER1\MSSQL\DATA\Furniture factory_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Furniture_Factory] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Furniture_Factory].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Furniture_Factory] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Furniture_Factory] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Furniture_Factory] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Furniture_Factory] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Furniture_Factory] SET ARITHABORT OFF 
GO
ALTER DATABASE [Furniture_Factory] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Furniture_Factory] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Furniture_Factory] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Furniture_Factory] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Furniture_Factory] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Furniture_Factory] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Furniture_Factory] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Furniture_Factory] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Furniture_Factory] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Furniture_Factory] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Furniture_Factory] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Furniture_Factory] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Furniture_Factory] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Furniture_Factory] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Furniture_Factory] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Furniture_Factory] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Furniture_Factory] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Furniture_Factory] SET RECOVERY FULL 
GO
ALTER DATABASE [Furniture_Factory] SET  MULTI_USER 
GO
ALTER DATABASE [Furniture_Factory] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Furniture_Factory] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Furniture_Factory] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Furniture_Factory] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Furniture_Factory] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Furniture_Factory', N'ON'
GO
USE [Furniture_Factory]
GO
/****** Object:  Table [dbo].[AdditionalServices]    Script Date: 27.11.2018 15:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdditionalServices](
	[PK_Services] [uniqueidentifier] NOT NULL,
	[Services] [nvarchar](50) NULL,
	[Price] [float] NULL,
 CONSTRAINT [PK_AdditionalServices] PRIMARY KEY CLUSTERED 
(
	[PK_Services] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 27.11.2018 15:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[PK_Category] [uniqueidentifier] NOT NULL,
	[Category] [nvarchar](50) NULL,
	[ProductionTime] [int] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[PK_Category] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Color]    Script Date: 27.11.2018 15:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[PK_Color] [uniqueidentifier] NOT NULL,
	[Color] [nvarchar](50) NULL,
 CONSTRAINT [PK_Color] PRIMARY KEY CLUSTERED 
(
	[PK_Color] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customer]    Script Date: 27.11.2018 15:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[PK_Customer] [uniqueidentifier] NOT NULL,
	[FIO] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[PK_Customer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Delivery]    Script Date: 27.11.2018 15:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Delivery](
	[PK_Delivery] [uniqueidentifier] NOT NULL,
	[DeliveryCity] [nvarchar](50) NULL,
	[DeliveryAddress] [nvarchar](max) NULL,
 CONSTRAINT [PK_Delivery] PRIMARY KEY CLUSTERED 
(
	[PK_Delivery] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employee]    Script Date: 27.11.2018 15:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[PK_Employee] [uniqueidentifier] NOT NULL,
	[FK_Position] [uniqueidentifier] NULL,
	[FIO] [nvarchar](max) NULL,
	[Phone] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[DateOfBirthday] [date] NULL,
	[FK_User] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[PK_Employee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Material]    Script Date: 27.11.2018 15:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material](
	[PK_Material] [uniqueidentifier] NOT NULL,
	[Material] [nvarchar](50) NULL,
	[Price] [float] NULL,
 CONSTRAINT [PK_Material] PRIMARY KEY CLUSTERED 
(
	[PK_Material] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order]    Script Date: 27.11.2018 15:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[PK_Order] [uniqueidentifier] NOT NULL,
	[FK_Customer] [uniqueidentifier] NULL,
	[FK_Employee] [uniqueidentifier] NULL,
	[DateOfRegistration] [date] NULL,
	[FK_Delivery] [uniqueidentifier] NULL,
	[FK_Service] [uniqueidentifier] NULL,
	[Sum] [float] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[PK_Order] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderContent]    Script Date: 27.11.2018 15:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderContent](
	[FK_Order] [uniqueidentifier] NULL,
	[FK_Product] [uniqueidentifier] NULL,
	[Quantity] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Position]    Script Date: 27.11.2018 15:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[PK_Position] [uniqueidentifier] NOT NULL,
	[Position] [nvarchar](50) NULL,
	[Salary] [float] NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[PK_Position] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 27.11.2018 15:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[PK_Product] [uniqueidentifier] NOT NULL,
	[Product] [nvarchar](50) NULL,
	[Price] [float] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[PK_Product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductConsist]    Script Date: 27.11.2018 15:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductConsist](
	[PK_ProductConsist] [uniqueidentifier] NOT NULL,
	[FK_Product] [uniqueidentifier] NULL,
	[FK_ProductItem] [uniqueidentifier] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_ProductConsist] PRIMARY KEY CLUSTERED 
(
	[PK_ProductConsist] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductItem]    Script Date: 27.11.2018 15:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductItem](
	[PK_ProductItem] [uniqueidentifier] NOT NULL,
	[ProductItem] [nvarchar](50) NULL,
	[FK_Category] [uniqueidentifier] NULL,
	[FK_Material] [uniqueidentifier] NULL,
	[FK_Color] [uniqueidentifier] NULL,
	[Size] [nvarchar](50) NULL,
	[Price] [float] NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[PK_ProductItem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 27.11.2018 15:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[PK_User] [uniqueidentifier] NOT NULL,
	[Login] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[PK_User] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[AdditionalServices] ADD  CONSTRAINT [DF_AdditionalServices_PK_Services]  DEFAULT (newid()) FOR [PK_Services]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_PK_Category]  DEFAULT (newid()) FOR [PK_Category]
GO
ALTER TABLE [dbo].[Color] ADD  CONSTRAINT [DF_Color_PK_Color]  DEFAULT (newid()) FOR [PK_Color]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_PK_Customer]  DEFAULT (newid()) FOR [PK_Customer]
GO
ALTER TABLE [dbo].[Delivery] ADD  CONSTRAINT [DF_Delivery_PK_Delivery]  DEFAULT (newid()) FOR [PK_Delivery]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_PK_Employee]  DEFAULT (newid()) FOR [PK_Employee]
GO
ALTER TABLE [dbo].[Material] ADD  CONSTRAINT [DF_Material_PK_Material]  DEFAULT (newid()) FOR [PK_Material]
GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_Order_PK_Order]  DEFAULT (newid()) FOR [PK_Order]
GO
ALTER TABLE [dbo].[OrderContent] ADD  CONSTRAINT [DF_OrderContent_FK_Order]  DEFAULT (newid()) FOR [FK_Order]
GO
ALTER TABLE [dbo].[Position] ADD  CONSTRAINT [DF_Position_PK_Position]  DEFAULT (newid()) FOR [PK_Position]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_PK_Product]  DEFAULT (newid()) FOR [PK_Product]
GO
ALTER TABLE [dbo].[ProductConsist] ADD  CONSTRAINT [DF_ProductConsist_PK_ProductConsist]  DEFAULT (newid()) FOR [PK_ProductConsist]
GO
ALTER TABLE [dbo].[ProductItem] ADD  CONSTRAINT [DF_ProductItem_PK_ProductItem]  DEFAULT (newid()) FOR [PK_ProductItem]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_PK_User]  DEFAULT (newid()) FOR [PK_User]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Position] FOREIGN KEY([FK_Position])
REFERENCES [dbo].[Position] ([PK_Position])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Position]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Users] FOREIGN KEY([FK_User])
REFERENCES [dbo].[Users] ([PK_User])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Users]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_AdditionalServices] FOREIGN KEY([FK_Service])
REFERENCES [dbo].[AdditionalServices] ([PK_Services])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_AdditionalServices]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer] FOREIGN KEY([FK_Customer])
REFERENCES [dbo].[Customer] ([PK_Customer])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Customer]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Delivery] FOREIGN KEY([FK_Delivery])
REFERENCES [dbo].[Delivery] ([PK_Delivery])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Delivery]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Employee] FOREIGN KEY([FK_Employee])
REFERENCES [dbo].[Employee] ([PK_Employee])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Employee]
GO
ALTER TABLE [dbo].[OrderContent]  WITH CHECK ADD  CONSTRAINT [FK_OrderContent_Order] FOREIGN KEY([FK_Order])
REFERENCES [dbo].[Order] ([PK_Order])
GO
ALTER TABLE [dbo].[OrderContent] CHECK CONSTRAINT [FK_OrderContent_Order]
GO
ALTER TABLE [dbo].[OrderContent]  WITH CHECK ADD  CONSTRAINT [FK_OrderContent_Product] FOREIGN KEY([FK_Product])
REFERENCES [dbo].[Product] ([PK_Product])
GO
ALTER TABLE [dbo].[OrderContent] CHECK CONSTRAINT [FK_OrderContent_Product]
GO
ALTER TABLE [dbo].[ProductConsist]  WITH CHECK ADD  CONSTRAINT [FK_ProductConsist_Product] FOREIGN KEY([FK_Product])
REFERENCES [dbo].[Product] ([PK_Product])
GO
ALTER TABLE [dbo].[ProductConsist] CHECK CONSTRAINT [FK_ProductConsist_Product]
GO
ALTER TABLE [dbo].[ProductConsist]  WITH CHECK ADD  CONSTRAINT [FK_ProductConsist_ProductItem] FOREIGN KEY([FK_ProductItem])
REFERENCES [dbo].[ProductItem] ([PK_ProductItem])
GO
ALTER TABLE [dbo].[ProductConsist] CHECK CONSTRAINT [FK_ProductConsist_ProductItem]
GO
ALTER TABLE [dbo].[ProductItem]  WITH CHECK ADD  CONSTRAINT [FK_ProductItem_Category] FOREIGN KEY([FK_Category])
REFERENCES [dbo].[Category] ([PK_Category])
GO
ALTER TABLE [dbo].[ProductItem] CHECK CONSTRAINT [FK_ProductItem_Category]
GO
ALTER TABLE [dbo].[ProductItem]  WITH CHECK ADD  CONSTRAINT [FK_ProductItem_Color] FOREIGN KEY([FK_Color])
REFERENCES [dbo].[Color] ([PK_Color])
GO
ALTER TABLE [dbo].[ProductItem] CHECK CONSTRAINT [FK_ProductItem_Color]
GO
ALTER TABLE [dbo].[ProductItem]  WITH CHECK ADD  CONSTRAINT [FK_ProductItem_Material1] FOREIGN KEY([FK_Material])
REFERENCES [dbo].[Material] ([PK_Material])
GO
ALTER TABLE [dbo].[ProductItem] CHECK CONSTRAINT [FK_ProductItem_Material1]
GO
/****** Object:  StoredProcedure [dbo].[DEL_Colorx]    Script Date: 27.11.2018 15:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DEL_Colorx] 
@ID_Row AS uniqueidentifier 
AS 
DELETE FROM Color WHERE PK_Color= @ID_Row; 

GO
USE [master]
GO
ALTER DATABASE [Furniture_Factory] SET  READ_WRITE 
GO
