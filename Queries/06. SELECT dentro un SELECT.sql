USE Tablas_Varias
SELECT Pais, Poblacion
FROM Poblacion_Mundial
WHERE Poblacion >= (SELECT Poblacion FROM Poblacion_Mundial WHERE Pais = 'Mexico')