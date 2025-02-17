USE [SISCel]
GO
/****** Object:  StoredProcedure [dbo].[spAñadirCliente]    Script Date: 19/11/2024 15:59:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Procedimiento almacenado para añadir una región
ALTER PROCEDURE [dbo].[spAñadirCliente]
    @Cedula NVARCHAR(13),
	@Nombres NVARCHAR(20),    
	@Apellidos NVARCHAR(20),    
	@Telefono NVARCHAR(15),
	@Email NVARCHAR(25),
	@TipoCliente CHAR(1)
AS
BEGIN
    INSERT INTO Cliente (Cedula,Nombres,Apellidos,Telefono,Email,TipoCliente,FechaEmision)
    VALUES (@Cedula,@Nombres,@Apellidos,@Telefono,@Email,@TipoCliente,GETDATE())
END