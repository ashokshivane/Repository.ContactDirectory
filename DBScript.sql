USE [master]
GO
/****** Object:  Database [ContactsDB]    Script Date: 5/30/2021 01:10:42 ******/
CREATE DATABASE [ContactsDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ContactsDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\ContactsDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ContactsDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\ContactsDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ContactsDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ContactsDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ContactsDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ContactsDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ContactsDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ContactsDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ContactsDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ContactsDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ContactsDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ContactsDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ContactsDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ContactsDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ContactsDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ContactsDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ContactsDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ContactsDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ContactsDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ContactsDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ContactsDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ContactsDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ContactsDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ContactsDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ContactsDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ContactsDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ContactsDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ContactsDB] SET  MULTI_USER 
GO
ALTER DATABASE [ContactsDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ContactsDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ContactsDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ContactsDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ContactsDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ContactsDB] SET QUERY_STORE = OFF
GO
USE [ContactsDB]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 5/30/2021 01:10:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](255) NULL,
	[LastName] [varchar](255) NULL,
	[Email] [varchar](255) NULL,
	[PhoneNumber] [varchar](10) NULL,
	[Status] [bit] NULL,
	[CreatedBy] [varchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](100) NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [ContactsDB] SET  READ_WRITE 
GO
