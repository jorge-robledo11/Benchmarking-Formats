SELECT Actividades_Extra.Id_num, Datos_Personales.Nombre, Actividades_Extra.Actividad, Ciudad.Pais
FROM    Datos_Personales INNER JOIN
                 Actividades_Extra ON Datos_Personales.Id_num = Actividades_Extra.Id_num INNER JOIN
                 Ciudad ON Datos_Personales.Ciudad = Ciudad.Ciudad