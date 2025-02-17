USE [SISCel]
GO
/****** Object:  StoredProcedure [dbo].[spAñadirRepuesto]    Script Date: 19/11/2024 16:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Procedimiento almacenado para añadir un repuesto
ALTER PROCEDURE [dbo].[spAñadirRepuesto]
    @Descripcion NVARCHAR(25),
	@TipoItem NVARCHAR(15),    
	@ProveedorOrigen NVARCHAR(25),    
	@Costo NUMERIC(18,2),
	@Precio NUMERIC(18,2)	
AS
BEGIN
    INSERT INTO Item (Descripcion,TipoItem,ProveedorOrigen,Costo,Precio,FechaEmision)
    VALUES (@Descripcion,@TipoItem,@ProveedorOrigen,@Costo,@Precio,GETDATE())
END