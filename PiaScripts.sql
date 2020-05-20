USE [master]
GO
/****** Object:  Database [PIADS]    Script Date: 20/05/2020 03:16:38 p. m. ******/
CREATE DATABASE [PIADS] ON  PRIMARY 
( NAME = N'PIADS', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\PIADS.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PIADS_log', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\PIADS_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [PIADS] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PIADS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PIADS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PIADS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PIADS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PIADS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PIADS] SET ARITHABORT OFF 
GO
ALTER DATABASE [PIADS] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [PIADS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PIADS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PIADS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PIADS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PIADS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PIADS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PIADS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PIADS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PIADS] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PIADS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PIADS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PIADS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PIADS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PIADS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PIADS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PIADS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PIADS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PIADS] SET  MULTI_USER 
GO
ALTER DATABASE [PIADS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PIADS] SET DB_CHAINING OFF 
GO
USE [PIADS]
GO
/****** Object:  User [Stephannie2000]    Script Date: 20/05/2020 03:16:38 p. m. ******/
CREATE USER [Stephannie2000] FOR LOGIN [Stephannie2000] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  StoredProcedure [dbo].[sp_Actualizar_Tema]    Script Date: 20/05/2020 03:16:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Actualizar_Tema]
@IdTema int,
@Nombre nvarchar(100)
AS
BEGIN
UPDATE Tema SET Nombre=@Nombre Where IdTema=@IdTema
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Actualizar_Video]    Script Date: 20/05/2020 03:16:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Actualizar_Video]
@IdVideo int,
@Nombre nvarchar(200),
@Url nvarchar(100),
@FechaPublicacion DateTime
AS
BEGIN
UPDATE Video SET Nombre=@Nombre, Url=@Url, FechaPublicacion=@FechaPublicacion Where IdVideo=@IdVideo
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Agregar_Tema]    Script Date: 20/05/2020 03:16:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Agregar_Tema]
@Nombre nvarchar(100)
AS
BEGIN
INSERT INTO Tema(Nombre) VALUES (@Nombre);
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Agregar_Video]    Script Date: 20/05/2020 03:16:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Agregar_Video]
@Nombre nvarchar(50),
@Url nvarchar(100),
@FechaPublicacion datetime
AS
BEGIN
INSERT INTO Video(Nombre,Url,FechaPublicacion) VALUES (@Nombre,@Url,@FechaPublicacion);
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ConsultarTodo_Tema]    Script Date: 20/05/2020 03:16:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ConsultarTodo_Tema]
AS
BEGIN
SELECT*FROM Tema
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ConsultarTodo_Video]    Script Date: 20/05/2020 03:16:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ConsultarTodo_Video]
AS
BEGIN
SELECT*FROM Video
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ConsultarUno_Tema]    Script Date: 20/05/2020 03:16:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ConsultarUno_Tema]
@IdTema int
AS
BEGIN
SELECT*FROM Tema WHERE IdTema = @IdTema
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ConsultarUno_Video]    Script Date: 20/05/2020 03:16:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ConsultarUno_Video]
@IdVideo int
AS
BEGIN
SELECT*FROM Video WHERE IdVideo = @IdVideo
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Eliminar_Tema]    Script Date: 20/05/2020 03:16:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Eliminar_Tema]
@IdTema int
AS
BEGIN
DELETE FROM Tema WHERE IdTema = @IdTema;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Eliminar_Video]    Script Date: 20/05/2020 03:16:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Eliminar_Video]
@IdVideo int
AS
BEGIN
DELETE FROM Video WHERE IdVideo = @IdVideo;
END;
GO
USE [master]
GO
ALTER DATABASE [PIADS] SET  READ_WRITE 
GO
