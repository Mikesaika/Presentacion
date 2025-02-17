USE [SISCel]
GO
/****** Object:  StoredProcedure [dbo].[spAñadirTecnico]    Script Date: 19/11/2024 16:03:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Procedimiento almacenado para añadir una región
ALTER PROCEDURE [dbo].[spAñadirTecnico]
    @Cedula NVARCHAR(13),
	@Nombres NVARCHAR(20),    
	@Apellidos NVARCHAR(20),    
	@Telefono NVARCHAR(15),
	@Email NVARCHAR(25),
	@Especialidad NVARCHAR(25),
	@AniosExperiencia INT
AS
BEGIN
    INSERT INTO Tecnico (Cedula,Nombres,Apellidos,Telefono,Email,Especialidad,AniosExperiencia,FechaEmision)
    VALUES (@Cedula,@Nombres,@Apellidos,@Telefono,@Email,@Especialidad,@AniosExperiencia,GETDATE())
END