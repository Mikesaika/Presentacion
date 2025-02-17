USE [SISCel]
GO
/****** Object:  StoredProcedure [dbo].[spObtenerOrdenReparacionDetalle]    Script Date: 19/11/2024 16:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Procedimiento almacenado para obtener órdenes de reparación detalle
ALTER PROCEDURE [dbo].[spObtenerOrdenReparacionDetalle]
@IdOrdenReparacion INT
AS
BEGIN
    SELECT 
		IdOrdenReparacionDetalle,
		D.IdOrdenReparacion,
		I.Descripcion,
		I.Precio,
		Cantidad,
		D.Total
	FROM DetalleOrdenReparacion D
	INNER JOIN OrdenReparacion O ON O.IdOrdenReparacion = D.IdOrdenReparacion
	INNER JOIN Item I ON I.IdItem = D.IdItem
	WHERE
	D.IdOrdenReparacion = @IdOrdenReparacion	
END