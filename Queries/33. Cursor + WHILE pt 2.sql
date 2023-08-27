USE Tablas_Varias

-- Creamos el cursor
DECLARE Población CURSOR FOR
	SELECT Id_Pais, Pais, Categoria
	FROM Poblacion_Mundial

-- Accedemos al cursor para llevar a cabo alguna acción sobre los registros
OPEN Población
	
	FETCH NEXT FROM Población
	WHILE @@FETCH_STATUS = 0
	BEGIN
		FETCH NEXT FROM Población
	END

-- Cerramos el cursor (ya no podremos acceder a la información guardada en él)
CLOSE Población

-- Lo retiramos de la memoria
DEALLOCATE Población