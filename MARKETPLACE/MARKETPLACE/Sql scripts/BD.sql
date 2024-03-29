use master
go
if Db_Id('RocketMarkets') is not null
  drop database RocketMarkets
go
create database RocketMarkets
go
use RocketMarkets
go
set dateformat DMY
GO
CREATE SEQUENCE SEQ_MARCA
AS SMALLINT
START WITH 1
INCREMENT BY 1
NO CYCLE
NO CACHE
GO

CREATE SEQUENCE SEQ_CATEG
AS SMALLINT
START WITH 1
INCREMENT BY 1
NO CYCLE
NO CACHE
GO
CREATE SEQUENCE SEQ_PROD
AS SMALLINT
START WITH 1
INCREMENT BY 1
NO CYCLE
NO CACHE
GO
--==========================================================
--------------TABLA SEXO------------------
If Object_id ('sexo') is not null
begin
drop table sexo
end
create table sexo
(
idsexo int identity(1,1) primary key,
descripcion varchar(20)
)
go
--==========================================================
--------------TABLA PAIS------------------
If Object_id ('pais') is not null
begin
drop table pais
end
create table pais
(
idpais int identity(1,1) primary key,
descripcion varchar(20)
)
go
--==========================================================
--------------TABLA PROVINCIA------------------
If Object_id ('provincia') is not null
begin
drop table provincia
end
create table provincia
(
idprovincia int identity(1,1) primary key,
nombre varchar(45) not null
)
go
--==========================================================
--------------TABLA DISTRITO------------------
If Object_id ('distrito') is not null
begin
drop table distrito
end
create table distrito
(
iddistrito int identity(1,1) primary key,
nombre varchar(45) not null
)
go
--==========================================================
--------------TABLA TIPO DE EMPRESA------------------
If Object_id ('tipo_empresa') is not null
begin
drop table tipo_empresa
end
create table tipo_empresa
(
idtipo int identity(1,1) primary key,
descripcion varchar(45) not null
)
go
--==========================================================
--------------TABLA AFILIADO------------------
If Object_id ('afiliado') is not null
begin
drop table afiliado
end
create table afiliado
(
codigo int identity(1,1) primary key, 
nombres varchar(45) not null,
apellidos varchar(45) not null,
email varchar(45) not null,
empresa varchar(70) not null,
direccion varchar(45) not null,
idpais int not null,
idprovincia int not null,
iddistrito int not null,
idtipo int not null,
Nro_ruc int not null,
telefono int,
contraseņa varchar(20),
confir_contraseņa varchar(20),
FOREIGN KEY (idpais) REFERENCES pais(idpais),
FOREIGN KEY (idprovincia) REFERENCES provincia(idprovincia),
FOREIGN KEY (iddistrito) REFERENCES distrito(iddistrito),
FOREIGN KEY (idtipo) REFERENCES tipo_empresa(idtipo)
)
GO
--==========================================================
-----------SECUENCIA USER--------------
If Object_id ('codUSER') is not null
begin
drop sequence codUSER
end
create sequence codUSER
as smallint
start with 1
increment by 1
no cycle
no cache
go
--==========================================================
-----------TABLE USER--------------
If Object_id ('Users') is not null
begin
drop table Users
end
create table Users(
id varchar(20)not null primary key default 'USER'+right('00'+cast(next value for codUSER as varchar),3),
nombre varchar(45) not null,
apellido varchar(50) not null,
idpais int not null,
usuario varchar(25) not null,
email varchar(60) not null,
password varchar(30) not null,
FOREIGN KEY (idpais) REFERENCES pais(idpais),
)
GO
--==========================================================
--------------TABLA USUARIO------------------
If Object_id ('usuario') is not null
begin
drop table usuario
end
create table usuario
(
codigo int identity(1,1) primary key,
nombres varchar(50),
idpais int,
idsexo int,
email varchar(100),
contraseņa varchar(20),
confir_contraseņa varchar(20),
--idRol int null REFERENCES rol(id),
FOREIGN KEY (idpais) REFERENCES pais(idpais),
FOREIGN KEY (idsexo) REFERENCES sexo(idsexo)
)
go
--==========================================================
-----------SECUENCIA PERMISOS--------------
If Object_id ('codPER') is not null
begin
drop sequence codPER
end
create sequence codPER
as smallint
start with 1
increment by 1
no cycle
no cache
go
--==========================================================
-----------SECUENCIA PERMISOS--------------
If Object_id ('codTIPO') is not null
begin
drop sequence codTIPO
end
create sequence codTIPO
as smallint
start with 1
increment by 1
no cycle
no cache
go
--==========================================================
-----------SECUENCIA PRODUCTO--------------

