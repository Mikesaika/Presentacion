USE [SISCel]
GO
/****** Object:  StoredProcedure [dbo].[spObtenerTecnicos]    Script Date: 19/11/2024 16:07:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Procedimiento almacenado para obtener Tecnicos
ALTER PROCEDURE [dbo].[spObtenerTecnicos]
AS
BEGIN
    SELECT 
	IdTecnico,  
	Cedula,
	Nombres,
	Apellidos,
	Telefono,
	Email,
	Especialidad,
	AniosExperiencia,
	Estado
	FROM Tecnico
END