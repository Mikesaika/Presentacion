USE [SISCel]
GO
/****** Object:  StoredProcedure [dbo].[spObtenerAcceso]    Script Date: 19/11/2024 16:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Procedimiento almacenado para obtener Repuestos
ALTER PROCEDURE [dbo].[spObtenerAcceso]
@Usuario nvarchar(20),
@Clave nvarchar(15)
AS
BEGIN        	
	SELECT 
	  ISNULL(count(*),0) acceso
	FROM Usuario	
	WHERE NombreUsuario = @Usuario and Password = @Clave
END