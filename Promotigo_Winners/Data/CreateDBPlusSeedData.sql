USE [master]
GO
/****** Object:  Database [Promotigo]    Script Date: 28/06/2024 13:18:56 ******/
CREATE DATABASE [Promotigo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Promotigo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Promotigo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Promotigo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Promotigo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Promotigo] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Promotigo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Promotigo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Promotigo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Promotigo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Promotigo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Promotigo] SET ARITHABORT OFF 
GO
ALTER DATABASE [Promotigo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Promotigo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Promotigo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Promotigo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Promotigo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Promotigo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Promotigo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Promotigo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Promotigo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Promotigo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Promotigo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Promotigo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Promotigo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Promotigo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Promotigo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Promotigo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Promotigo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Promotigo] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Promotigo] SET  MULTI_USER 
GO
ALTER DATABASE [Promotigo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Promotigo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Promotigo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Promotigo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Promotigo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Promotigo] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Promotigo] SET QUERY_STORE = ON
GO
ALTER DATABASE [Promotigo] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Promotigo]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 28/06/2024 13:18:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Entries]    Script Date: 28/06/2024 13:18:56 ******/
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
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240628094857_InitialCreate', N'8.0.6')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240628103250_AddEmailAndPhoneNumber', N'8.0.6')
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
USE [master]
GO
ALTER DATABASE [Promotigo] SET  READ_WRITE 
GO
