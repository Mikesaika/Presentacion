USE [SISCel]
GO
/****** Object:  StoredProcedure [dbo].[spObtenerClientes]    Script Date: 19/11/2024 16:04:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Procedimiento almacenado para obtener Clientes
ALTER PROCEDURE [dbo].[spObtenerClientes]
AS
BEGIN
    SELECT 
	IdCliente,  
	Cedula,
	Nombres,
	Apellidos,
	Telefono,
	Email,
	TipoCliente,
	Estado
	FROM Cliente
END