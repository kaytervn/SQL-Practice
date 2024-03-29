USE [master]
GO
/****** Object:  Database [QuanLyThuVien]    Script Date: 12/10/18 1:45:04 PM ******/
CREATE DATABASE [QuanLyThuVien]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyThuVien', FILENAME = N'D:\Bai Giang\Bai Giang Chau\Co So Du Lieu\Co So Du Lieu 1\BaiTap\SQL\QuanLyThuVien.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuanLyThuVien_log', FILENAME = N'D:\Bai Giang\Bai Giang Chau\Co So Du Lieu\Co So Du Lieu 1\BaiTap\SQL\QuanLyThuVien.ldf' , SIZE = 3136KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QuanLyThuVien] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyThuVien].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyThuVien] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyThuVien] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyThuVien] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLyThuVien] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyThuVien] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET RECOVERY FULL 
GO
ALTER DATABASE [QuanLyThuVien] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyThuVien] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyThuVien] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyThuVien] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QuanLyThuVien] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QuanLyThuVien', N'ON'
GO
ALTER DATABASE [QuanLyThuVien] SET QUERY_STORE = OFF
GO
USE [QuanLyThuVien]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [QuanLyThuVien]
GO
/****** Object:  Table [dbo].[DocGia]    Script Date: 12/10/18 1:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocGia](
	[MaDG] [nchar](10) NOT NULL,
	[TenDG] [nvarchar](50) NULL,
 CONSTRAINT [PK_DocGia] PRIMARY KEY CLUSTERED 
(
	[MaDG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Muon]    Script Date: 12/10/18 1:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Muon](
	[MaDG] [nchar](10) NOT NULL,
	[MaSach] [nchar](10) NOT NULL,
	[NgayMuon] [nchar](10) NOT NULL,
	[NgayTra] [nchar](10) NULL,
 CONSTRAINT [PK_Muon] PRIMARY KEY CLUSTERED 
(
	[MaDG] ASC,
	[MaSach] ASC,
	[NgayMuon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaXB]    Script Date: 12/10/18 1:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaXB](
	[MaNXB] [nchar](10) NOT NULL,
	[TenNXB] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NhaXB_1] PRIMARY KEY CLUSTERED 
(
	[MaNXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sach]    Script Date: 12/10/18 1:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[MaSach] [nchar](10) NOT NULL,
	[TenSach] [nvarchar](50) NOT NULL,
	[NamXB] [nchar](10) NULL,
	[MaNXB] [nchar](10) NOT NULL,
	[TenTG] [nvarchar](50) NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[DocGia] ([MaDG], [TenDG]) VALUES (N'DG1       ', N'Huynh Trung Chanh')
INSERT [dbo].[DocGia] ([MaDG], [TenDG]) VALUES (N'DG2       ', N'Bui Ngoc Minh Tam')
INSERT [dbo].[DocGia] ([MaDG], [TenDG]) VALUES (N'DG3       ', N'Nguyen Minh Tri')
INSERT [dbo].[Muon] ([MaDG], [MaSach], [NgayMuon], [NgayTra]) VALUES (N'DG1       ', N'S1        ', N'01/02/2013', NULL)
INSERT [dbo].[Muon] ([MaDG], [MaSach], [NgayMuon], [NgayTra]) VALUES (N'DG1       ', N'S2        ', N'1/1/2013  ', N'1/5/2013  ')
INSERT [dbo].[Muon] ([MaDG], [MaSach], [NgayMuon], [NgayTra]) VALUES (N'DG1       ', N'S3        ', N'1/6/2013  ', NULL)
INSERT [dbo].[Muon] ([MaDG], [MaSach], [NgayMuon], [NgayTra]) VALUES (N'DG1       ', N'S4        ', N'1/10/2013 ', NULL)
INSERT [dbo].[Muon] ([MaDG], [MaSach], [NgayMuon], [NgayTra]) VALUES (N'DG1       ', N'S5        ', N'10/03/2013', N'15/03/2013')
INSERT [dbo].[Muon] ([MaDG], [MaSach], [NgayMuon], [NgayTra]) VALUES (N'DG1       ', N'S6        ', N'02/21/2013', N'02/25/2013')
INSERT [dbo].[Muon] ([MaDG], [MaSach], [NgayMuon], [NgayTra]) VALUES (N'DG1       ', N'S7        ', N'03/20/2013', NULL)
INSERT [dbo].[Muon] ([MaDG], [MaSach], [NgayMuon], [NgayTra]) VALUES (N'DG2       ', N'S2        ', N'01/02/2013', N'08/02/2013')
INSERT [dbo].[Muon] ([MaDG], [MaSach], [NgayMuon], [NgayTra]) VALUES (N'DG2       ', N'S2        ', N'01/03/2013', NULL)
INSERT [dbo].[Muon] ([MaDG], [MaSach], [NgayMuon], [NgayTra]) VALUES (N'DG2       ', N'S3        ', N'01/03/2013', N'07/03/2013')
INSERT [dbo].[Muon] ([MaDG], [MaSach], [NgayMuon], [NgayTra]) VALUES (N'DG2       ', N'S4        ', N'01/03/2013', NULL)
INSERT [dbo].[Muon] ([MaDG], [MaSach], [NgayMuon], [NgayTra]) VALUES (N'DG2       ', N'S5        ', N'15/02/2013', NULL)
INSERT [dbo].[NhaXB] ([MaNXB], [TenNXB]) VALUES (N'NXB1      ', N'Tre')
INSERT [dbo].[NhaXB] ([MaNXB], [TenNXB]) VALUES (N'NXB2      ', N'DHQG')
INSERT [dbo].[NhaXB] ([MaNXB], [TenNXB]) VALUES (N'NXB3      ', N'Tri Tue')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [NamXB], [MaNXB], [TenTG]) VALUES (N'S1        ', N'He CSDL', N'2006      ', N'NXB2      ', N'Duong Tuan Anh')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [NamXB], [MaNXB], [TenTG]) VALUES (N'S2        ', N'CSDL Phan Bo', N'2010      ', N'NXB2      ', N'Nguyen Trung Truc')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [NamXB], [MaNXB], [TenTG]) VALUES (N'S3        ', N'Mui Huong Tram', N'2012      ', N'NXB1      ', N'Nguyen Tuong Bach')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [NamXB], [MaNXB], [TenTG]) VALUES (N'S4        ', N'Suoi Nguon Tuoi Tre', N'2010      ', N'NXB1      ', N'Le Thuy Tuoi')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [NamXB], [MaNXB], [TenTG]) VALUES (N'S5        ', N'So Do Tu Duy', N'2012      ', N'NXB3      ', N'Tony Buzzan')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [NamXB], [MaNXB], [TenTG]) VALUES (N'S6        ', N'Phuong Phap Hoc Dai Hoc', N'2010      ', N'NXB3      ', N'Tony Buzzan')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [NamXB], [MaNXB], [TenTG]) VALUES (N'S7        ', N'Khai Pha Du Lieu', N'2008      ', N'NXB2      ', N'Duong Tuan Anh')
ALTER TABLE [dbo].[Muon]  WITH CHECK ADD  CONSTRAINT [FK_Muon_DocGia] FOREIGN KEY([MaDG])
REFERENCES [dbo].[DocGia] ([MaDG])
GO
ALTER TABLE [dbo].[Muon] CHECK CONSTRAINT [FK_Muon_DocGia]
GO
ALTER TABLE [dbo].[Muon]  WITH CHECK ADD  CONSTRAINT [FK_Muon_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
GO
ALTER TABLE [dbo].[Muon] CHECK CONSTRAINT [FK_Muon_Sach]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_NhaXB] FOREIGN KEY([MaNXB])
REFERENCES [dbo].[NhaXB] ([MaNXB])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_NhaXB]
GO
/****** Object:  StoredProcedure [dbo].[Test]    Script Date: 12/10/18 1:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Test]
@Lenh int = 0
AS
BEGIN
	if (@Lenh = 1)
		return 1
	if (@Lenh = 2) begin
		declare @float float
		set @float = 2.6
		return @float
	end
	if (@Lenh = 3) begin
		declare @char varchar(50)
		set @char = 'hello'
		return @char
	end
END

GO
/****** Object:  StoredProcedure [dbo].[TestSelect]    Script Date: 12/10/18 1:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[TestSelect]
AS
BEGIN
	SELECT * FROM QuanLyLopHoc.DBO.Lop
END

GO
/****** Object:  StoredProcedure [dbo].[Tru]    Script Date: 12/10/18 1:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Tru]
@So1 int,
@So2 int,
@Kq int out
AS
BEGIN
	set @Kq = @So1 - @So2
END

GO
/****** Object:  StoredProcedure [dbo].[XinChao]    Script Date: 12/10/18 1:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[XinChao]
	@hoTen nvarchar(50)
AS
BEGIN
	print N'Xin chào ' + @hoTen
END

GO
USE [master]
GO
ALTER DATABASE [QuanLyThuVien] SET  READ_WRITE 
GO
