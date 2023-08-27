USE Maraton
SELECT *
FROM Maraton_NY
WHERE [time] < ALL
	(SELECT [time]
	FROM Maraton_NY
	WHERE home = 'MEX')

USE Maraton
SELECT *
FROM Maraton_NY
WHERE [time] < ANY
	(SELECT [time]
	FROM Maraton_NY
	WHERE home = 'MEX')