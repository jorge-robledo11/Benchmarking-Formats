USE Maraton
SELECT *
FROM Maraton_NY
WHERE NOT home = 'Mex'

USE Maraton
SELECT *
FROM Maraton_NY
WHERE NOT home = 'Mex' AND gender = 'Female'

USE Maraton
SELECT *
FROM Maraton_NY
WHERE NOT home = 'Mex' AND (gender = 'Female' OR (gender = 'Male' AND age BETWEEN 25 AND 30))
ORDER BY age