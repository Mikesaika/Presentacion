USE [SISCel]
GO
/****** Object:  StoredProcedure [dbo].[spObtenerServicios]    Script Date: 19/11/2024 16:06:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Procedimiento almacenado para obtener Servicios
ALTER PROCEDURE [dbo].[spObtenerServicios]
AS
BEGIN
    SELECT 
		IdItem,
		Descripcion,
		TipoItem,
		TiempoDeServicio,
		0 Costo,
		Precio,
		Estado
	FROM Item	
	WHERE TipoItem = 'Servicio'
END