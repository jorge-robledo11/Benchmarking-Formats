/* Crear una nueva tabla a partir de una tabla ya existente, utilizamos la sentencia INTO para ello */
USE Maraton
SELECT gender, age, time INTO Maraton_Nueva
FROM Maraton_NY

/* Desplegamos la nueva tabla */
USE Maraton
SELECT *
FROM Maraton_Nueva

/* Crear una vista con solo los competidores que sean Mexicanos */
CREATE VIEW Mexicanos AS
SELECT *
FROM Maraton_NY
WHERE home = 'Mex'

/* Desplegamos la nueva tabla */
SELECT *
FROM Mexicanos

/* Crearemos una tabla nueva llamada Tabla_Mexicanos */
SELECT * INTO Tabla_Mexicanos
FROM Mexicanos

/* Desplegamos la nueva tabla */
SELECT *
FROM Tabla_Mexicanos