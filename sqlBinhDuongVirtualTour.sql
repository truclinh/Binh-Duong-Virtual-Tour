USE [master]
GO
/****** Object:  Database [BinhDuongVirtualTour]    Script Date: 26/11/2017 12:02:35 SA ******/
CREATE DATABASE [BinhDuongVirtualTour]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BinhDuongVirtualTour', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\BinhDuongVirtualTour.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BinhDuongVirtualTour_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\BinhDuongVirtualTour_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BinhDuongVirtualTour] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BinhDuongVirtualTour].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BinhDuongVirtualTour] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BinhDuongVirtualTour] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BinhDuongVirtualTour] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BinhDuongVirtualTour] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BinhDuongVirtualTour] SET ARITHABORT OFF 
GO
ALTER DATABASE [BinhDuongVirtualTour] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BinhDuongVirtualTour] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BinhDuongVirtualTour] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BinhDuongVirtualTour] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BinhDuongVirtualTour] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BinhDuongVirtualTour] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BinhDuongVirtualTour] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BinhDuongVirtualTour] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BinhDuongVirtualTour] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BinhDuongVirtualTour] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BinhDuongVirtualTour] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BinhDuongVirtualTour] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BinhDuongVirtualTour] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BinhDuongVirtualTour] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BinhDuongVirtualTour] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BinhDuongVirtualTour] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BinhDuongVirtualTour] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BinhDuongVirtualTour] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BinhDuongVirtualTour] SET  MULTI_USER 
GO
ALTER DATABASE [BinhDuongVirtualTour] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BinhDuongVirtualTour] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BinhDuongVirtualTour] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BinhDuongVirtualTour] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [BinhDuongVirtualTour] SET DELAYED_DURABILITY = DISABLED 
GO
USE [BinhDuongVirtualTour]
GO
/****** Object:  Table [dbo].[PLACE]    Script Date: 26/11/2017 12:02:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PLACE](
	[idType] [int] IDENTITY(1,1) NOT NULL,
	[Place_Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_PLACE] PRIMARY KEY CLUSTERED 
(
	[idType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VISIT_IMAGE]    Script Date: 26/11/2017 12:02:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VISIT_IMAGE](
	[Img_Id] [int] IDENTITY(1,1) NOT NULL,
	[Img_Src] [nvarchar](max) NOT NULL,
	[Img_Title] [nvarchar](100) NOT NULL,
	[Img_Link] [nvarchar](100) NOT NULL,
	[Img_Area] [varchar](50) NULL,
	[lat] [float] NULL,
	[lng] [float] NULL,
	[idType] [int] NULL,
 CONSTRAINT [PK_VISIT_IMAGE] PRIMARY KEY CLUSTERED 
(
	[Img_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PLACE] ON 

INSERT [dbo].[PLACE] ([idType], [Place_Name]) VALUES (1, N'Trường Đại học Thủ Dầu Một')
INSERT [dbo].[PLACE] ([idType], [Place_Name]) VALUES (2, N'Thành phố mới Bình Dương')
SET IDENTITY_INSERT [dbo].[PLACE] OFF
SET IDENTITY_INSERT [dbo].[VISIT_IMAGE] ON 

INSERT [dbo].[VISIT_IMAGE] ([Img_Id], [Img_Src], [Img_Title], [Img_Link], [Img_Area], [lat], [lng], [idType]) VALUES (15, N'imgCong1.jpg', N'Cổng 1', N'Cong1', N'cong1', 10.980796, 106.675481, 1)
INSERT [dbo].[VISIT_IMAGE] ([Img_Id], [Img_Src], [Img_Title], [Img_Link], [Img_Area], [lat], [lng], [idType]) VALUES (16, N'imgSanCo.jpg', N'Sân cờ', N'SanCo', N'sanco1', 10.980632, 106.674574, 1)
INSERT [dbo].[VISIT_IMAGE] ([Img_Id], [Img_Src], [Img_Title], [Img_Link], [Img_Area], [lat], [lng], [idType]) VALUES (17, N'imgVuonHocTapCong2.jpg', N'Vườn học tập cổng 2', N'VuonHocTapCong2', N'vuonhoctapcong2', 10.980373, 106.674911, 1)
INSERT [dbo].[VISIT_IMAGE] ([Img_Id], [Img_Src], [Img_Title], [Img_Link], [Img_Area], [lat], [lng], [idType]) VALUES (18, N'imgVuonHocTap.jpg', N'Vườn học tập', N'VuonHocTap', N'vuonhoctap1', 10.981546, 106.67416, 1)
INSERT [dbo].[VISIT_IMAGE] ([Img_Id], [Img_Src], [Img_Title], [Img_Link], [Img_Area], [lat], [lng], [idType]) VALUES (19, N'imgHoiTruong1.jpg', N'Hội trường 1', N'HoiTruong1', N'hoitruong1', 10.980424, 106.673766, 1)
INSERT [dbo].[VISIT_IMAGE] ([Img_Id], [Img_Src], [Img_Title], [Img_Link], [Img_Area], [lat], [lng], [idType]) VALUES (20, N'imgHoiTruong2.jpg', N'Hội trường 2', N'HoiTruong2', N'hoitruong2', 10.98078, 106.674375, 1)
INSERT [dbo].[VISIT_IMAGE] ([Img_Id], [Img_Src], [Img_Title], [Img_Link], [Img_Area], [lat], [lng], [idType]) VALUES (21, N'imgThuVien.jpg', N'Thư viện', N'ThuVien', N'thuvien', 10.980879, 106.674658, 1)
INSERT [dbo].[VISIT_IMAGE] ([Img_Id], [Img_Src], [Img_Title], [Img_Link], [Img_Area], [lat], [lng], [idType]) VALUES (22, N'imgDayPhongMay.jpg', N'Dãy phòng máy', N'DayPhongMay', N'dayphongmay', 10.980601, 106.67336, 1)
INSERT [dbo].[VISIT_IMAGE] ([Img_Id], [Img_Src], [Img_Title], [Img_Link], [Img_Area], [lat], [lng], [idType]) VALUES (23, N'imgPhongLab.jpg', N'Phòng Lab', N'PhongLab', N'phonglab', 10.979346, 106.675048, 1)
INSERT [dbo].[VISIT_IMAGE] ([Img_Id], [Img_Src], [Img_Title], [Img_Link], [Img_Area], [lat], [lng], [idType]) VALUES (24, N'imgBaiXe.jpg', N'Bãi xe', N'BaiXe', N'baixehoi', 10.979237, 106.674645, 1)
INSERT [dbo].[VISIT_IMAGE] ([Img_Id], [Img_Src], [Img_Title], [Img_Link], [Img_Area], [lat], [lng], [idType]) VALUES (25, N'imgTrungTamHoiNghiVaTrienLam.jpg', N'Trung tâm Hội nghị và Triển lãm tỉnh Bình Dương', N'TrungTamHoiNghiVaTrienLam', N'trungtamhoinghivatrienlam', 11.053886, 106.68232, 2)
INSERT [dbo].[VISIT_IMAGE] ([Img_Id], [Img_Src], [Img_Title], [Img_Link], [Img_Area], [lat], [lng], [idType]) VALUES (26, N'imgTrungTamHanhChinh.jpg', N'Trung tâm hành chính tỉnh Bình Dương', N'TrungTamHanhChinh', N'trungtamhanhchinh', 11.056657, 106.682536, 2)
INSERT [dbo].[VISIT_IMAGE] ([Img_Id], [Img_Src], [Img_Title], [Img_Link], [Img_Area], [lat], [lng], [idType]) VALUES (27, N'imgDaiPhunNuocTPM.jpg', N'Đài phun nước trung tâm TP mới Bình Dương', N'DaiPhunNuocTPM', N'daiphunnuoctpm', 11.05344, 106.680575, 2)
INSERT [dbo].[VISIT_IMAGE] ([Img_Id], [Img_Src], [Img_Title], [Img_Link], [Img_Area], [lat], [lng], [idType]) VALUES (28, N'imgCongVienTPM.jpg', N'Công viên trung tâm TP mới Bình Dương', N'CongVienTPM', N'congvientpm', 11.052821, 106.67907, 2)
INSERT [dbo].[VISIT_IMAGE] ([Img_Id], [Img_Src], [Img_Title], [Img_Link], [Img_Area], [lat], [lng], [idType]) VALUES (29, N'imgCongChua.jpg', N'Cổng chùa', N'CongChua', N'congchua', 10.981158, 106.659045, 3)
INSERT [dbo].[VISIT_IMAGE] ([Img_Id], [Img_Src], [Img_Title], [Img_Link], [Img_Area], [lat], [lng], [idType]) VALUES (30, N'imgSanChua.jpg', N'Sân chùa', N'SanChua', N'sanchua', 10.981472, 106.658964, 3)
INSERT [dbo].[VISIT_IMAGE] ([Img_Id], [Img_Src], [Img_Title], [Img_Link], [Img_Area], [lat], [lng], [idType]) VALUES (32, N'imgTuongPhatLon.jpg', N'Tượng phật lớn', N'Tượng phật lớn', N'tuongphatlon', 10.980588, 106.658853, 3)
INSERT [dbo].[VISIT_IMAGE] ([Img_Id], [Img_Src], [Img_Title], [Img_Link], [Img_Area], [lat], [lng], [idType]) VALUES (33, N'imgCongTruongEIU.jpg', N'Cổng trường EIU', N'CongTruongEIU', N'congtruongeiu', 11.053026, 106.668433, 4)
INSERT [dbo].[VISIT_IMAGE] ([Img_Id], [Img_Src], [Img_Title], [Img_Link], [Img_Area], [lat], [lng], [idType]) VALUES (34, N'imgHanhLangEIU.JPG', N'Hành lang EIU', N'HanhLangEIU', N'hanhlangeiu', 11.052312, 106.667931, 4)
INSERT [dbo].[VISIT_IMAGE] ([Img_Id], [Img_Src], [Img_Title], [Img_Link], [Img_Area], [lat], [lng], [idType]) VALUES (35, N'imgSanTruongEIU.JPG', N'Sân trường EIU', N'SanTruongEIU', N'santruongeiu', 11.053045, 106.667059, 4)
SET IDENTITY_INSERT [dbo].[VISIT_IMAGE] OFF
USE [master]
GO
ALTER DATABASE [BinhDuongVirtualTour] SET  READ_WRITE 
GO
