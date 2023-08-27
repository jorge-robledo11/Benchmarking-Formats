USE Alumnos

/* Obtenga una lista de todos los alumnos que se encuentran en la tabla Datos_Personales,
incluyendo su nombre y la ciudad en la que radican. En caso de que el alumno esté registrado
en algunas de las actividades extra-curriculares contenidas en la tabla Actividades_Extra,
muestre también el nombre de dicha activida */

-- Creamos las variables en las que vamos a almacenar los datos
DECLARE @Nombre VARCHAR(255), @Ciudad VARCHAR(255)

-- Creamos el Cursor
DECLARE Clases_Extras CURSOR
	FOR SELECT Nombre, Ciudad
	FROM Datos_Personales

-- Accedemos al cursor para llevar a cabo alguna acción sobre los registros
OPEN Clases_Extras

	FETCH NEXT FROM Clases_Extras
	INTO @Nombre, @Ciudad

SELECT @Nombre AS NOMBRE
SELECT @Ciudad AS CIUDAD