USE [SISCel]
GO
/****** Object:  StoredProcedure [dbo].[spObtenerRepuestos]    Script Date: 19/11/2024 16:06:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Procedimiento almacenado para obtener Repuestos
ALTER PROCEDURE [dbo].[spObtenerRepuestos]
AS
BEGIN
    SELECT 
		IdItem,
		Descripcion,
		TipoItem,
		ProveedorOrigen,
		Costo,
		Precio,
		Estado
	FROM Item	
	WHERE TipoItem = 'Repuesto'
END