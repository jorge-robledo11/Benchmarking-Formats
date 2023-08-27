USE Tablas_Varias

-- Creamos el cursor
DECLARE Poblaci�n CURSOR FOR
	SELECT Id_Pais, Pais, Categoria
	FROM Poblacion_Mundial

-- Accedemos al cursor para llevar a cabo alguna acci�n sobre los registros
OPEN Poblaci�n

-- Hacemos el recorrido de la tabla
FETCH NEXT FROM Poblaci�n

-- Cerramos el cursor
CLOSE Poblaci�n

-- Lo retiramos de la memoria
DEALLOCATE Poblaci�n