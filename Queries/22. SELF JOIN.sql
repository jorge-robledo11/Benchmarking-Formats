USE Tablas_Varias
SELECT *
FROM Empleados AS emp
INNER JOIN Empleados AS sup
	ON emp.Supervisor = sup.Nombre
ORDER BY emp.Nombre

SELECT emp.Nombre,
       sup.Nombre AS Supervisor,
	   sup.Telefono AS Tel_Supervisor
FROM Empleados AS emp
INNER JOIN Empleados AS sup
	ON emp.Supervisor = sup.Nombre
ORDER BY emp.Nombre