If Object_id ('codPROD') is not null
begin
drop sequence codPROD
end
create sequence codPROD
as smallint
start with 1
increment by 1
no cycle
no cache
go
--==========================================================
--------------TABLA TIPOPERMISO------------------
If Object_id ('tipo_permiso') is not null
begin
drop table tipo_permiso
end
create table tipo_permiso
(
cod_tiper varchar(20) not null primary key default 'TIPER'+RIGHT('00'+cast(next value for codTIPO as varchar),3),
descripcion varchar(45) not null
)
go
--==========================================================
--------------TABLA PERMISOS------------------
If Object_id ('permisos') is not null
begin
drop table permisos
end
create table permisos
(
id varchar(20)not null primary key default 'PER'+right('00'+cast(next value for codPER as varchar),3),
Username varchar(45)not null,
password varchar(45) not null,
cod_tiper varchar(20),
FOREIGN KEY (cod_tiper) REFERENCES tipo_permiso(cod_tiper)
)
go
--====================================================================================================
--------------CREACION DE TABLAS RELACIONADAS AL PRODUCTO
--==================================================================================================
--------------TABLA MARCA------------------
If Object_id ('marca') is not null
begin
drop table marca
end
Create table  marca
(
idmarca varchar(20) not null primary key default 'MR'+right('00'+cast(next value for SEQ_MARCA as varchar),3),
desc_marca varchar(50)
)
go
insert into marca (desc_marca) values('Samsung')
insert into marca (desc_marca) values('LG')
insert into marca (desc_marca) values('Huawei')
insert into marca (desc_marca) values('Panasonic')
insert into marca (desc_marca) values('Canon')
--==========================================================
--------------TABLA CATEGORIA------------------
If Object_id ('categoria') is not null
begin
drop table categoria
end
Create table categoria
(
idcategoria varchar(20) not null primary key default 'CAT'+right('00'+cast(next value for SEQ_CATEG as varchar),3),
desc_categoria varchar(50)
)
go
insert into categoria (desc_categoria) values ('Smartphones')
insert into categoria (desc_categoria) values ('Televisores')
insert into categoria (desc_categoria) values ('Smartwatch')
insert into categoria (desc_categoria) values ('Monitor')
--==========================================================
--------------TABLA MARCA_CATEGORIA------------------
--If Object_id ('marca_categoria') is not null
--begin
--drop table marca_categoria
--end
--Create table marca_categoria
--(
--id_marca_categoria int not null primary key,
--idmarca varchar(20),
--idcategoria varchar(20),
--FOREIGN KEY(id_marca) REFERENCES marca(idmarca),
--FOREIGN KEY(id_categoria) REFERENCES categoria(idcategoria)
--)

--insert into marca_categoria values (1,1,1)
--insert into marca_categoria values (2,1,2)
--insert into marca_categoria values (3,1,3)
--insert into marca_categoria values (4,1,4)
--insert into marca_categoria values (5,2,1)

--==========================================================
--------------TABLA PRODUCTO_TELEVISOR------------------
--If Object_id ('producto_televisor') is not null
--begin
--drop table producto_televisor
--end
--create table producto_televisor
--(
--id_prod_televisor int not null primary key,
--nombre_prod varchar(70),
--modelo varchar(30),
--wifi varchar(5),
--resolucion varchar(15),
--HDMI int,
--USB int,
--bluetooth varchar(5),
--id_marcacategoria int not null
--FOREIGN KEY(id_marcacategoria) REFERENCES marca_categoria(id_marca_categoria)
--)

