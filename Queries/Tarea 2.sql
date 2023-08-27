USE Maraton
SELECT gender, age, home
FROM Maraton_NY
WHERE gender = 'Female' AND home = 'NY'
ORDER BY time ASC

USE Maraton
SELECT gender, age, home
FROM Maraton_NY
WHERE age < 30 AND gender = 'Male' OR (gender = 'Female' AND age BETWEEN 30 AND 40)
ORDER BY age

USE Maraton
SELECT gender, age, time
FROM Maraton_NY
WHERE age > 25 AND time < 
	(SELECT MIN(time) AS tiempo_mínimo
	FROM Maraton_NY
	WHERE age < 25)
ORDER BY time

USE Maraton
SELECT gender, age, time
FROM Maraton_NY
WHERE gender = 'Male' AND age < 40 AND time > ALL
	(SELECT MAX(time) AS tiempo_máximo
	FROM Maraton_NY
	WHERE gender = 'Female' AND age < 40)
ORDER BY age DESC