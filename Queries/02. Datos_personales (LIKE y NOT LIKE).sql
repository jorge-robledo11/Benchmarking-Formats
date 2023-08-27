USE Alumnos

SELECT *
FROM Datos_Personales
WHERE Telefono LIKE '______8%'

SELECT *
FROM Datos_Personales
WHERE Ciudad LIKE '______'

SELECT *
FROM Ciudad
WHERE Ciudad LIKE 'L%n'

SELECT *
FROM Ciudad
WHERE Ciudad NOT LIKE 'L%'