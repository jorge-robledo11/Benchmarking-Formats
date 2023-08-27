USE Maraton

SELECT MIN(time)
FROM Maraton_NY

SELECT MAX(time)
FROM Maraton_NY

SELECT SUM(time)
FROM Maraton_NY

SELECT ROUND(AVG(time), 2)
FROM Maraton_NY

SELECT COUNT(DISTINCT(home))
FROM Maraton_NY