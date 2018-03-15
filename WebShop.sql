USE [WebShop]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 2017-12-26 7:56:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ad_master]    Script Date: 2017-12-26 7:56:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ad_master](
	[adid] [int] IDENTITY(1,1) NOT NULL,
	[userid] [nvarchar](128) NOT NULL,
	[category] [nvarchar](100) NULL,
	[title] [nvarchar](100) NULL,
	[address] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[location] [varchar](100) NULL,
	[ad_type] [nvarchar](10) NULL,
	[price] [money] NULL,
	[bed] [int] NULL,
	[bath] [int] NULL,
	[pool] [int] NULL,
	[kicthen] [int] NULL,
	[office] [int] NULL,
	[musicroom] [int] NULL,
	[UploadDate] [datetime] NOT NULL,
	[Features] [varchar](max) NULL,
 CONSTRAINT [PK__ad_maste__56B503F07246AA7D] PRIMARY KEY CLUSTERED 
(
	[adid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2017-12-26 7:56:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2017-12-26 7:56:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2017-12-26 7:56:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2017-12-26 7:56:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2017-12-26 7:56:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 2017-12-26 7:56:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Images](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ImageFileName] [nvarchar](50) NOT NULL,
	[AdId] [int] NOT NULL,
	[ImageType] [nvarchar](50) NULL,
	[URL] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ad_master] ON 
GO
INSERT [dbo].[ad_master] ([adid], [userid], [category], [title], [address], [description], [location], [ad_type], [price], [bed], [bath], [pool], [kicthen], [office], [musicroom], [UploadDate], [Features]) VALUES (1, N'4748efad-7706-405d-8fd9-d4d670464653', N'Semi Detached', N'Low priced 2 Bedrooms apartment', N'24 Bedford Park Avenue, Toronto, ON', N'Vivamus diam diam, fermentum sed dapibus eget, egestas sed eros. Lorem fermentum ipsum dolor sit amet, ipsum dolor sit amet, consectetur fermentum adipiscing elit. Vivamus diam diam, fermentum sed dapibus eget, egestas sed eros. Lorem fermentum ipsum dolor sit amet, ipsum dolor sit amet, consectetur fermentum adipiscing elit. Vivamus diam diam, fermentum sed dapibus eget, egestas sed eros. Lorem fermentum ipsum dolor sit amet, ipsum dolor sit amet, consectetur fermentum adipiscing elit. Vivamus diam diam, fermentum sed dapibus eget, egestas sed eros. Lorem fermentum ipsum dolor sit amet, ipsum dolor sit amet, consectetur fermentum adipiscing elit.13', N'Markham', N'Rent', 3000.0000, 2, 1, 1, 2, 0, 1, CAST(N'2017-12-18T20:55:42.553' AS DateTime), N'<ul><li>FMLS #: 1</li><li>Subdivision: 1</li><li>Bedrooms: 2</li><li>Bathrooms: Full: 1</li>
<li>Year Built: 2001</li><li>Type: Semi Detached</li><li>Country: Canada</li><li>Status: Active</li></ul>')
GO
INSERT [dbo].[ad_master] ([adid], [userid], [category], [title], [address], [description], [location], [ad_type], [price], [bed], [bath], [pool], [kicthen], [office], [musicroom], [UploadDate], [Features]) VALUES (2, N'4748efad-7706-405d-8fd9-d4d670464653', N'Semi Detached', N'	Clean 3 bedroom banglow', N'9 Bellamy Road North, Scarborough, ON', N'Graydon Hall Apartments is beautifully situated on 6 park like acres on Don Mills Rd. between York Mills and Sheppard. North York is a reflection of downtown style in a location that embraces the beauty of nature and the best of life’s conveniences', N'Don Mills	', N'Rent', 4000.0000, 3, 2, 0, 1, 1, 1, CAST(N'2017-12-18T20:55:46.723' AS DateTime), N'<ul><li>FMLS #: 1</li><li>Subdivision: 1</li><li>Bedrooms: 3</li><li>Bathrooms: Full: 2</li>
<li>Year Built: 2002</li><li>Type: Semi Detached</li><li>Country: Canada</li><li>Status: Active</li></ul>')
GO
INSERT [dbo].[ad_master] ([adid], [userid], [category], [title], [address], [description], [location], [ad_type], [price], [bed], [bath], [pool], [kicthen], [office], [musicroom], [UploadDate], [Features]) VALUES (3, N'4748efad-7706-405d-8fd9-d4d670464653', N'Detached', N'	Cheap 1 bedroom', N'27 Stanley Dr, Burlington, ON', N'Alto Rentals is located on the corner of Dundas Street West and Sheridan Avenue. These new rental suites are located in the heart of the trendy Portugal Village', N'Etobico', N'Sale', 1000.0000, 1, 3, 1, 1, 1, 0, CAST(N'2017-12-18T20:56:09.283' AS DateTime), N'<ul><li>FMLS #: 3</li><li>Subdivision: 3</li><li>Bedrooms: 1</li><li>Bathrooms: Full: 2, Half: 1</li>
<li>Year Built: 2003</li><li>Type: Detached</li><li>Country: Canada</li><li>Status: Active</li></ul>')
GO
SET IDENTITY_INSERT [dbo].[ad_master] OFF
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'ac6ff3c7-f71e-4ad4-b862-637ec959df9e', N'eafooa@yahoo.com', 0, N'ABLoZnNuGU2c+LHMH/DAUkeDGFreEjXg+E5zh5yy6YYGYS4oqu/OuCqXfOcGywVflw==', N'2960bdea-9efc-4ae6-84e4-c9b053305ed8', NULL, 0, 0, NULL, 1, 0, N'eafooa@yahoo.com')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'e92e1292-a5ca-4b2f-b4fe-c5d4e7bd58c1', N'eafooa71@yahoo.com', 0, N'AI9eYqPJFcinMjrhm3D0yPEk5dRRc4FKD4QjhNmCL4BYw/btS++BQGGN9TrtkqKLag==', N'0ff6cf1f-40f8-4431-9c6b-32e9e6bf4aed', NULL, 0, 0, NULL, 1, 0, N'eafooa71@yahoo.com')
GO
SET IDENTITY_INSERT [dbo].[Images] ON 
GO
INSERT [dbo].[Images] ([Id], [ImageFileName], [AdId], [ImageType], [URL]) VALUES (3, N'Ad1.jpg', 1, N'ICON', NULL)
GO
INSERT [dbo].[Images] ([Id], [ImageFileName], [AdId], [ImageType], [URL]) VALUES (4, N'Ad2.png', 2, N'ICON', NULL)
GO
INSERT [dbo].[Images] ([Id], [ImageFileName], [AdId], [ImageType], [URL]) VALUES (5, N'Ad3.png', 3, N'ICON', NULL)
GO
INSERT [dbo].[Images] ([Id], [ImageFileName], [AdId], [ImageType], [URL]) VALUES (6, N'Ad1_1.jpg', 1, NULL, NULL)
GO
INSERT [dbo].[Images] ([Id], [ImageFileName], [AdId], [ImageType], [URL]) VALUES (7, N'Ad1_2.jpg', 1, NULL, NULL)
GO
INSERT [dbo].[Images] ([Id], [ImageFileName], [AdId], [ImageType], [URL]) VALUES (8, N'Ad1_3.jpg', 1, NULL, NULL)
GO
INSERT [dbo].[Images] ([Id], [ImageFileName], [AdId], [ImageType], [URL]) VALUES (9, N'Ad1_4.jpg', 1, NULL, NULL)
GO
INSERT [dbo].[Images] ([Id], [ImageFileName], [AdId], [ImageType], [URL]) VALUES (10, N'Ad1_5.jpg', 1, NULL, NULL)
GO
INSERT [dbo].[Images] ([Id], [ImageFileName], [AdId], [ImageType], [URL]) VALUES (11, N'Ad2_1.jpg', 2, NULL, NULL)
GO
INSERT [dbo].[Images] ([Id], [ImageFileName], [AdId], [ImageType], [URL]) VALUES (12, N'Ad2_2.jpg', 2, NULL, NULL)
GO
INSERT [dbo].[Images] ([Id], [ImageFileName], [AdId], [ImageType], [URL]) VALUES (13, N'Ad2_3.jpg', 2, NULL, NULL)
GO
INSERT [dbo].[Images] ([Id], [ImageFileName], [AdId], [ImageType], [URL]) VALUES (14, N'Ad2_4.jpg', 2, NULL, NULL)
GO
INSERT [dbo].[Images] ([Id], [ImageFileName], [AdId], [ImageType], [URL]) VALUES (15, N'Ad2_5.jpg', 2, NULL, NULL)
GO
INSERT [dbo].[Images] ([Id], [ImageFileName], [AdId], [ImageType], [URL]) VALUES (16, N'Ad1_6.jpg', 1, NULL, NULL)
GO
INSERT [dbo].[Images] ([Id], [ImageFileName], [AdId], [ImageType], [URL]) VALUES (17, N'Ad1_7.jpg', 1, NULL, NULL)
GO
INSERT [dbo].[Images] ([Id], [ImageFileName], [AdId], [ImageType], [URL]) VALUES (18, N'Ad1_8.jpg', 1, NULL, NULL)
GO
INSERT [dbo].[Images] ([Id], [ImageFileName], [AdId], [ImageType], [URL]) VALUES (20, N'Ad1_9.jpg', 1, NULL, NULL)
GO
INSERT [dbo].[Images] ([Id], [ImageFileName], [AdId], [ImageType], [URL]) VALUES (21, N'Ad1_10.jpg', 1, NULL, NULL)
GO
INSERT [dbo].[Images] ([Id], [ImageFileName], [AdId], [ImageType], [URL]) VALUES (22, N'Ad1_11.jpg', 1, NULL, NULL)
GO
INSERT [dbo].[Images] ([Id], [ImageFileName], [AdId], [ImageType], [URL]) VALUES (23, N'Ad2_11.jpg', 2, NULL, NULL)
GO
INSERT [dbo].[Images] ([Id], [ImageFileName], [AdId], [ImageType], [URL]) VALUES (24, N'Ad2_12.jpg', 2, NULL, NULL)
GO
INSERT [dbo].[Images] ([Id], [ImageFileName], [AdId], [ImageType], [URL]) VALUES (25, N'Ad2_13.jpg', 2, NULL, NULL)
GO
INSERT [dbo].[Images] ([Id], [ImageFileName], [AdId], [ImageType], [URL]) VALUES (26, N'Ad2_6.jpg', 2, NULL, NULL)
GO
INSERT [dbo].[Images] ([Id], [ImageFileName], [AdId], [ImageType], [URL]) VALUES (27, N'Ad2_7.jpg', 2, NULL, NULL)
GO
INSERT [dbo].[Images] ([Id], [ImageFileName], [AdId], [ImageType], [URL]) VALUES (28, N'Ad2_8.jpg', 2, NULL, NULL)
GO
INSERT [dbo].[Images] ([Id], [ImageFileName], [AdId], [ImageType], [URL]) VALUES (29, N'Ad2_9.jpg', 2, NULL, NULL)
GO
INSERT [dbo].[Images] ([Id], [ImageFileName], [AdId], [ImageType], [URL]) VALUES (30, N'Ad2_10.jpg', 2, NULL, NULL)
GO
INSERT [dbo].[Images] ([Id], [ImageFileName], [AdId], [ImageType], [URL]) VALUES (31, N'Ad3_10.jpg', 3, NULL, NULL)
GO
INSERT [dbo].[Images] ([Id], [ImageFileName], [AdId], [ImageType], [URL]) VALUES (32, N'Ad3_11.jpg', 3, NULL, NULL)
GO
INSERT [dbo].[Images] ([Id], [ImageFileName], [AdId], [ImageType], [URL]) VALUES (33, N'Ad3_12.jpg', 3, NULL, NULL)
GO
INSERT [dbo].[Images] ([Id], [ImageFileName], [AdId], [ImageType], [URL]) VALUES (35, N'Ad3_13.jpg', 3, NULL, NULL)
GO
INSERT [dbo].[Images] ([Id], [ImageFileName], [AdId], [ImageType], [URL]) VALUES (36, N'Ad3_1.jpg', 3, NULL, NULL)
GO
INSERT [dbo].[Images] ([Id], [ImageFileName], [AdId], [ImageType], [URL]) VALUES (37, N'Ad3_2.jpg', 3, NULL, NULL)
GO
INSERT [dbo].[Images] ([Id], [ImageFileName], [AdId], [ImageType], [URL]) VALUES (38, N'Ad3_3.jpg', 3, NULL, NULL)
GO
INSERT [dbo].[Images] ([Id], [ImageFileName], [AdId], [ImageType], [URL]) VALUES (39, N'Ad3_4.jpg', 3, NULL, NULL)
GO
INSERT [dbo].[Images] ([Id], [ImageFileName], [AdId], [ImageType], [URL]) VALUES (40, N'Ad3_5.jpg', 3, NULL, NULL)
GO
INSERT [dbo].[Images] ([Id], [ImageFileName], [AdId], [ImageType], [URL]) VALUES (41, N'Ad3_6.jpg', 3, NULL, NULL)
GO
INSERT [dbo].[Images] ([Id], [ImageFileName], [AdId], [ImageType], [URL]) VALUES (42, N'Ad3_7.jpg', 3, NULL, NULL)
GO
INSERT [dbo].[Images] ([Id], [ImageFileName], [AdId], [ImageType], [URL]) VALUES (43, N'Ad3_8.jpg', 3, NULL, NULL)
GO
INSERT [dbo].[Images] ([Id], [ImageFileName], [AdId], [ImageType], [URL]) VALUES (44, N'Ad3_9.jpg', 3, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Images] OFF
GO
ALTER TABLE [dbo].[ad_master] ADD  DEFAULT (getdate()) FOR [UploadDate]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Images]  WITH CHECK ADD  CONSTRAINT [FK_Images_Toad_master] FOREIGN KEY([AdId])
REFERENCES [dbo].[ad_master] ([adid])
GO
ALTER TABLE [dbo].[Images] CHECK CONSTRAINT [FK_Images_Toad_master]
GO
