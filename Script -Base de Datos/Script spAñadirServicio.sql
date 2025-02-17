USE [SISCel]
GO
/****** Object:  StoredProcedure [dbo].[spAñadirServicio]    Script Date: 19/11/2024 16:02:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Procedimiento almacenado para añadir un servicio
ALTER PROCEDURE [dbo].[spAñadirServicio]
    @Descripcion NVARCHAR(25),
	@TipoItem NVARCHAR(15),    
	@TiempoDeServicio INT,    	
	@Precio NUMERIC(18,2)	
AS
BEGIN
    INSERT INTO Item (Descripcion,TipoItem,TiempoDeServicio,Costo,Precio,FechaEmision)
    VALUES (@Descripcion,@TipoItem,@TiempoDeServicio,0,@Precio,GETDATE())
END