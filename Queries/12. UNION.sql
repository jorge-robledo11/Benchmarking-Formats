USE Maraton

SELECT gender, age, home, time, 'Lento' AS Categoría
FROM Maraton_NY
WHERE time > 300

UNION

SELECT gender, age, home, time, 'Regular' AS Categoría
FROM Maraton_NY
WHERE time BETWEEN 200 AND 300

SELECT gender, age, home, time, 'Veloz' AS Categoría
FROM Maraton_NY
WHERE time < 200

ORDER BY age