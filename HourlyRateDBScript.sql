USE [master]
GO
/****** Object:  Database [PokerStats]    Script Date: 27.06.2021. 13:34:08 ******/
CREATE DATABASE [PokerStats]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PokerStats', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\PokerStats.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PokerStats_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\PokerStats_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [PokerStats] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PokerStats].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PokerStats] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PokerStats] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PokerStats] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PokerStats] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PokerStats] SET ARITHABORT OFF 
GO
ALTER DATABASE [PokerStats] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [PokerStats] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PokerStats] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PokerStats] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PokerStats] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PokerStats] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PokerStats] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PokerStats] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PokerStats] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PokerStats] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PokerStats] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PokerStats] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PokerStats] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PokerStats] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PokerStats] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PokerStats] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PokerStats] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PokerStats] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PokerStats] SET  MULTI_USER 
GO
ALTER DATABASE [PokerStats] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PokerStats] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PokerStats] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PokerStats] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PokerStats] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PokerStats] SET QUERY_STORE = OFF
GO
USE [PokerStats]
GO
/****** Object:  Table [dbo].[Sessions]    Script Date: 27.06.2021. 13:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sessions](
	[SessionID] [int] IDENTITY(1,1) NOT NULL,
	[SessionDate] [date] NOT NULL,
	[Stakes] [varchar](20) NOT NULL,
	[HandsPlayed] [int] NOT NULL,
	[Result] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SessionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [PokerStats] SET  READ_WRITE 
GO
