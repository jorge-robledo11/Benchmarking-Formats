USE Alumnos

SELECT *
FROM Datos_Personales
WHERE Estado_Civil = 'Single'

SELECT *
FROM Datos_Personales
WHERE Estado_Civil <> 'Single' OR Estado_Civil IS NULL

SELECT *
FROM Datos_Personales
WHERE Correo LIKE '%gmail%'

SELECT *
FROM Datos_Personales
WHERE Nombre LIKE 'A%'
