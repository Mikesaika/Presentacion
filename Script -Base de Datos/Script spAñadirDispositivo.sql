USE [SISCel]
GO
/****** Object:  StoredProcedure [dbo].[spAñadirDispositivo]    Script Date: 19/11/2024 16:00:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Procedimiento almacenado para añadir una región
ALTER PROCEDURE [dbo].[spAñadirDispositivo]
    @Marca NVARCHAR(25),
	@Modelo NVARCHAR(25),    
	@SistemaOperativo NVARCHAR(25),    
	@CapacidadAlmacenamiento NVARCHAR(25),
	@TamanioPantalla NVARCHAR(25),
	@AnioFabricacion INT,
	@TipoDispositivo NVARCHAR(25),
	@IdCliente INT
AS
BEGIN
    INSERT INTO Dispositivo(
	Marca,
	Modelo,
	SistemaOperativo,
	CapacidadAlmacenamiento,
	TamanioPantalla,
	AnioFabricacion,
	TipoDispositivo,
	IdCliente,
	FechaEmision
	) 
	VALUES(
	@Marca,
	@Modelo,
	@SistemaOperativo,
	@CapacidadAlmacenamiento,
	@TamanioPantalla,
	@AnioFabricacion,
	@TipoDispositivo,
	@IdCliente,
	GETDATE()
	)
END