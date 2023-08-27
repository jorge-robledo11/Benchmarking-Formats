USE Tablas_Varias

CREATE TABLE Tabla_con_duplicados(
Nombre VARCHAR(50),
Profesión VARCHAR(50),
Empresa VARCHAR(50),
)

INSERT INTO Tabla_con_duplicados
VALUES ('José Chávez', 'Ingeniero', 'HP'),
	   ('Andrés Ramirez', 'Abogado', 'Notaria 16'),
	   ('Benito Macías', 'Contador', 'Seguros Monterrey'),
	   ('Rogelio Martínez', 'Médico', 'Hospital San Javier'),
	   ('Benito Macías', 'Contador', 'Seguros Monterrey'),
	   ('Benito Macías', 'Contador', 'Seguros Monterrey'),
	   ('José Chávez', 'Ingeniero', 'HP')

/* Conteo de los registros con sus cantidades */
SELECT *, COUNT(*) OVER (PARTITION BY Nombre, Profesión, Empresa) AS Conteo
FROM Tabla_con_Duplicados

/* Enumera los registros */
SELECT *, ROW_NUMBER() OVER (PARTITION BY Nombre, Profesión, Empresa ORDER BY Nombre) AS Enumeración
	FROM Tabla_con_Duplicados

/* Desplegar los registros duplicados */
SELECT *
FROM (SELECT *, ROW_NUMBER() OVER (PARTITION BY Nombre, Profesión, Empresa ORDER BY Nombre) AS Enumeración
	FROM Tabla_con_Duplicados) AS Enumeración_Duplicados
WHERE Enumeración_Duplicados.Enumeración > 1

/* Eliminar los registros duplicados */
DELETE Enumeración_Duplicados
FROM (SELECT *, ROW_NUMBER() OVER (PARTITION BY Nombre, Profesión, Empresa ORDER BY Nombre) AS Enumeración
	FROM Tabla_con_Duplicados) AS Enumeración_Duplicados
WHERE Enumeración_Duplicados.Enumeración > 1


SELECT *
FROM Tabla_con_duplicados