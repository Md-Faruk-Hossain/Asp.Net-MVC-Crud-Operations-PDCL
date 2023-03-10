USE [master]
GO
/****** Object:  Database [DCMDb]    Script Date: 2/9/2023 1:52:15 PM ******/
CREATE DATABASE [DCMDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DCMDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DCMDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DCMDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DCMDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DCMDb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DCMDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DCMDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DCMDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DCMDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DCMDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DCMDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [DCMDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DCMDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DCMDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DCMDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DCMDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DCMDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DCMDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DCMDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DCMDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DCMDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DCMDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DCMDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DCMDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DCMDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DCMDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DCMDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DCMDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DCMDb] SET RECOVERY FULL 
GO
ALTER DATABASE [DCMDb] SET  MULTI_USER 
GO
ALTER DATABASE [DCMDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DCMDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DCMDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DCMDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DCMDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DCMDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DCMDb', N'ON'
GO
ALTER DATABASE [DCMDb] SET QUERY_STORE = OFF
GO
USE [DCMDb]
GO
/****** Object:  Table [dbo].[EntryTests]    Script Date: 2/9/2023 1:52:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntryTests](
	[EntryTestsId] [int] IDENTITY(1,1) NOT NULL,
	[TestEntryId] [int] NOT NULL,
	[TestId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.EntryTests] PRIMARY KEY CLUSTERED 
(
	[TestEntryId] ASC,
	[TestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TestEntries]    Script Date: 2/9/2023 1:52:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestEntries](
	[TestEntryId] [int] IDENTITY(1,1) NOT NULL,
	[PatientName] [nvarchar](50) NOT NULL,
	[Picture] [nvarchar](150) NOT NULL,
	[Age] [int] NOT NULL,
	[MobileNo] [nvarchar](20) NOT NULL,
	[TestDate] [date] NOT NULL,
	[DueDate] [date] NOT NULL,
 CONSTRAINT [PK_dbo.TestEntries] PRIMARY KEY CLUSTERED 
(
	[TestEntryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tests]    Script Date: 2/9/2023 1:52:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tests](
	[TestId] [int] IDENTITY(1,1) NOT NULL,
	[TestName] [nvarchar](50) NOT NULL,
	[Fee] [money] NOT NULL,
	[Available] [bit] NOT NULL,
	[TestTypeId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Tests] PRIMARY KEY CLUSTERED 
(
	[TestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TestTypes]    Script Date: 2/9/2023 1:52:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestTypes](
	[TestTypeId] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_dbo.TestTypes] PRIMARY KEY CLUSTERED 
(
	[TestTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[EntryTests] ON 

INSERT [dbo].[EntryTests] ([EntryTestsId], [TestEntryId], [TestId]) VALUES (26, 12, 12)
INSERT [dbo].[EntryTests] ([EntryTestsId], [TestEntryId], [TestId]) VALUES (27, 12, 14)
INSERT [dbo].[EntryTests] ([EntryTestsId], [TestEntryId], [TestId]) VALUES (28, 13, 12)
INSERT [dbo].[EntryTests] ([EntryTestsId], [TestEntryId], [TestId]) VALUES (29, 13, 13)
INSERT [dbo].[EntryTests] ([EntryTestsId], [TestEntryId], [TestId]) VALUES (30, 13, 14)
SET IDENTITY_INSERT [dbo].[EntryTests] OFF
GO
SET IDENTITY_INSERT [dbo].[TestEntries] ON 

INSERT [dbo].[TestEntries] ([TestEntryId], [PatientName], [Picture], [Age], [MobileNo], [TestDate], [DueDate]) VALUES (12, N'Md Akim', N'7a2c86cc-a052-4737-a449-decf08273b9e.png', 23, N'0178545585', CAST(N'2023-02-11' AS Date), CAST(N'2023-02-25' AS Date))
INSERT [dbo].[TestEntries] ([TestEntryId], [PatientName], [Picture], [Age], [MobileNo], [TestDate], [DueDate]) VALUES (13, N'Mahabub', N'29d293d5-19cc-472b-ab08-1cf9931b724a.jfif', 10, N'0174855847', CAST(N'2023-02-09' AS Date), CAST(N'2023-02-09' AS Date))
SET IDENTITY_INSERT [dbo].[TestEntries] OFF
GO
SET IDENTITY_INSERT [dbo].[Tests] ON 

INSERT [dbo].[Tests] ([TestId], [TestName], [Fee], [Available], [TestTypeId]) VALUES (12, N'CSR', 700.0000, 1, 8)
INSERT [dbo].[Tests] ([TestId], [TestName], [Fee], [Available], [TestTypeId]) VALUES (13, N'x-RAY', 850.0000, 1, 10)
INSERT [dbo].[Tests] ([TestId], [TestName], [Fee], [Available], [TestTypeId]) VALUES (14, N'Blood', 50.0000, 1, 9)
INSERT [dbo].[Tests] ([TestId], [TestName], [Fee], [Available], [TestTypeId]) VALUES (15, N'esr', 3500.0000, 1, 9)
SET IDENTITY_INSERT [dbo].[Tests] OFF
GO
SET IDENTITY_INSERT [dbo].[TestTypes] ON 

INSERT [dbo].[TestTypes] ([TestTypeId], [TypeName]) VALUES (8, N'Blood Test')
INSERT [dbo].[TestTypes] ([TestTypeId], [TypeName]) VALUES (9, N'S.Creatinin')
INSERT [dbo].[TestTypes] ([TestTypeId], [TypeName]) VALUES (10, N'Hematology')
SET IDENTITY_INSERT [dbo].[TestTypes] OFF
GO
/****** Object:  Index [IX_TestEntryId]    Script Date: 2/9/2023 1:52:20 PM ******/
CREATE NONCLUSTERED INDEX [IX_TestEntryId] ON [dbo].[EntryTests]
(
	[TestEntryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TestId]    Script Date: 2/9/2023 1:52:20 PM ******/
CREATE NONCLUSTERED INDEX [IX_TestId] ON [dbo].[EntryTests]
(
	[TestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TestTypeId]    Script Date: 2/9/2023 1:52:20 PM ******/
CREATE NONCLUSTERED INDEX [IX_TestTypeId] ON [dbo].[Tests]
(
	[TestTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EntryTests]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntryTests_dbo.TestEntries_TestEntryId] FOREIGN KEY([TestEntryId])
REFERENCES [dbo].[TestEntries] ([TestEntryId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntryTests] CHECK CONSTRAINT [FK_dbo.EntryTests_dbo.TestEntries_TestEntryId]
GO
ALTER TABLE [dbo].[EntryTests]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntryTests_dbo.Tests_TestId] FOREIGN KEY([TestId])
REFERENCES [dbo].[Tests] ([TestId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntryTests] CHECK CONSTRAINT [FK_dbo.EntryTests_dbo.Tests_TestId]
GO
ALTER TABLE [dbo].[Tests]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Tests_dbo.TestTypes_TestTypeId] FOREIGN KEY([TestTypeId])
REFERENCES [dbo].[TestTypes] ([TestTypeId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Tests] CHECK CONSTRAINT [FK_dbo.Tests_dbo.TestTypes_TestTypeId]
GO
USE [master]
GO
ALTER DATABASE [DCMDb] SET  READ_WRITE 
GO
