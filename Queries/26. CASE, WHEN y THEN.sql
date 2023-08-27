USE Maraton
SELECT *, "Categoría" =
	CASE
		WHEN time <= 200 THEN 'Veloz'
		WHEN time BETWEEN 200 AND 300 THEN 'Regular'
		ELSE 'Lento'
	END
FROM Maraton_NY

USE Alumnos
SELECT Nombre, "Comunicación" =
	CASE
		WHEN Telefono IS NOT NULL THEN CONCAT('Llamar al ', Telefono)
		WHEN Direccion IS NOT NULL THEN CONCAT('Enviar cardex a ', Direccion)
		ELSE 'El alumno no tiene registrado un teléfono ni dirección'
	END
FROM Datos_Personales