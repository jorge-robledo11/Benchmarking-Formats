USE Alumnos

DECLARE @Id_num int, @Pais varchar(20), @Ciudad varchar(20)

SET @Id_num = 14

SET @Ciudad = (SELECT Ciudad
			   FROM Datos_Personales
			   WHERE Id_num = @Id_num)

SET @Pais = (SELECT Pais
			 FROM Ciudad
			 WHERE Ciudad = @Ciudad)

SELECT @Id_num AS Número_del_Alumno
SELECT @Ciudad AS Ciudad
SELECT @Pais AS Pais