USE Tablas_Varias
SELECT Pais, Poblacion
FROM Poblacion_Mundial
WHERE Poblacion >= (SELECT Poblacion FROM Poblacion_Mundial WHERE Pais = 'Mexico')
ORDER BY Poblacion DESC

USE Maraton
SELECT Age, Time
FROM Maraton_NY
ORDER BY age, time