USE Tablas_Varias
CREATE TABLE Utiles_Escolares(
	Prod_num INT PRIMARY KEY,
	Producto VARCHAR(50) NOT NULL,
	Proveedor VARCHAR(100) NOT NULL,
	Costo DECIMAL(6,2) NOT NULL
)

INSERT INTO Utiles_Escolares (Prod_num, Producto, Proveedor, Costo)
VALUES (126, 'Lápiz 2B', 'Papelería San Felipe', 3.50)

INSERT INTO Utiles_Escolares (Prod_num, Producto, Proveedor, Costo)
VALUES (129, 'Cuaderno Cuadriculado', 'Proveedor de Oficinas', 22.30)

INSERT INTO Utiles_Escolares (Prod_num, Producto, Proveedor, Costo)
VALUES (133, 'Borrador Blanco', 'Papelería el Recreo', 5.00)

INSERT INTO Utiles_Escolares (Prod_num, Producto, Proveedor, Costo)
VALUES (119, 'Papel de China', 'Proveedor de Oficinas', 0.50)

INSERT INTO Utiles_Escolares (Prod_num, Producto, Proveedor, Costo)
VALUES (115, 'Carpeta tamaño C	arta', 'Papelería San Felipe', 1.50)

INSERT INTO Utiles_Escolares (Prod_num, Producto, Proveedor)
VALUES (123, 'Marcador Negro', 'Papelería el Recreo')

INSERT INTO Utiles_Escolares (Producto, Costo)
VALUES ('Pluma Azul', 8.50)

SELECT *
FROM Utiles_Escolares