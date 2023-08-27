USE Maraton

SELECT *
FROM Maraton_NY
WHERE age > 30

SELECT *
FROM Maraton_NY
WHERE age >= 30

SELECT *
FROM Maraton_NY
WHERE age BETWEEN 30 AND 50

SELECT *
FROM Maraton_NY
WHERE age >= 30 AND age <= 50

SELECT *
FROM Maraton_NY
WHERE age = 30

SELECT *
FROM Maraton_NY
WHERE age > 45 AND gender = 'Female' AND time < 250

SELECT *
FROM Maraton_NY
WHERE ((age > 45 AND gender = 'Female')
OR (age	> 55 AND gender = 'Male'))
AND time < 250