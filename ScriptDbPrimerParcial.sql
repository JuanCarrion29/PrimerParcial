USE [master]
GO
/****** Object:  Database [Biblioteca ]    Script Date: 09/06/2024 21:18:37 ******/
CREATE DATABASE [Biblioteca ]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Biblioteca', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Biblioteca .mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Biblioteca _log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Biblioteca _log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Biblioteca ] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Biblioteca ].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Biblioteca ] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Biblioteca ] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Biblioteca ] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Biblioteca ] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Biblioteca ] SET ARITHABORT OFF 
GO
ALTER DATABASE [Biblioteca ] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Biblioteca ] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Biblioteca ] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Biblioteca ] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Biblioteca ] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Biblioteca ] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Biblioteca ] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Biblioteca ] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Biblioteca ] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Biblioteca ] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Biblioteca ] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Biblioteca ] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Biblioteca ] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Biblioteca ] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Biblioteca ] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Biblioteca ] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Biblioteca ] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Biblioteca ] SET RECOVERY FULL 
GO
ALTER DATABASE [Biblioteca ] SET  MULTI_USER 
GO
ALTER DATABASE [Biblioteca ] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Biblioteca ] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Biblioteca ] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Biblioteca ] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Biblioteca ] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Biblioteca ] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Biblioteca ', N'ON'
GO
ALTER DATABASE [Biblioteca ] SET QUERY_STORE = ON
GO
ALTER DATABASE [Biblioteca ] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Biblioteca ]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 09/06/2024 21:18:37 ******/
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
/****** Object:  Table [dbo].[Autores]    Script Date: 09/06/2024 21:18:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Autores](
	[id_autor] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellido] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Autor] PRIMARY KEY CLUSTERED 
(
	[id_autor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 09/06/2024 21:18:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[id_categoria] [int] IDENTITY(1,1) NOT NULL,
	[nombre_categoria] [nvarchar](40) NOT NULL,
 CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED 
(
	[id_categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Editorial]    Script Date: 09/06/2024 21:18:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Editorial](
	[id_editorial] [int] IDENTITY(1,1) NOT NULL,
	[nombre_editorial] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Editorial] PRIMARY KEY CLUSTERED 
(
	[id_editorial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LibroAutor]    Script Date: 09/06/2024 21:18:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LibroAutor](
	[id_autor] [int] NOT NULL,
	[id_libro] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_libro] ASC,
	[id_autor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LibroCategoria]    Script Date: 09/06/2024 21:18:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LibroCategoria](
	[id_libro] [int] IDENTITY(1,1) NOT NULL,
	[id_categoria] [int] NOT NULL,
 CONSTRAINT [PK__LibroCat__50DC898B5B75D285] PRIMARY KEY CLUSTERED 
(
	[id_libro] ASC,
	[id_categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Libros]    Script Date: 09/06/2024 21:18:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Libros](
	[id_libro] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [nchar](80) NOT NULL,
	[id_editorial] [int] NOT NULL,
 CONSTRAINT [PK_Libros] PRIMARY KEY CLUSTERED 
(
	[id_libro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prestamo]    Script Date: 09/06/2024 21:18:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prestamo](
	[id_prestamo] [int] IDENTITY(1,1) NOT NULL,
	[id_usuario] [int] NULL,
	[id_libro] [int] NULL,
	[fecha_prestamo] [date] NOT NULL,
	[fecha_devolucion] [date] NULL,
 CONSTRAINT [PK__Prestamo__5E87BE27A58FDC1F] PRIMARY KEY CLUSTERED 
(
	[id_prestamo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reseña]    Script Date: 09/06/2024 21:18:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reseña](
	[reseña_id] [int] IDENTITY(1,1) NOT NULL,
	[id_usuario] [int] NOT NULL,
	[id_libro] [int] NOT NULL,
	[comentario] [text] NULL,
	[calificacion] [int] NULL,
	[fecha_reseña] [date] NOT NULL,
 CONSTRAINT [PK__Reseña__33AE138A6BBE3213] PRIMARY KEY CLUSTERED 
(
	[reseña_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reserva]    Script Date: 09/06/2024 21:18:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reserva](
	[id_reserva] [int] IDENTITY(1,1) NOT NULL,
	[fecha_reserva] [date] NOT NULL,
	[id_libro] [int] NOT NULL,
	[id_usuario] [int] NOT NULL,
 CONSTRAINT [PK_Reserva] PRIMARY KEY CLUSTERED 
(
	[id_reserva] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 09/06/2024 21:18:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[id_usuario] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Apellido] [nvarchar](50) NOT NULL,
	[correo_usuario] [nchar](80) NOT NULL,
	[password] [nchar](30) NOT NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LibroAutor]  WITH CHECK ADD FOREIGN KEY([id_libro])
REFERENCES [dbo].[Libros] ([id_libro])
GO
ALTER TABLE [dbo].[LibroAutor]  WITH CHECK ADD FOREIGN KEY([id_libro])
REFERENCES [dbo].[Autores] ([id_autor])
GO
ALTER TABLE [dbo].[LibroCategoria]  WITH CHECK ADD  CONSTRAINT [FK__LibroCate__id_ca__6754599E] FOREIGN KEY([id_categoria])
REFERENCES [dbo].[Categorias] ([id_categoria])
GO
ALTER TABLE [dbo].[LibroCategoria] CHECK CONSTRAINT [FK__LibroCate__id_ca__6754599E]
GO
ALTER TABLE [dbo].[LibroCategoria]  WITH CHECK ADD  CONSTRAINT [FK__LibroCate__id_li__66603565] FOREIGN KEY([id_libro])
REFERENCES [dbo].[Libros] ([id_libro])
GO
ALTER TABLE [dbo].[LibroCategoria] CHECK CONSTRAINT [FK__LibroCate__id_li__66603565]
GO
ALTER TABLE [dbo].[Libros]  WITH CHECK ADD  CONSTRAINT [FK_Libros_Editorial] FOREIGN KEY([id_editorial])
REFERENCES [dbo].[Editorial] ([id_editorial])
GO
ALTER TABLE [dbo].[Libros] CHECK CONSTRAINT [FK_Libros_Editorial]
GO
ALTER TABLE [dbo].[Prestamo]  WITH CHECK ADD  CONSTRAINT [FK__Prestamo__id_lib__6B24EA82] FOREIGN KEY([id_libro])
REFERENCES [dbo].[Libros] ([id_libro])
GO
ALTER TABLE [dbo].[Prestamo] CHECK CONSTRAINT [FK__Prestamo__id_lib__6B24EA82]
GO
ALTER TABLE [dbo].[Prestamo]  WITH CHECK ADD  CONSTRAINT [FK__Prestamo__id_usu__6A30C649] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[Usuarios] ([id_usuario])
GO
ALTER TABLE [dbo].[Prestamo] CHECK CONSTRAINT [FK__Prestamo__id_usu__6A30C649]
GO
ALTER TABLE [dbo].[Reseña]  WITH CHECK ADD  CONSTRAINT [FK__Reseña__id_libro__534D60F1] FOREIGN KEY([id_libro])
REFERENCES [dbo].[Libros] ([id_libro])
GO
ALTER TABLE [dbo].[Reseña] CHECK CONSTRAINT [FK__Reseña__id_libro__534D60F1]
GO
ALTER TABLE [dbo].[Reseña]  WITH CHECK ADD  CONSTRAINT [FK__Reseña__id_usuar__52593CB8] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[Usuarios] ([id_usuario])
GO
ALTER TABLE [dbo].[Reseña] CHECK CONSTRAINT [FK__Reseña__id_usuar__52593CB8]
GO
ALTER TABLE [dbo].[Reserva]  WITH CHECK ADD  CONSTRAINT [FK_Reserva_Libros] FOREIGN KEY([id_libro])
REFERENCES [dbo].[Libros] ([id_libro])
GO
ALTER TABLE [dbo].[Reserva] CHECK CONSTRAINT [FK_Reserva_Libros]
GO
ALTER TABLE [dbo].[Reserva]  WITH CHECK ADD  CONSTRAINT [FK_Reserva_Reserva] FOREIGN KEY([id_reserva])
REFERENCES [dbo].[Reserva] ([id_reserva])
GO
ALTER TABLE [dbo].[Reserva] CHECK CONSTRAINT [FK_Reserva_Reserva]
GO
ALTER TABLE [dbo].[Reserva]  WITH CHECK ADD  CONSTRAINT [FK_Reserva_Usuarios] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[Usuarios] ([id_usuario])
GO
ALTER TABLE [dbo].[Reserva] CHECK CONSTRAINT [FK_Reserva_Usuarios]
GO
ALTER TABLE [dbo].[Reseña]  WITH CHECK ADD  CONSTRAINT [CK__Reseña__califica__5165187F] CHECK  (([calificacion]>=(1) AND [calificacion]<=(5)))
GO
ALTER TABLE [dbo].[Reseña] CHECK CONSTRAINT [CK__Reseña__califica__5165187F]
GO
USE [master]
GO
ALTER DATABASE [Biblioteca ] SET  READ_WRITE 
GO