--insert into producto_televisor values (1,'Televisor Samsung Smart LED FULL HD 49'' TEST UHD MODELO 2019','TEST','Si','Full HD',3,2,'Si',2)

--==========================================================
--------------TABLA PRODUCTO------------------
If Object_id ('producto') is not null
begin
drop table producto
end
create table producto (
id_producto varchar(20)not null primary key default 'PROD'+right('00'+cast(next value for SEQ_PROD as varchar),3),
idmarca varchar(20),
idcategoria varchar(20),
nombre_producto varchar(50) not null,
img_producto varbinary(max) NULL,
preciof_producto decimal not null,
desc_producto varchar(50) 
FOREIGN KEY(idmarca) REFERENCES marca(idmarca),
FOREIGN KEY(idcategoria) REFERENCES categoria(idcategoria)
)
go
--==================================================================================================
--==========================================================
--------------INSERT TIPOPERMISO------------------
insert into tipo_permiso (descripcion)
values
('ADMINISTARDOR'),
('VENTAS'), 
('AFILIADO'),
('CLIENTE')
go
--==========================================================
--------------INSERT PERMISOS------------------
insert into permisos (Username,password,cod_tiper)
values
('salcedo ivan','987654321','TIPER001')
go
--==========================================================
--------------INSERT PAIS------------------
insert into pais 
values
('Argentina'),('Ecuador'),('Bolivia'),('Venezuela'),('Uruguay'),('Paraguay'),('Chile'),
('Brasil'),('Mexico'),('Costa rica'),('Panama'),('Nicaragua'),('Honduras'),('Espaņa'),('Peru')
--==========================================================
--------------INSERT USER------------------
insert into Users (nombre,apellido,idpais,usuario,email,password)
values('rodrigo','salazar',1,'rodri','rodrigo@hotmail.com','123456789');
go
--==========================================================
--------------INSERT SEXO------------------
insert into sexo 
values
('Masculino'),
('Femenino')
go
--==========================================================
--------------INSERT USUARIO------------------
insert into usuario 
values
('ivan',1,1,'ivansalcedoq@outlook.es',123,123)
go
--==========================================================
--------------INSERT PROVINCIA------------------
insert into provincia 
values
('Lima'),
('Callao')
go
--==========================================================
--------------INSERT DISTRITO------------------
insert into distrito 
values
('Lima'),
('Comas')
go
--==========================================================
--------------INSERT TIPO DE EMPRESA------------------
insert into tipo_empresa 
values
('Technologica')
go
--==========================================================
--------------PROC USP_Registro_afiliado------------------
CREATE Procedure USP_Registro_afiliado
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
 insert into afiliado( nombres, apellidos, email, empresa, direccion, idpais, idprovincia, iddistrito, idtipo, Nro_ruc, telefono,contraseņa, confir_contraseņa ) 
 values (@nom, @ape, @email, @empre, @dir, @idpais, @idprovincia, @iddistrito, @idtipo, @Nruc, @fono,@contra, @confcontra)
end
GO
--==========================================================
--------------PROC USP_Registro_usuario------------------
create Procedure USP_Registro_users
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
--==========================================================
select * from Pais
GO
--==========================================================
--------------PROC USP_Registro_producto------------------
create Procedure USP_Registro_producto
(
 
 @idmarca varchar(20),
 @idcategoria varchar(20),
 @nomp varchar(50),
 @img varbinary(max),
 @precio decimal,
 @descripcion varchar(50)
)
as
begin
 insert into producto( idmarca, idcategoria, nombre_producto, img_producto, preciof_producto, desc_producto) 
 values (@idmarca,@idcategoria, @nomp, @img, @precio, @descripcion)
end
GO

CREATE PROC DELETE_PRODUCTO
(
@COD_PRO VARCHAR(20)
)
AS
BEGIN
	DELETE producto	WHERE id_producto=@COD_PRO
END
GO