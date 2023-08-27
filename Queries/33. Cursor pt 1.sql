USE Tablas_Varias

-- Creamos el cursor
DECLARE Población CURSOR FOR
	SELECT Id_Pais, Pais, Categoria
	FROM Poblacion_Mundial

-- Accedemos al cursor para llevar a cabo alguna acción sobre los registros
OPEN Población

-- Hacemos el recorrido de la tabla
FETCH NEXT FROM Población

-- Cerramos el cursor
CLOSE Población

-- Lo retiramos de la memoria
DEALLOCATE Población