--------------PROC USP_Registro_producto------------------
CREATE PROC ADD_PRODUCTO
(
@ID_MAR VARCHAR(20),
@ID_CAT VARCHAR(20),
@NOM_PROD VARCHAR(50),
@IMG_PROD VARBINARY(MAX),
@PRECIO DECIMAL,
@DESC1 VARCHAR(50),
@DESC2 VARCHAR(50),
@DESC3 VARCHAR(50),
@DESC4 VARCHAR(50),
@DESC5 VARCHAR(50),
@DESC6 VARCHAR(50),
@DESC7 VARCHAR(50)
)
AS
BEGIN
	INSERT INTO producto
	(idmarca,idcategoria,nombre_producto,img_producto,preciof_producto,desc_1,desc_2,desc_3,desc_4,desc_5,desc_6,desc_7) 
	VALUES
	(@ID_MAR,@ID_CAT,@NOM_PROD ,@IMG_PROD ,@PRECIO ,@DESC1 ,@DESC2 ,@DESC3 ,@DESC4 ,@DESC5 ,@DESC6 ,@DESC7)
END
GO
---------------------------------------------------------------
CREATE PROC UPDATE_PRODUCTO
(
@ID_MAR VARCHAR(20),
@ID_CAT VARCHAR(20),
@NOM_PROD VARCHAR(50),
@IMG_PROD VARBINARY(MAX),
@PRECIO DECIMAL,
@DESC1 VARCHAR(50),
@DESC2 VARCHAR(50),
@DESC3 VARCHAR(50),
@DESC4 VARCHAR(50),
@DESC5 VARCHAR(50),
@DESC6 VARCHAR(50),
@DESC7 VARCHAR(50)
)
AS
BEGIN
	UPDATE producto
	SET idmarca=@ID_MAR,idcategoria=@ID_CAT,nombre_producto=@NOM_PROD,
	img_producto=@IMG_PROD,preciof_producto=@PRECIO,desc_1=@DESC1 ,desc_2=@DESC2 ,desc_3=@DESC3 ,desc_4=@DESC4,desc_5=@DESC5,desc_6=@DESC6 ,desc_7=@DESC7
	WHERE id_producto=id_producto
END
GO
--------------------------------------------------------------------
CREATE PROC LIST_PRODUCTO
AS
BEGIN
	SELECT id_producto,idmarca,idcategoria,nombre_producto,img_producto,preciof_producto,desc_1,desc_2,desc_3,desc_4,desc_5,desc_6,desc_7
	FROM producto
END
GO
----------------------------------------------------------------
CREATE PROC DELETE_PRODUCTO
(
@COD_PRO VARCHAR(20)
)
AS
BEGIN
	DELETE producto	WHERE id_producto=@COD_PRO
END
GO

exec DELETE_PRODUCTO 'PRD007'