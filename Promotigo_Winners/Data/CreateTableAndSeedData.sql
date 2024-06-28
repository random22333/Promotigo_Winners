USE [Promotigo]
GO
/****** Object:  Table [dbo].[Entries]    Script Date: 28/06/2024 11:34:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entries](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[PhoneNumber] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Entries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Entries] ON 
GO
INSERT [dbo].[Entries] ([Id], [FirstName], [LastName], [Email], [PhoneNumber]) VALUES (1, N'John', N'Doe', N'john.doe@example.com', N'+44 1234 567890')
GO
INSERT [dbo].[Entries] ([Id], [FirstName], [LastName], [Email], [PhoneNumber]) VALUES (2, N'Jane', N'Smith', N'jane.smith@example.com', N'+44 1234 567891')
GO
INSERT [dbo].[Entries] ([Id], [FirstName], [LastName], [Email], [PhoneNumber]) VALUES (3, N'Alice', N'Johnson', N'alice.johnson@example.com', N'+44 1234 567892')
GO
INSERT [dbo].[Entries] ([Id], [FirstName], [LastName], [Email], [PhoneNumber]) VALUES (4, N'Bob', N'Brown', N'bob.brown@example.com', N'+44 1234 567893')
GO
INSERT [dbo].[Entries] ([Id], [FirstName], [LastName], [Email], [PhoneNumber]) VALUES (5, N'Charlie', N'Davis', N'charlie.davis@example.com', N'+44 1234 567894')
GO
INSERT [dbo].[Entries] ([Id], [FirstName], [LastName], [Email], [PhoneNumber]) VALUES (6, N'David', N'Miller', N'david.miller@example.com', N'+44 1234 567895')
GO
INSERT [dbo].[Entries] ([Id], [FirstName], [LastName], [Email], [PhoneNumber]) VALUES (7, N'Eve', N'Wilson', N'eve.wilson@example.com', N'+44 1234 567896')
GO
INSERT [dbo].[Entries] ([Id], [FirstName], [LastName], [Email], [PhoneNumber]) VALUES (8, N'Frank', N'Moore', N'frank.moore@example.com', N'+44 1234 567897')
GO
INSERT [dbo].[Entries] ([Id], [FirstName], [LastName], [Email], [PhoneNumber]) VALUES (9, N'Grace', N'Taylor', N'grace.taylor@example.com', N'+44 1234 567898')
GO
INSERT [dbo].[Entries] ([Id], [FirstName], [LastName], [Email], [PhoneNumber]) VALUES (10, N'Hank', N'Anderson', N'hank.anderson@example.com', N'+44 1234 567899')
GO
INSERT [dbo].[Entries] ([Id], [FirstName], [LastName], [Email], [PhoneNumber]) VALUES (11, N'Ivy', N'Thomas', N'ivy.thomas@example.com', N'+44 1234 567900')
GO
INSERT [dbo].[Entries] ([Id], [FirstName], [LastName], [Email], [PhoneNumber]) VALUES (12, N'Jack', N'Jackson', N'jack.jackson@example.com', N'+44 1234 567901')
GO
INSERT [dbo].[Entries] ([Id], [FirstName], [LastName], [Email], [PhoneNumber]) VALUES (13, N'Kathy', N'White', N'kathy.white@example.com', N'+44 1234 567902')
GO
INSERT [dbo].[Entries] ([Id], [FirstName], [LastName], [Email], [PhoneNumber]) VALUES (14, N'Leo', N'Harris', N'leo.harris@example.com', N'+44 1234 567903')
GO
INSERT [dbo].[Entries] ([Id], [FirstName], [LastName], [Email], [PhoneNumber]) VALUES (15, N'Mia', N'Clark', N'mia.clark@example.com', N'+44 1234 567904')
GO
INSERT [dbo].[Entries] ([Id], [FirstName], [LastName], [Email], [PhoneNumber]) VALUES (16, N'Nina', N'Lewis', N'nina.lewis@example.com', N'+44 1234 567905')
GO
INSERT [dbo].[Entries] ([Id], [FirstName], [LastName], [Email], [PhoneNumber]) VALUES (17, N'Oscar', N'Walker', N'oscar.walker@example.com', N'+44 1234 567906')
GO
INSERT [dbo].[Entries] ([Id], [FirstName], [LastName], [Email], [PhoneNumber]) VALUES (18, N'Paul', N'Hall', N'paul.hall@example.com', N'+44 1234 567907')
GO
INSERT [dbo].[Entries] ([Id], [FirstName], [LastName], [Email], [PhoneNumber]) VALUES (19, N'Quinn', N'Allen', N'quinn.allen@example.com', N'+44 1234 567908')
GO
INSERT [dbo].[Entries] ([Id], [FirstName], [LastName], [Email], [PhoneNumber]) VALUES (20, N'Rose', N'Young', N'rose.young@example.com', N'+44 1234 567909')
GO
INSERT [dbo].[Entries] ([Id], [FirstName], [LastName], [Email], [PhoneNumber]) VALUES (21, N'Steve', N'King', N'steve.king@example.com', N'+44 1234 567910')
GO
INSERT [dbo].[Entries] ([Id], [FirstName], [LastName], [Email], [PhoneNumber]) VALUES (22, N'Tina', N'Scott', N'tina.scott@example.com', N'+44 1234 567911')
GO
INSERT [dbo].[Entries] ([Id], [FirstName], [LastName], [Email], [PhoneNumber]) VALUES (23, N'Uma', N'Green', N'uma.green@example.com', N'+44 1234 567912')
GO
INSERT [dbo].[Entries] ([Id], [FirstName], [LastName], [Email], [PhoneNumber]) VALUES (24, N'Victor', N'Adams', N'victor.adams@example.com', N'+44 1234 567913')
GO
INSERT [dbo].[Entries] ([Id], [FirstName], [LastName], [Email], [PhoneNumber]) VALUES (25, N'Wendy', N'Baker', N'wendy.baker@example.com', N'+44 1234 567914')
GO
INSERT [dbo].[Entries] ([Id], [FirstName], [LastName], [Email], [PhoneNumber]) VALUES (26, N'Xander', N'Nelson', N'xander.nelson@example.com', N'+44 1234 567915')
GO
INSERT [dbo].[Entries] ([Id], [FirstName], [LastName], [Email], [PhoneNumber]) VALUES (27, N'Yara', N'Carter', N'yara.carter@example.com', N'+44 1234 567916')
GO
INSERT [dbo].[Entries] ([Id], [FirstName], [LastName], [Email], [PhoneNumber]) VALUES (28, N'Zane', N'Mitchell', N'zane.mitchell@example.com', N'+44 1234 567917')
GO
INSERT [dbo].[Entries] ([Id], [FirstName], [LastName], [Email], [PhoneNumber]) VALUES (29, N'Amy', N'Perez', N'amy.perez@example.com', N'+44 1234 567918')
GO
INSERT [dbo].[Entries] ([Id], [FirstName], [LastName], [Email], [PhoneNumber]) VALUES (30, N'Brian', N'Roberts', N'brian.roberts@example.com', N'+44 1234 567919')
GO
INSERT [dbo].[Entries] ([Id], [FirstName], [LastName], [Email], [PhoneNumber]) VALUES (31, N'Catherine', N'Turner', N'catherine.turner@example.com', N'+44 1234 567920')
GO
INSERT [dbo].[Entries] ([Id], [FirstName], [LastName], [Email], [PhoneNumber]) VALUES (32, N'Daniel', N'Phillips', N'daniel.phillips@example.com', N'+44 1234 567921')
GO
INSERT [dbo].[Entries] ([Id], [FirstName], [LastName], [Email], [PhoneNumber]) VALUES (33, N'Elaine', N'Campbell', N'elaine.campbell@example.com', N'+44 1234 567922')
GO
SET IDENTITY_INSERT [dbo].[Entries] OFF
GO
