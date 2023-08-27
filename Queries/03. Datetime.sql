USE Adventure_Robledo
SELECT DateTime,
	DATEPART(YEAR, DateTime) AS Año,
	DATEPART(MONTH, DateTime) AS Mes,
	DATEPART(DAY, DateTime) AS Dia,
	DATEPART(HOUR, DateTime) AS Hora,
	DATEPART(MINUTE, DateTime) AS Minuto
FROM [PODateTime];