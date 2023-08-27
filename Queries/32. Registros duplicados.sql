USE Tablas_Varias

CREATE TABLE Tabla_con_duplicados(
Nombre VARCHAR(50),
Profesi�n VARCHAR(50),
Empresa VARCHAR(50),
)

INSERT INTO Tabla_con_duplicados
VALUES ('Jos� Ch�vez', 'Ingeniero', 'HP'),
	   ('Andr�s Ramirez', 'Abogado', 'Notaria 16'),
	   ('Benito Mac�as', 'Contador', 'Seguros Monterrey'),
	   ('Rogelio Mart�nez', 'M�dico', 'Hospital San Javier'),
	   ('Benito Mac�as', 'Contador', 'Seguros Monterrey'),
	   ('Benito Mac�as', 'Contador', 'Seguros Monterrey'),
	   ('Jos� Ch�vez', 'Ingeniero', 'HP')

/* Conteo de los registros con sus cantidades */
SELECT *, COUNT(*) OVER (PARTITION BY Nombre, Profesi�n, Empresa) AS Conteo
FROM Tabla_con_Duplicados

/* Enumera los registros */
SELECT *, ROW_NUMBER() OVER (PARTITION BY Nombre, Profesi�n, Empresa ORDER BY Nombre) AS Enumeraci�n
	FROM Tabla_con_Duplicados

/* Desplegar los registros duplicados */
SELECT *
FROM (SELECT *, ROW_NUMBER() OVER (PARTITION BY Nombre, Profesi�n, Empresa ORDER BY Nombre) AS Enumeraci�n
	FROM Tabla_con_Duplicados) AS Enumeraci�n_Duplicados
WHERE Enumeraci�n_Duplicados.Enumeraci�n > 1

/* Eliminar los registros duplicados */
DELETE Enumeraci�n_Duplicados
FROM (SELECT *, ROW_NUMBER() OVER (PARTITION BY Nombre, Profesi�n, Empresa ORDER BY Nombre) AS Enumeraci�n
	FROM Tabla_con_Duplicados) AS Enumeraci�n_Duplicados
WHERE Enumeraci�n_Duplicados.Enumeraci�n > 1


SELECT *
FROM Tabla_con_duplicados