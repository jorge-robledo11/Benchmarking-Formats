USE Maraton
SELECT *
FROM Maraton_NY
WHERE time <= 
	(SELECT AVG(time)
	FROM Maraton_NY)

USE Maraton
SELECT *
FROM Maraton_NY
WHERE time > 
	(SELECT AVG(time)
	FROM Maraton_NY)