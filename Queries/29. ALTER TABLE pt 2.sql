USE Tablas_Varias

/* Agregar una nueva columna a la tabla */
ALTER TABLE Utiles_Escolares2
ADD Precio DECIMAL(6,2)

/* Modificar el constraint */
ALTER TABLE Utiles_Escolares2
ALTER COLUMN Precio DECIMAL(6,2) NOT NULL

/* Creamos una nueva tabla */
CREATE TABLE Proveedores(
	ID_Proveedor INT PRIMARY KEY,
	Registro_Fiscal VARCHAR(50) DEFAULT ('Desconocido'),
	Domicilio VARCHAR(100) NOT NULL
)

INSERT INTO Proveedores(ID_Proveedor, Domicilio)
VALUES (345, 'Arco Vespacionao 89')

SELECT *
FROM Proveedores

/* Modificamos otra tabla */
ALTER TABLE Utiles_Escolares2
ALTER COLUMN Precio INT

/* Dropeamos una columna */
ALTER TABLE Utiles_Escolares2
DROP COLUMN Precio

SELECT *
FROM Utiles_Escolares2