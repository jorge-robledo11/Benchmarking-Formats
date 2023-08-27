USE Maraton

SELECT *
FROM Maraton_Modificada
ORDER BY Corredor

DELETE FROM Maraton_Modificada
WHERE Corredor = 53

DELETE FROM Maraton_Modificada
WHERE [tiempo en horas] < ALL
	(SELECT [tiempo en horas]
	 FROM Maraton_Modificada
	 WHERE home = 'MEX')