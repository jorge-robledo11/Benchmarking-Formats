USE Tablas_Varias

/* Ejercicio 1 */
CREATE TABLE  Utiles_Escolares_2(
	Prod_num INT PRIMARY KEY,
	Producto VARCHAR(50) NOT NULL,
	Proveedor VARCHAR(100) NOT NULL,
	Costo DECIMAL(6,2) NOT NULL
)

INSERT INTO Utiles_Escolares_2 (Prod_num, Producto, Proveedor, Costo)
VALUES (126, 'Lápiz 2B', 'Papelería San Felipe', 3.50)

INSERT INTO Utiles_Escolares_2 (Prod_num, Producto, Proveedor, Costo)
VALUES (129, 'Cuaderno Cuadriculado', 'Proveedor de Oficinas', 22.30)

INSERT INTO Utiles_Escolares_2 (Prod_num, Producto, Proveedor, Costo)
VALUES (133, 'Borrador Blanco', 'Papelería el Recreo', 5.00)

INSERT INTO Utiles_Escolares_2 (Prod_Num, Producto, Proveedor, Costo)
VALUES (119, 'Papel de China', 'Proveedora de Oficinas', 0.50)


SELECT *
FROM Utiles_Escolares_2

/* Ejercicio 2 */
DELETE FROM Utiles_Escolares_2
WHERE Producto = 'Cuaderno Cuadriculado'

SELECT *
FROM Utiles_Escolares_2

/* Ejercicio 3 */
ALTER TABLE Utiles_Escolares_2
ADD Categoría VARCHAR(50) DEFAULT ('Utiles Escolares')

SELECT *
FROM Utiles_Escolares_2

/* Ejercicio 4 */
UPDATE Utiles_Escolares_2
SET Categoría = 'Articulos Varios'
WHERE Producto = 'Papel de China' 

SELECT *
FROM Utiles_Escolares_2

/* Ejercicio 5 */
ALTER TABLE Utiles_Escolares_2
ALTER COLUMN Categoría VARCHAR(50) NOT NULL

SELECT *
FROM Utiles_Escolares_2