USE [BookShopDB]
GO
/****** Object:  Table [dbo].[AgeCategory]    Script Date: 05.11.2020 19:15:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgeCategory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](10) NULL,
 CONSTRAINT [PK_AgeCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Authors]    Script Date: 05.11.2020 19:15:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authors](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Authors] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 05.11.2020 19:15:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Author] [bigint] NULL,
	[Name] [varchar](60) NULL,
	[DataPrint] [char](4) NULL,
	[CoverType] [int] NULL,
	[AgeCategory] [int] NULL,
	[Genre] [int] NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CoverTypes]    Script Date: 05.11.2020 19:15:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CoverTypes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](30) NULL,
 CONSTRAINT [PK_CoverTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genres]    Script Date: 05.11.2020 19:15:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genres](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Genres] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AgeCategory] ON 

INSERT [dbo].[AgeCategory] ([ID], [Name]) VALUES (1, N'0-3')
INSERT [dbo].[AgeCategory] ([ID], [Name]) VALUES (2, N'3-10')
INSERT [dbo].[AgeCategory] ([ID], [Name]) VALUES (3, N'10-15')
INSERT [dbo].[AgeCategory] ([ID], [Name]) VALUES (4, N'15-17')
INSERT [dbo].[AgeCategory] ([ID], [Name]) VALUES (5, N'18+')
SET IDENTITY_INSERT [dbo].[AgeCategory] OFF
SET IDENTITY_INSERT [dbo].[Authors] ON 

INSERT [dbo].[Authors] ([ID], [Name]) VALUES (1, N'Артур Конан Дойл')
INSERT [dbo].[Authors] ([ID], [Name]) VALUES (2, N'Марио Пьюзо')
INSERT [dbo].[Authors] ([ID], [Name]) VALUES (3, N'Агата Кристи')
INSERT [dbo].[Authors] ([ID], [Name]) VALUES (4, N'Борис Акунин')
INSERT [dbo].[Authors] ([ID], [Name]) VALUES (5, N'Михаил Лермонтов')
INSERT [dbo].[Authors] ([ID], [Name]) VALUES (6, N'Сергей Есенин')
INSERT [dbo].[Authors] ([ID], [Name]) VALUES (7, N'Томас Манн')
INSERT [dbo].[Authors] ([ID], [Name]) VALUES (8, N'Уильям Голдинг')
INSERT [dbo].[Authors] ([ID], [Name]) VALUES (9, N'Джордж Оруэлл')
INSERT [dbo].[Authors] ([ID], [Name]) VALUES (10, N'Алексей Корепанов')
INSERT [dbo].[Authors] ([ID], [Name]) VALUES (11, N'Юлиана Лебединская')
INSERT [dbo].[Authors] ([ID], [Name]) VALUES (12, N'Памела Трэверс')
INSERT [dbo].[Authors] ([ID], [Name]) VALUES (14, N'Владислав Крапивин')
INSERT [dbo].[Authors] ([ID], [Name]) VALUES (15, N'Юрий Коваль')
SET IDENTITY_INSERT [dbo].[Authors] OFF
SET IDENTITY_INSERT [dbo].[Books] ON 

INSERT [dbo].[Books] ([ID], [Author], [Name], [DataPrint], [CoverType], [AgeCategory], [Genre]) VALUES (1, 1, N'Записки о Шерлоке Холмсе', N'1998', 1, 4, 1)
INSERT [dbo].[Books] ([ID], [Author], [Name], [DataPrint], [CoverType], [AgeCategory], [Genre]) VALUES (3, 3, N'Десять негритят', N'1975', 2, 4, 1)
INSERT [dbo].[Books] ([ID], [Author], [Name], [DataPrint], [CoverType], [AgeCategory], [Genre]) VALUES (4, 4, N'Смерть Ахиллеса', N'1967', 2, 4, 1)
INSERT [dbo].[Books] ([ID], [Author], [Name], [DataPrint], [CoverType], [AgeCategory], [Genre]) VALUES (5, 5, N'Бородино', N'1837', 2, 4, 1)
SET IDENTITY_INSERT [dbo].[Books] OFF
SET IDENTITY_INSERT [dbo].[CoverTypes] ON 

INSERT [dbo].[CoverTypes] ([ID], [Name]) VALUES (1, N'твердый')
INSERT [dbo].[CoverTypes] ([ID], [Name]) VALUES (2, N'мягкий')
INSERT [dbo].[CoverTypes] ([ID], [Name]) VALUES (3, N'переплет')
INSERT [dbo].[CoverTypes] ([ID], [Name]) VALUES (4, N'переплет ручной работы')
SET IDENTITY_INSERT [dbo].[CoverTypes] OFF
SET IDENTITY_INSERT [dbo].[Genres] ON 

INSERT [dbo].[Genres] ([ID], [Name]) VALUES (1, N'Детектив')
INSERT [dbo].[Genres] ([ID], [Name]) VALUES (2, N'Роман')
INSERT [dbo].[Genres] ([ID], [Name]) VALUES (3, N'Поэзия')
INSERT [dbo].[Genres] ([ID], [Name]) VALUES (4, N'Научная фантастика')
INSERT [dbo].[Genres] ([ID], [Name]) VALUES (5, N'Школьные учебники')
INSERT [dbo].[Genres] ([ID], [Name]) VALUES (6, N'Детские приключенческие книги')
SET IDENTITY_INSERT [dbo].[Genres] OFF
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_AgeCategory] FOREIGN KEY([AgeCategory])
REFERENCES [dbo].[AgeCategory] ([ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_AgeCategory]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Authors] FOREIGN KEY([Author])
REFERENCES [dbo].[Authors] ([ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Authors]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_CoverTypes] FOREIGN KEY([CoverType])
REFERENCES [dbo].[CoverTypes] ([ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_CoverTypes]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Genres] FOREIGN KEY([Genre])
REFERENCES [dbo].[Genres] ([ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Genres]
GO
