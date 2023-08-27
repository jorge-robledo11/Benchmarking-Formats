USE Maraton

/* Modificamos de una tabla existente, creando una nueva con otro nombre */
SELECT * INTO Maraton_Modificada
FROM Maraton_NY

/* Agregamos una nueva columna llamada 'Clasificación' */
ALTER TABLE Maraton_Modificada
ADD Clasificación VARCHAR(50)

/* Seteamos el cambio en la columna 'Clasificación' colocando dando especificaciones */
UPDATE Maraton_Modificada
SET Clasificación = 'Jovencito'
WHERE gender = 'Male' AND age <= 40

UPDATE Maraton_Modificada
SET Clasificación = 'Jovencita'
WHERE gender = 'Female' AND age <= 40

UPDATE Maraton_Modificada
SET Clasificación = 'Señor'
WHERE gender = 'Male' AND age > 40

UPDATE Maraton_Modificada
SET Clasificación = 'Señora'
WHERE gender = 'Female' AND age > 40

/* Seteamos ahora de la tabla nueva un cambio en el nombre de la categoría 'Male' por 'Hombre' */
UPDATE Maraton_Modificada
SET gender = 'Hombre'
WHERE gender = 'Male'

UPDATE Maraton_Modificada
SET gender = 'Mujer'
WHERE gender = 'Female'

/* Modificamos la variable 'time' pasandola de minutos a horas */
UPDATE Maraton_Modificada
SET time = time/60

SELECT *
FROM Maraton_Modificada
ORDER BY Corredor