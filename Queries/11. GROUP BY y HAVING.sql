USE Maraton

SELECT gender, MIN(time) AS tiempo_minimo
FROM Maraton_NY
GROUP BY gender

SELECT gender, MAX(time) AS tiempo_minimo
FROM Maraton_NY
GROUP BY gender

SELECT home, COUNT(Corredor) AS corredores
FROM Maraton_NY
GROUP BY home

SELECT gender, home, COUNT(Corredor) AS corredores
FROM Maraton_NY
GROUP BY gender, home

SELECT gender, home, MIN(time) AS tiempo_minimo
FROM Maraton_NY
WHERE home = 'MEX'
GROUP BY gender, home

SELECT gender, home, MIN(time) AS tiempo_minimo
FROM Maraton_NY
WHERE home IN ('MEX', 'PER')
GROUP BY gender, home

SELECT home, COUNT(Corredor) AS Corrdores,
			 MIN(time) AS Tiempo_Mínimo,
			 MAX(time) AS Tiempo_Máximo,
			 AVG(time) AS Tiempo_Promedio
FROM Maraton_NY
GROUP BY home

SELECT home, COUNT(Corredor) AS Corrdores,
			 MIN(time) AS Tiempo_Mínimo,
			 MAX(time) AS Tiempo_Máximo,
			 AVG(time) AS Tiempo_Promedio
FROM Maraton_NY
GROUP BY home
ORDER BY Tiempo_Mínimo

SELECT home, COUNT(Corredor) AS Corrdores,
			 MIN(time) AS Tiempo_Mínimo,
			 MAX(time) AS Tiempo_Máximo,
			 AVG(time) AS Tiempo_Promedio
FROM Maraton_NY
GROUP BY home
HAVING COUNT(Corredor) > 5
ORDER BY Tiempo_Mínimo