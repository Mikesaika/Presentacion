USE [SISCel]
GO
/****** Object:  StoredProcedure [dbo].[spObtenerDispositivos]    Script Date: 19/11/2024 16:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Procedimiento almacenado para obtener Clientes
ALTER PROCEDURE [dbo].[spObtenerDispositivos]
AS
BEGIN
    SELECT 
		IdDispositivo,
		Marca,
		Modelo,
		SistemaOperativo,
		CapacidadAlmacenamiento,
		TamanioPantalla,
		AnioFabricacion,
		TipoDispositivo,
		D.IdCliente,
		C.Cedula,
		C.Nombres,
		C.Apellidos,
		C.Telefono,
		C.Email,
		C.TipoCliente,
		D.Estado
	FROM Dispositivo D
	INNER JOIN Cliente C ON D.IdCliente = C.IdCliente 
END