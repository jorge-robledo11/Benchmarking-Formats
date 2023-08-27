/* Utilizando la información contenida en la base de datos Alumnos, encuentre la nacionalidad
de las alumnas solteras y alumnos divorciados registrados en cada una de las actividades
extracurriculares. Incluya además la cantidad de alumnos que cumplen con estas condiciones */

CREATE VIEW Alumnos_Estado_Civil AS
SELECT Datos_Personales.Estado_Civil, Datos_Personales.Genero, Ciudad.Pais,
	   Actividades_Extra.Actividad
FROM Ciudad
INNER JOIN Datos_Personales ON Ciudad.Ciudad = Datos_Personales.Ciudad
INNER JOIN Actividades_Extra ON Actividades_Extra.Id_num = Datos_Personales.Id_num

/* Observamos la view creada */
SELECT * 
FROM Alumnos_Estado_Civil

/* Tabla View filtrada */
SELECT Pais, Estado_Civil, Genero, Actividad, COUNT(Actividad) AS Cantidad_Estados_Civiles
FROM Alumnos_Estado_Civil 
WHERE (Genero='F' AND Estado_Civil='Single') OR (Genero='M' AND Estado_Civil='Divorced')
GROUP BY Estado_Civil, Pais, Genero, Actividad
ORDER BY Pais, Estado_Civil, Actividad

/* Dropeamos la tabla view creada anteriormente */
DROP VIEW Alumnos_Estado_Civil