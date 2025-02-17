USE [SISCel]
GO
/****** Object:  StoredProcedure [dbo].[spAñadirOrdenReparacion]    Script Date: 19/11/2024 16:01:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Procedimiento almacenado para añadir una órden de servicio
ALTER PROCEDURE [dbo].[spAñadirOrdenReparacion]
    @IdDispositivo INT,
	@EstadoOrden NVARCHAR(10),    
	@IdTecnico INT,    
	@Motivo TEXT	
AS
BEGIN
    INSERT INTO OrdenReparacion(
	IdDispositivo,
	EstadoOrden,
	IdTecnico,
	Motivo,	
	FechaEmision
	) 
	VALUES(
	@IdDispositivo,
	@EstadoOrden,
	@IdTecnico,
	@Motivo,	
	GETDATE()
	)
END