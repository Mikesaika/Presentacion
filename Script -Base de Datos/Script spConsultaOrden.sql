USE [SISCel]
GO
/****** Object:  StoredProcedure [dbo].[spConsultarOrden]    Script Date: 19/11/2024 16:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Procedimiento almacenado para consultar órdenes de servicio
ALTER PROCEDURE [dbo].[spConsultarOrden]
@Orden INT,
@Cedula NVARCHAR(13)
AS
BEGIN
    SELECT 
		IdOrdenReparacion,		
		CONCAT(C.Nombres,' ',C.Apellidos) Cliente,				
		Marca,
		Modelo,
		SistemaOperativo,				
		TipoDispositivo,						
		EstadoOrden,
		TipoServicio,				
		CONCAT(T.Nombres,' ',T.Apellidos) Tecnico,		
		Motivo,
		Diagnostico,
		TrabajoRealizado,		
		ISNULL(Subtotal,0) Subtotal,
		ISNULL(Impuesto,0) Impuesto,
		ISNULL(Total,0) Total,
		O.FechaEmision
	FROM OrdenReparacion O
	INNER JOIN Dispositivo D ON D.IdDispositivo = O.IdDispositivo
	INNER JOIN Cliente C ON C.IdCliente = D.IdCliente
	INNER JOIN Tecnico T ON T.IdTecnico = O.IdTecnico
	WHERE
	IdOrdenReparacion = @Orden AND C.Cedula = @Cedula
END