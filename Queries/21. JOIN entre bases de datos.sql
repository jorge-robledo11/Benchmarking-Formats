SELECT *
FROM Alumnos.dbo.Datos_Personales as DP
INNER JOIN Adventure_Robledo.dbo.Actividades_Extra as AE
	ON DP.Id_num = AE.Id_num