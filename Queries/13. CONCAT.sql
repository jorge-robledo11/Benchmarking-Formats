USE Adventure_Robledo
SELECT FirstName, LastName, CONCAT (FirstName, ' ', LastName) AS Full_name
FROM Clientes

SELECT FirstName, LastName, FirstName + ' ' + LastName AS Full_name
FROM Clientes