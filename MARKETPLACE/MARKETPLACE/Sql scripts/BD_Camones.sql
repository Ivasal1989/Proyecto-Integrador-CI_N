USE [master]
GO
/****** Object:  Database [RocketMarkets2]    Script Date: 28/10/2019 03:20:03 p. m. ******/
CREATE DATABASE [RocketMarkets2]
-- CONTAINMENT = NONE
-- ON  PRIMARY 
--( NAME = N'RocketMarkets2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\RocketMarkets2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
-- LOG ON 
--( NAME = N'RocketMarkets2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\RocketMarkets2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
--GO
--ALTER DATABASE [RocketMarkets2] SET COMPATIBILITY_LEVEL = 140
--GO
--IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
--begin
--EXEC [RocketMarkets2].[dbo].[sp_fulltext_database] @action = 'enable'
--end
--GO
ALTER DATABASE [RocketMarkets2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RocketMarkets2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RocketMarkets2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RocketMarkets2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RocketMarkets2] SET ARITHABORT OFF 
GO
ALTER DATABASE [RocketMarkets2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RocketMarkets2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RocketMarkets2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RocketMarkets2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RocketMarkets2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RocketMarkets2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RocketMarkets2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RocketMarkets2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RocketMarkets2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RocketMarkets2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [RocketMarkets2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RocketMarkets2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RocketMarkets2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RocketMarkets2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RocketMarkets2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RocketMarkets2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RocketMarkets2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RocketMarkets2] SET RECOVERY FULL 
GO
ALTER DATABASE [RocketMarkets2] SET  MULTI_USER 
GO
ALTER DATABASE [RocketMarkets2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RocketMarkets2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RocketMarkets2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RocketMarkets2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [RocketMarkets2] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'RocketMarkets2', N'ON'
GO
--ALTER DATABASE [RocketMarkets2] SET QUERY_STORE = OFF
--GO
USE [RocketMarkets2]
GO
USE [RocketMarkets2]
GO
/****** Object:  Sequence [dbo].[codPER]    Script Date: 28/10/2019 03:20:03 p. m. ******/
CREATE SEQUENCE [dbo].[codPER] 
 AS [smallint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -32768
 MAXVALUE 32767
 NO CACHE 
GO
USE [RocketMarkets2]
GO
/****** Object:  Sequence [dbo].[codPROD]    Script Date: 28/10/2019 03:20:03 p. m. ******/
CREATE SEQUENCE [dbo].[codPROD] 
 AS [smallint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -32768
 MAXVALUE 32767
 NO CACHE 
GO
USE [RocketMarkets2]
GO
/****** Object:  Sequence [dbo].[codTIPO]    Script Date: 28/10/2019 03:20:03 p. m. ******/
CREATE SEQUENCE [dbo].[codTIPO] 
 AS [smallint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -32768
 MAXVALUE 32767
 NO CACHE 
GO
USE [RocketMarkets2]
GO
/****** Object:  Sequence [dbo].[codUSER]    Script Date: 28/10/2019 03:20:03 p. m. ******/
CREATE SEQUENCE [dbo].[codUSER] 
 AS [smallint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -32768
 MAXVALUE 32767
 NO CACHE 
GO
USE [RocketMarkets2]
GO
/****** Object:  Sequence [dbo].[SEQ_CATEG]    Script Date: 28/10/2019 03:20:03 p. m. ******/
CREATE SEQUENCE [dbo].[SEQ_CATEG] 
 AS [smallint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -32768
 MAXVALUE 32767
 NO CACHE 
GO
USE [RocketMarkets2]
GO
/****** Object:  Sequence [dbo].[SEQ_MARCA]    Script Date: 28/10/2019 03:20:03 p. m. ******/
CREATE SEQUENCE [dbo].[SEQ_MARCA] 
 AS [smallint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -32768
 MAXVALUE 32767
 NO CACHE 
GO
USE [RocketMarkets2]
GO
/****** Object:  Sequence [dbo].[SEQ_PROD]    Script Date: 28/10/2019 03:20:03 p. m. ******/
CREATE SEQUENCE [dbo].[SEQ_PROD] 
 AS [smallint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -32768
 MAXVALUE 32767
 NO CACHE 
GO
/****** Object:  Table [dbo].[afiliado]    Script Date: 28/10/2019 03:20:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[afiliado](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[nombres] [varchar](45) NOT NULL,
	[apellidos] [varchar](45) NOT NULL,
	[email] [varchar](45) NOT NULL,
	[empresa] [varchar](70) NOT NULL,
	[direccion] [varchar](45) NOT NULL,
	[idpais] [int] NOT NULL,
	[idprovincia] [int] NOT NULL,
	[iddistrito] [int] NOT NULL,
	[idtipo] [int] NOT NULL,
	[Nro_ruc] [int] NOT NULL,
	[telefono] [int] NULL,
	[contraseña] [varchar](20) NULL,
	[confir_contraseña] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categoria]    Script Date: 28/10/2019 03:20:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categoria](
	[idcategoria] [int] NOT NULL,
	[desc_categoria] [varchar](500) NULL,
	[IsActive] [bit] NULL,
	[IsDelete] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[idcategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[distrito]    Script Date: 28/10/2019 03:20:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[distrito](
	[iddistrito] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](45) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iddistrito] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pais]    Script Date: 28/10/2019 03:20:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pais](
	[idpais] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[idpais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[permisos]    Script Date: 28/10/2019 03:20:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[permisos](
	[id] [varchar](20) NOT NULL,
	[Username] [varchar](45) NOT NULL,
	[password] [varchar](45) NOT NULL,
	[cod_tiper] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producto]    Script Date: 28/10/2019 03:20:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto](
	[id_producto] [int] NOT NULL,
	[idcategoria] [int] NULL,
	[IsActive] [bit] NULL,
	[IsDelete] [bit] NULL,
	[fechaCreado] [datetime] NULL,
	[fecaModificado] [datetime] NULL,
	[nombre_producto] [varchar](50) NOT NULL,
	[img_producto] [varchar](max) NULL,
	[preciof_producto] [decimal](18, 0) NOT NULL,
	[IsFeatured] [bit] NULL,
	[desc_producto] [varchar](50) NULL,
	[cantidad] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[provincia]    Script Date: 28/10/2019 03:20:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[provincia](
	[idprovincia] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](45) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idprovincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sexo]    Script Date: 28/10/2019 03:20:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sexo](
	[idsexo] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[idsexo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo_empresa]    Script Date: 28/10/2019 03:20:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_empresa](
	[idtipo] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](45) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idtipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo_permiso]    Script Date: 28/10/2019 03:20:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_permiso](
	[cod_tiper] [varchar](20) NOT NULL,
	[descripcion] [varchar](45) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_tiper] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 28/10/2019 03:20:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [varchar](20) NOT NULL,
	[nombre] [varchar](45) NOT NULL,
	[apellido] [varchar](50) NOT NULL,
	[idpais] [int] NOT NULL,
	[usuario] [varchar](25) NOT NULL,
	[email] [varchar](60) NOT NULL,
	[password] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 28/10/2019 03:20:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[nombres] [varchar](50) NULL,
	[idpais] [int] NULL,
	[idsexo] [int] NULL,
	[email] [varchar](100) NULL,
	[contraseña] [varchar](20) NULL,
	[confir_contraseña] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[categoria] ([idcategoria], [desc_categoria], [IsActive], [IsDelete]) VALUES (1, N'Celulares', 1, 0)
INSERT [dbo].[categoria] ([idcategoria], [desc_categoria], [IsActive], [IsDelete]) VALUES (2, N'Computadoras', 1, 0)
INSERT [dbo].[categoria] ([idcategoria], [desc_categoria], [IsActive], [IsDelete]) VALUES (3, N'Linea Blanca', 1, 0)
SET IDENTITY_INSERT [dbo].[distrito] ON 

INSERT [dbo].[distrito] ([iddistrito], [nombre]) VALUES (1, N'Lima')
INSERT [dbo].[distrito] ([iddistrito], [nombre]) VALUES (2, N'Comas')
SET IDENTITY_INSERT [dbo].[distrito] OFF
SET IDENTITY_INSERT [dbo].[pais] ON 

INSERT [dbo].[pais] ([idpais], [descripcion]) VALUES (1, N'Argentina')
INSERT [dbo].[pais] ([idpais], [descripcion]) VALUES (2, N'Ecuador')
INSERT [dbo].[pais] ([idpais], [descripcion]) VALUES (3, N'Bolivia')
INSERT [dbo].[pais] ([idpais], [descripcion]) VALUES (4, N'Venezuela')
INSERT [dbo].[pais] ([idpais], [descripcion]) VALUES (5, N'Uruguay')
INSERT [dbo].[pais] ([idpais], [descripcion]) VALUES (6, N'Paraguay')
INSERT [dbo].[pais] ([idpais], [descripcion]) VALUES (7, N'Chile')
INSERT [dbo].[pais] ([idpais], [descripcion]) VALUES (8, N'Brasil')
INSERT [dbo].[pais] ([idpais], [descripcion]) VALUES (9, N'Mexico')
INSERT [dbo].[pais] ([idpais], [descripcion]) VALUES (10, N'Costa rica')
INSERT [dbo].[pais] ([idpais], [descripcion]) VALUES (11, N'Panama')
INSERT [dbo].[pais] ([idpais], [descripcion]) VALUES (12, N'Nicaragua')
INSERT [dbo].[pais] ([idpais], [descripcion]) VALUES (13, N'Honduras')
INSERT [dbo].[pais] ([idpais], [descripcion]) VALUES (14, N'España')
INSERT [dbo].[pais] ([idpais], [descripcion]) VALUES (15, N'Peru')
SET IDENTITY_INSERT [dbo].[pais] OFF
INSERT [dbo].[permisos] ([id], [Username], [password], [cod_tiper]) VALUES (N'PER001', N'salcedo ivan', N'987654321', N'TIPER001')
INSERT [dbo].[producto] ([id_producto], [idcategoria], [IsActive], [IsDelete], [fechaCreado], [fecaModificado], [nombre_producto], [img_producto], [preciof_producto], [IsFeatured], [desc_producto], [cantidad]) VALUES (0, 1, NULL, NULL, CAST(N'2019-10-28T06:14:47.450' AS DateTime), NULL, N'SANSUNG 10PX', N'LOGO.jpg', CAST(1500 AS Decimal(18, 0)), 1, NULL, 30)
INSERT [dbo].[producto] ([id_producto], [idcategoria], [IsActive], [IsDelete], [fechaCreado], [fecaModificado], [nombre_producto], [img_producto], [preciof_producto], [IsFeatured], [desc_producto], [cantidad]) VALUES (1, 1, NULL, NULL, CAST(N'2010-10-10T00:00:00.000' AS DateTime), CAST(N'2019-10-28T06:19:09.180' AS DateTime), N'Nokia 6.5', N'NOKIA.jpg', CAST(2500 AS Decimal(18, 0)), NULL, N'new phone', 3)
SET IDENTITY_INSERT [dbo].[provincia] ON 

INSERT [dbo].[provincia] ([idprovincia], [nombre]) VALUES (1, N'Lima')
INSERT [dbo].[provincia] ([idprovincia], [nombre]) VALUES (2, N'Callao')
SET IDENTITY_INSERT [dbo].[provincia] OFF
SET IDENTITY_INSERT [dbo].[sexo] ON 

INSERT [dbo].[sexo] ([idsexo], [descripcion]) VALUES (1, N'Masculino')
INSERT [dbo].[sexo] ([idsexo], [descripcion]) VALUES (2, N'Femenino')
SET IDENTITY_INSERT [dbo].[sexo] OFF
SET IDENTITY_INSERT [dbo].[tipo_empresa] ON 

INSERT [dbo].[tipo_empresa] ([idtipo], [descripcion]) VALUES (1, N'Technologica')
SET IDENTITY_INSERT [dbo].[tipo_empresa] OFF
INSERT [dbo].[tipo_permiso] ([cod_tiper], [descripcion]) VALUES (N'TIPER001', N'ADMINISTARDOR')
INSERT [dbo].[tipo_permiso] ([cod_tiper], [descripcion]) VALUES (N'TIPER002', N'VENTAS')
INSERT [dbo].[tipo_permiso] ([cod_tiper], [descripcion]) VALUES (N'TIPER003', N'AFILIADO')
INSERT [dbo].[tipo_permiso] ([cod_tiper], [descripcion]) VALUES (N'TIPER004', N'CLIENTE')
INSERT [dbo].[Users] ([id], [nombre], [apellido], [idpais], [usuario], [email], [password]) VALUES (N'USER001', N'rodrigo', N'salazar', 1, N'rodri', N'rodrigo@hotmail.com', N'123456789')
SET IDENTITY_INSERT [dbo].[usuario] ON 

INSERT [dbo].[usuario] ([codigo], [nombres], [idpais], [idsexo], [email], [contraseña], [confir_contraseña]) VALUES (1, N'ivan', 1, 1, N'ivansalcedoq@outlook.es', N'123', N'123')
SET IDENTITY_INSERT [dbo].[usuario] OFF
ALTER TABLE [dbo].[permisos] ADD  DEFAULT ('PER'+right('00'+CONVERT([varchar],NEXT VALUE FOR [codPER]),(3))) FOR [id]
GO
ALTER TABLE [dbo].[tipo_permiso] ADD  DEFAULT ('TIPER'+right('00'+CONVERT([varchar],NEXT VALUE FOR [codTIPO]),(3))) FOR [cod_tiper]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('USER'+right('00'+CONVERT([varchar],NEXT VALUE FOR [codUSER]),(3))) FOR [id]
GO
ALTER TABLE [dbo].[afiliado]  WITH CHECK ADD FOREIGN KEY([iddistrito])
REFERENCES [dbo].[distrito] ([iddistrito])
GO
ALTER TABLE [dbo].[afiliado]  WITH CHECK ADD FOREIGN KEY([idpais])
REFERENCES [dbo].[pais] ([idpais])
GO
ALTER TABLE [dbo].[afiliado]  WITH CHECK ADD FOREIGN KEY([idprovincia])
REFERENCES [dbo].[provincia] ([idprovincia])
GO
ALTER TABLE [dbo].[afiliado]  WITH CHECK ADD FOREIGN KEY([idtipo])
REFERENCES [dbo].[tipo_empresa] ([idtipo])
GO
ALTER TABLE [dbo].[permisos]  WITH CHECK ADD FOREIGN KEY([cod_tiper])
REFERENCES [dbo].[tipo_permiso] ([cod_tiper])
GO
ALTER TABLE [dbo].[producto]  WITH CHECK ADD FOREIGN KEY([idcategoria])
REFERENCES [dbo].[categoria] ([idcategoria])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([idpais])
REFERENCES [dbo].[pais] ([idpais])
GO
ALTER TABLE [dbo].[usuario]  WITH CHECK ADD FOREIGN KEY([idpais])
REFERENCES [dbo].[pais] ([idpais])
GO
ALTER TABLE [dbo].[usuario]  WITH CHECK ADD FOREIGN KEY([idsexo])
REFERENCES [dbo].[sexo] ([idsexo])
GO
/****** Object:  StoredProcedure [dbo].[DELETE_PRODUCTO]    Script Date: 28/10/2019 03:20:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[DELETE_PRODUCTO]
(
@COD_PRO VARCHAR(20)
)
AS
BEGIN
	DELETE producto	WHERE id_producto=@COD_PRO
END
GO
/****** Object:  StoredProcedure [dbo].[USP_LIST_PROD]    Script Date: 28/10/2019 03:20:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[USP_LIST_PROD]
AS
BEGIN
	SELECT P.id_producto,C.desc_categoria,P.nombre_producto,P.img_producto,P.preciof_producto,P.desc_producto
	FROM producto P
	INNER JOIN categoria C
	ON P.idcategoria=C.idcategoria
END
EXEC USP_LIST_PROD
GO
/****** Object:  StoredProcedure [dbo].[USP_Registro_afiliado]    Script Date: 28/10/2019 03:20:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--==========================================================
--------------PROC USP_Registro_afiliado------------------
CREATE Procedure [dbo].[USP_Registro_afiliado]
(
 @nom varchar(45),
 @ape varchar(45),
 @email varchar(45),
 @empre varchar(70),
 @dir varchar(45),
 @idpais int,
 @idprovincia int,
 @iddistrito int,
 @idtipo int,
 @Nruc int,
 @fono int,
 @contra varchar(20),
 @confcontra varchar(20)
)
as
begin
 insert into afiliado( nombres, apellidos, email, empresa, direccion, idpais, idprovincia, iddistrito, idtipo, Nro_ruc, telefono,contraseña, confir_contraseña ) 
 values (@nom, @ape, @email, @empre, @dir, @idpais, @idprovincia, @iddistrito, @idtipo, @Nruc, @fono,@contra, @confcontra)
end
GO
/****** Object:  StoredProcedure [dbo].[USP_Registro_users]    Script Date: 28/10/2019 03:20:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--==========================================================
--------------PROC USP_Registro_usuario------------------
create Procedure [dbo].[USP_Registro_users]
(
 --@cod int,
 @nom varchar(50),
 @apellido varchar(50),
 @idpais int,
 @usu varchar(50),
 @email varchar(100),
 @contra varchar(20)
)
as
begin
 insert into Users( nombre, apellido, idpais, usuario, email, password) 
 values (@nom,@apellido, @idpais, @usu, @email, @contra)
end
GO
USE [master]
GO
ALTER DATABASE [RocketMarkets2] SET  READ_WRITE 
GO
