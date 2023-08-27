USE Tablas_Varias

-- Creamos el cursor
DECLARE Poblaci�n CURSOR FOR
	SELECT Id_Pais, Pais, Categoria
	FROM Poblacion_Mundial

-- Accedemos al cursor para llevar a cabo alguna acci�n sobre los registros
OPEN Poblaci�n
	
	FETCH NEXT FROM Poblaci�n
	WHILE @@FETCH_STATUS = 0
	BEGIN
		FETCH NEXT FROM Poblaci�n
	END

-- Cerramos el cursor (ya no podremos acceder a la informaci�n guardada en �l)
CLOSE Poblaci�n

-- Lo retiramos de la memoria
DEALLOCATE Poblaci�n