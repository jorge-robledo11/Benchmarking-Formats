/* Parte 1 */
USE Alumnos
SELECT Datos_Personales.Nombre, 
	   Datos_Personales.Correo, 
	   Actividades_Extra.Actividad
FROM Datos_Personales 
INNER JOIN Actividades_Extra ON Datos_Personales.Id_num = Actividades_Extra.Id_num
ORDER BY Actividad

/* Parte 2 */
USE Alumnos
SELECT Actividades_Extra.Id_num AS Lista_actividades,
	   Datos_Personales.Id_num AS Lista_datos_personales
FROM Actividades_Extra
LEFT JOIN Datos_Personales ON Actividades_Extra.Id_num = Datos_Personales.Id_num
WHERE Datos_Personales.Id_num IS NULL

/* Parte 4 */
USE Ordenes_de_Compra
SELECT Clientes.CustomerID, 
	   [Ordenes de Compra].ProductID, 
	   Productos.Name, 
	   [Ordenes de Compra].OrderQty
FROM Clientes 
INNER JOIN [Ordenes de Compra] ON Clientes.CustomerID = [Ordenes de Compra].CustomerID 
INNER JOIN Productos ON [Ordenes de Compra].ProductID = Productos.ProductID

/* Parte 5 */
CREATE VIEW Productos_Vendidos AS

SELECT Clientes.CustomerID,
	   [Ordenes de Compra].ProductID, 
	   Productos.Name, 
	   [Ordenes de Compra].OrderQty
FROM Clientes 
INNER JOIN [Ordenes de Compra] ON Clientes.CustomerID = [Ordenes de Compra].CustomerID 
INNER JOIN Productos ON [Ordenes de Compra].ProductID = Productos.ProductID

SELECT *
FROM Productos_Vendidos