USE [SISCel]
GO
/****** Object:  StoredProcedure [dbo].[spObtenerOrdenReparacionCabecera]    Script Date: 19/11/2024 16:05:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Procedimiento almacenado para obtener órdenes de reparación
ALTER PROCEDURE [dbo].[spObtenerOrdenReparacionCabecera]
AS
BEGIN
    SELECT 
		IdOrdenReparacion,
		O.IdDispositivo,
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
		TipoCliente,
		C.Estado EstadoC,
		D.Estado EstadoD,
		EstadoOrden,
		TipoServicio,
		O.IdTecnico,
		T.Cedula CedulaT,
		T.Nombres NombresT,
		T.Apellidos ApellidosT,
		T.Telefono TelefonoT,
		T.Email EmailT,
		Especialidad,
		AniosExperiencia,
		T.Estado EstadoT,
		Motivo,
		Diagnostico,
		TrabajoRealizado,
		Autorizado,
		ISNULL(Subtotal,0) Subtotal,
		ISNULL(Impuesto,0) Impuesto,
		ISNULL(Total,0) Total,
		O.FechaEmision,
		O.Estado
	FROM OrdenReparacion O
	INNER JOIN Dispositivo D ON D.IdDispositivo = O.IdDispositivo
	INNER JOIN Cliente C ON C.IdCliente = D.IdCliente
	INNER JOIN Tecnico T ON T.IdTecnico = O.IdTecnico
END