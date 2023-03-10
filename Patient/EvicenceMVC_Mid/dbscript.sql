USE [master]
GO

CREATE DATABASE [DCMDb]
GO

USE [DCMDb]
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
/****** Object:  Table [dbo].[TestEntries]    Script Date: 11/30/2022 1:43:47 AM ******/
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
/****** Object:  Table [dbo].[Tests]    Script Date: 11/30/2022 1:43:47 AM ******/
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
/****** Object:  Table [dbo].[TestTypes]    Script Date: 11/30/2022 1:43:47 AM ******/
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

INSERT [dbo].[EntryTests] ([EntryTestsId], [TestEntryId], [TestId]) VALUES (1, 1, 1)
INSERT [dbo].[EntryTests] ([EntryTestsId], [TestEntryId], [TestId]) VALUES (2, 2, 1)
INSERT [dbo].[EntryTests] ([EntryTestsId], [TestEntryId], [TestId]) VALUES (5, 2, 4)
INSERT [dbo].[EntryTests] ([EntryTestsId], [TestEntryId], [TestId]) VALUES (6, 3, 4)
INSERT [dbo].[EntryTests] ([EntryTestsId], [TestEntryId], [TestId]) VALUES (10, 4, 8)
INSERT [dbo].[EntryTests] ([EntryTestsId], [TestEntryId], [TestId]) VALUES (3, 5, 1)
INSERT [dbo].[EntryTests] ([EntryTestsId], [TestEntryId], [TestId]) VALUES (8, 5, 5)
INSERT [dbo].[EntryTests] ([EntryTestsId], [TestEntryId], [TestId]) VALUES (9, 6, 5)
INSERT [dbo].[EntryTests] ([EntryTestsId], [TestEntryId], [TestId]) VALUES (12, 6, 9)
INSERT [dbo].[EntryTests] ([EntryTestsId], [TestEntryId], [TestId]) VALUES (4, 7, 1)
INSERT [dbo].[EntryTests] ([EntryTestsId], [TestEntryId], [TestId]) VALUES (7, 7, 4)
INSERT [dbo].[EntryTests] ([EntryTestsId], [TestEntryId], [TestId]) VALUES (11, 7, 8)
INSERT [dbo].[EntryTests] ([EntryTestsId], [TestEntryId], [TestId]) VALUES (13, 8, 1)
INSERT [dbo].[EntryTests] ([EntryTestsId], [TestEntryId], [TestId]) VALUES (14, 8, 4)
INSERT [dbo].[EntryTests] ([EntryTestsId], [TestEntryId], [TestId]) VALUES (15, 8, 5)
INSERT [dbo].[EntryTests] ([EntryTestsId], [TestEntryId], [TestId]) VALUES (16, 8, 8)
INSERT [dbo].[EntryTests] ([EntryTestsId], [TestEntryId], [TestId]) VALUES (17, 8, 9)
INSERT [dbo].[EntryTests] ([EntryTestsId], [TestEntryId], [TestId]) VALUES (18, 9, 4)
INSERT [dbo].[EntryTests] ([EntryTestsId], [TestEntryId], [TestId]) VALUES (19, 9, 8)
SET IDENTITY_INSERT [dbo].[EntryTests] OFF
GO
SET IDENTITY_INSERT [dbo].[TestEntries] ON 

