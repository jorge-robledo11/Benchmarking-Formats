USE Alumnos

SELECT Actividades_Extra.Id_num, Datos_Personales.Nombre, Actividades_Extra.Actividad
FROM    Actividades_Extra LEFT JOIN
                 Datos_Personales ON Actividades_Extra.Id_num = Datos_Personales.Id_num

USE Alumnos

SELECT Datos_Personales.Id_num, Datos_Personales.Nombre, Actividades_Extra.Actividad
FROM    Actividades_Extra RIGHT JOIN
                 Datos_Personales ON Actividades_Extra.Id_num = Datos_Personales.Id_num

USE Alumnos

SELECT Datos_Personales.Id_num, Actividades_Extra.Id_num AS Id_num_ACT, Datos_Personales.Nombre, Actividades_Extra.Actividad
FROM    Actividades_Extra FULL JOIN
                 Datos_Personales ON Actividades_Extra.Id_num = Datos_Personales.Id_num