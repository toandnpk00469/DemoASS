USE [master]
GO
/****** Object:  Database [dbf392e437b82c460fa409a634000de6c1]    Script Date: 29/06/2016 1:58:18 CH ******/
CREATE DATABASE [dbf392e437b82c460fa409a634000de6c1] ON  PRIMARY 
( NAME = N'dbf392e437b82c460fa409a634000de6c1', FILENAME = N'D:\mssqldata\dbf392e437b82c460fa409a634000de6c1.mdf' , SIZE = 2304KB , MAXSIZE = 20480KB , FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'dbf392e437b82c460fa409a634000de6c1_log', FILENAME = N'E:\mssqllog\dbf392e437b82c460fa409a634000de6c1_log.LDF' , SIZE = 504KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [dbf392e437b82c460fa409a634000de6c1] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbf392e437b82c460fa409a634000de6c1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbf392e437b82c460fa409a634000de6c1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbf392e437b82c460fa409a634000de6c1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbf392e437b82c460fa409a634000de6c1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbf392e437b82c460fa409a634000de6c1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbf392e437b82c460fa409a634000de6c1] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbf392e437b82c460fa409a634000de6c1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dbf392e437b82c460fa409a634000de6c1] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [dbf392e437b82c460fa409a634000de6c1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbf392e437b82c460fa409a634000de6c1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbf392e437b82c460fa409a634000de6c1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbf392e437b82c460fa409a634000de6c1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbf392e437b82c460fa409a634000de6c1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbf392e437b82c460fa409a634000de6c1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbf392e437b82c460fa409a634000de6c1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbf392e437b82c460fa409a634000de6c1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbf392e437b82c460fa409a634000de6c1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [dbf392e437b82c460fa409a634000de6c1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbf392e437b82c460fa409a634000de6c1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbf392e437b82c460fa409a634000de6c1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbf392e437b82c460fa409a634000de6c1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbf392e437b82c460fa409a634000de6c1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbf392e437b82c460fa409a634000de6c1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dbf392e437b82c460fa409a634000de6c1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbf392e437b82c460fa409a634000de6c1] SET RECOVERY FULL 
GO
ALTER DATABASE [dbf392e437b82c460fa409a634000de6c1] SET  MULTI_USER 
GO
ALTER DATABASE [dbf392e437b82c460fa409a634000de6c1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbf392e437b82c460fa409a634000de6c1] SET DB_CHAINING OFF 
GO
USE [dbf392e437b82c460fa409a634000de6c1]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 29/06/2016 1:58:21 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[TenNV] [nvarchar](50) NOT NULL,
	[Tuoi] [int] NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[Email] [nchar](50) NOT NULL,
	[Luong] [money] NOT NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roles]    Script Date: 29/06/2016 1:58:21 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleID] [int] NOT NULL,
	[TenRole] [nvarchar](50) NOT NULL,
	[MoTaRole] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 29/06/2016 1:58:21 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](30) NOT NULL,
	[Password] [varchar](30) NOT NULL,
	[RoleID] [int] NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [Tuoi], [DiaChi], [Email], [Luong]) VALUES (3, N'Đào Ngọc Toản', 20, N'Buôn Đôn', N'toandn@gmail.com                                  ', 10000000.0000)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [Tuoi], [DiaChi], [Email], [Luong]) VALUES (5, N'Lê Tấn An', 21, N'Cư Mgar, Đắk Lắk', N'anlt@gmail.com                                    ', 13000000.0000)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [Tuoi], [DiaChi], [Email], [Luong]) VALUES (6, N'Huỳnh Ngọc Tú', 22, N'Cư Mgar, Đắk Lắk', N'tuhn@gmail.com                                    ', 14000000.0000)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [Tuoi], [DiaChi], [Email], [Luong]) VALUES (7, N'Nguyễn Thanh Duy', 23, N'Đắk Nông', N'duynt@gmail.com                                   ', 15000000.0000)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [Tuoi], [DiaChi], [Email], [Luong]) VALUES (8, N'Nguyễn Văn Hậu', 23, N'Buôn Ma Thuột, Đắk Lắk', N'haunv@gmail.com                                   ', 15500000.0000)
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
INSERT [dbo].[Roles] ([RoleID], [TenRole], [MoTaRole]) VALUES (1, N'Quản trị viên', N'Quản lí')
INSERT [dbo].[Roles] ([RoleID], [TenRole], [MoTaRole]) VALUES (2, N'Người dùng', N'Xem')
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [UserName], [Password], [RoleID], [Fullname]) VALUES (1, N'admin', N'admin', 1, N'Quản trị viên')
INSERT [dbo].[Users] ([ID], [UserName], [Password], [RoleID], [Fullname]) VALUES (14, N'anlt', N'anlt', 2, N'Lê Tấn An')
INSERT [dbo].[Users] ([ID], [UserName], [Password], [RoleID], [Fullname]) VALUES (15, N'haunv', N'haunv', 2, N'Nguyễn Văn Hậu')
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Users] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([RoleID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Users]
GO
USE [master]
GO
ALTER DATABASE [dbf392e437b82c460fa409a634000de6c1] SET  READ_WRITE 
GO
