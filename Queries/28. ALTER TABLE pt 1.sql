USE Tablas_Varias

CREATE TABLE Utiles_Escolares2(
	Prod_num INT,
	Producto VARCHAR(50),
	Proveedor VARCHAR(100),
	Costo DECIMAL(6,2)
)

INSERT INTO Utiles_Escolares2 (Prod_num, Producto, Proveedor, Costo)
VALUES (126, 'Lápiz 2B', 'Papelería San Felipe', 3.50)

INSERT INTO Utiles_Escolares2 (Prod_num, Producto, Proveedor, Costo)
VALUES (129, 'Cuaderno Cuadriculado', 'Proveedor de Oficinas', 22.30)

INSERT INTO Utiles_Escolares2 (Prod_num, Producto, Proveedor, Costo)
VALUES (133, 'Borrador Blanco', 'Papelería el Recreo', 5.00)

INSERT INTO Utiles_Escolares2 (Prod_num, Producto, Proveedor, Costo)
VALUES (119, 'Papel de China', 'Proveedor de Oficinas', 0.50)

INSERT INTO Utiles_Escolares2 (Prod_num, Producto, Proveedor, Costo)
VALUES (115, 'Carpeta tamaño C	arta', 'Papelería San Felipe', 1.50)

INSERT INTO Utiles_Escolares2 (Prod_num, Producto, Proveedor)
VALUES (123, 'Marcador Negro', 'Papelería el Recreo')

INSERT INTO Utiles_Escolares2 (Producto, Costo)
VALUES ('Pluma Azul', 8.50)

SELECT *
FROM Utiles_Escolares2

/* DELETE FROM Utiles_Escolares2
WHERE Prod_num IS NULL */

/* DELETE FROM Utiles_Escolares2
WHERE Costo IS NULL */

/* Para agregar una llave primaria, primero debemos eliminar el constraint de que acepta datos nulos en esa columna */
ALTER TABLE Utiles_Escolares2
ALTER COLUMN Prod_num INT NOT NULL

/* Agregar una columna como llave primaria */
ALTER TABLE Utiles_Escolares2
ADD PRIMARY KEY (Prod_num)

/* Realizamos el mismo paso para las demás columnas */
ALTER TABLE Utiles_Escolares2
ALTER COLUMN Producto VARCHAR(50) NOT NULL

ALTER TABLE Utiles_Escolares2
ALTER COLUMN Proveedor VARCHAR(100) NOT NULL

ALTER TABLE Utiles_Escolares2
ALTER COLUMN Costo DECIMAL(6,2) NOT NULL