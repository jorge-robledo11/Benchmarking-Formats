USE Tablas_Varias

SELECT TOP 3 Pais, Poblacion
FROM Poblacion_Mundial
WHERE Poblacion >= (SELECT Poblacion FROM Poblacion_Mundial WHERE Pais = 'Mexico')
ORDER BY Poblacion ASC

SELECT TOP 3 Pais, Poblacion
FROM Poblacion_Mundial
WHERE Poblacion >= (SELECT Poblacion FROM Poblacion_Mundial WHERE Pais = 'Mexico')
ORDER BY Poblacion DESC