INSERT [dbo].[TestEntries] ([TestEntryId], [PatientName], [Picture], [Age], [MobileNo], [TestDate], [DueDate]) VALUES (1, N'P1', N'1.jpg', 20, N'0189765567', CAST(N'2022-09-01' AS Date), CAST(N'2022-09-01' AS Date))
INSERT [dbo].[TestEntries] ([TestEntryId], [PatientName], [Picture], [Age], [MobileNo], [TestDate], [DueDate]) VALUES (2, N'p3', N'da1217cc-bb48-4f6d-a81b-4cbcb0ac4900.jpg', 25, N'525252', CAST(N'2020-01-01' AS Date), CAST(N'2010-01-01' AS Date))
INSERT [dbo].[TestEntries] ([TestEntryId], [PatientName], [Picture], [Age], [MobileNo], [TestDate], [DueDate]) VALUES (3, N'p2', N'09440118-458a-4539-91b2-0d385ae53692.jpg', 20, N'0124575725', CAST(N'2022-01-02' AS Date), CAST(N'2022-02-02' AS Date))
INSERT [dbo].[TestEntries] ([TestEntryId], [PatientName], [Picture], [Age], [MobileNo], [TestDate], [DueDate]) VALUES (4, N'P4', N'f9cf6381-1294-49ca-bbcc-2baad7e1d13c.jpg', 30, N'0135555551', CAST(N'2022-01-02' AS Date), CAST(N'2022-02-02' AS Date))
INSERT [dbo].[TestEntries] ([TestEntryId], [PatientName], [Picture], [Age], [MobileNo], [TestDate], [DueDate]) VALUES (5, N'Azman', N'c88a7906-0bb3-4c03-800b-fcfb04699c81.jpg', 52, N'01252525252', CAST(N'2010-10-10' AS Date), CAST(N'2012-12-12' AS Date))
INSERT [dbo].[TestEntries] ([TestEntryId], [PatientName], [Picture], [Age], [MobileNo], [TestDate], [DueDate]) VALUES (6, N'Risarlision', N'825b47b0-e15d-4aa7-868e-58a6f8048544.jpg', 22, N'+8801911311076', CAST(N'2021-10-10' AS Date), CAST(N'2012-12-12' AS Date))
INSERT [dbo].[TestEntries] ([TestEntryId], [PatientName], [Picture], [Age], [MobileNo], [TestDate], [DueDate]) VALUES (7, N'Mat Khan', N'128d913f-7ec9-4124-a2f3-253566d60053.jpg', 32, N'+8801911311076', CAST(N'2010-10-10' AS Date), CAST(N'2012-12-12' AS Date))
INSERT [dbo].[TestEntries] ([TestEntryId], [PatientName], [Picture], [Age], [MobileNo], [TestDate], [DueDate]) VALUES (8, N'Shaon Khalifa', N'c3d10e26-961f-4aa8-ba1d-a4d5acedc1bc.png', 26, N'01888888888', CAST(N'2022-11-18' AS Date), CAST(N'2022-12-10' AS Date))
INSERT [dbo].[TestEntries] ([TestEntryId], [PatientName], [Picture], [Age], [MobileNo], [TestDate], [DueDate]) VALUES (9, N'Faruk Hossain', N'740eb980-fedb-4346-b798-e5ddc7439656.png', 27, N'017693258', CAST(N'2022-11-23' AS Date), CAST(N'2022-12-03' AS Date))
SET IDENTITY_INSERT [dbo].[TestEntries] OFF
GO
SET IDENTITY_INSERT [dbo].[Tests] ON 

INSERT [dbo].[Tests] ([TestId], [TestName], [Fee], [Available], [TestTypeId]) VALUES (1, N'CSR', 700.0000, 1, 3)
INSERT [dbo].[Tests] ([TestId], [TestName], [Fee], [Available], [TestTypeId]) VALUES (4, N'X-ray', 800.0000, 1, 1)
INSERT [dbo].[Tests] ([TestId], [TestName], [Fee], [Available], [TestTypeId]) VALUES (5, N'MRI', 8000.0000, 1, 1)
INSERT [dbo].[Tests] ([TestId], [TestName], [Fee], [Available], [TestTypeId]) VALUES (8, N'Blood cholesterol test.', 800.0000, 1, 5)
INSERT [dbo].[Tests] ([TestId], [TestName], [Fee], [Available], [TestTypeId]) VALUES (9, N'Kidney Test', 5000.0000, 1, 1)
INSERT [dbo].[Tests] ([TestId], [TestName], [Fee], [Available], [TestTypeId]) VALUES (10, N'ESR', 2500.0000, 1, 7)
SET IDENTITY_INSERT [dbo].[Tests] OFF
GO
SET IDENTITY_INSERT [dbo].[TestTypes] ON 

INSERT [dbo].[TestTypes] ([TestTypeId], [TypeName]) VALUES (1, N'TestType 01')
INSERT [dbo].[TestTypes] ([TestTypeId], [TypeName]) VALUES (2, N'TestType 02')
INSERT [dbo].[TestTypes] ([TestTypeId], [TypeName]) VALUES (3, N'TestType 03')
INSERT [dbo].[TestTypes] ([TestTypeId], [TypeName]) VALUES (5, N'Blood Test')
INSERT [dbo].[TestTypes] ([TestTypeId], [TypeName]) VALUES (6, N'S.Creatinin')
INSERT [dbo].[TestTypes] ([TestTypeId], [TypeName]) VALUES (7, N'Hematology')
SET IDENTITY_INSERT [dbo].[TestTypes] OFF
GO
/****** Object:  Index [IX_TestEntryId]    Script Date: 11/30/2022 1:43:47 AM ******/
CREATE NONCLUSTERED INDEX [IX_TestEntryId] ON [dbo].[EntryTests]
(
	[TestEntryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TestId]    Script Date: 11/30/2022 1:43:47 AM ******/
CREATE NONCLUSTERED INDEX [IX_TestId] ON [dbo].[EntryTests]
(
	[TestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TestTypeId]    Script Date: 11/30/2022 1:43:47 AM ******/
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
