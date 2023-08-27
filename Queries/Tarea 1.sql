USE Adventure_Robledo

SELECT PurchaseOrderNumber, DATEPART(YEAR, DateTime) AS A�o
FROM PODateTime
WHERE PurchaseOrderNumber LIKE '%PO5%'

USE Maraton

SELECT *
FROM Maraton_NY
WHERE gender = 'Male' AND age >= 60 AND time < 200

SELECT gender, home, COUNT(Corredor) AS corredores
FROM Maraton_NY
GROUP BY gender, home
HAVING gender = 'Female'
ORDER BY corredores DESC

SELECT gender, home, COUNT(Corredor) AS corredores
FROM Maraton_NY
GROUP BY gender, home
HAVING gender = 'Female' AND COUNT(Corredor) >= 10
ORDER BY corredores DESC

SELECT home, COUNT(Corredor) AS Corredores,
			 MIN(age) AS Edad_M�nima,
			 MAX(age) AS Edad_M�xima,
			 AVG(age) AS Edad_Promedio
FROM Maraton_NY
GROUP BY home
ORDER BY Edad_M�xima DESC
