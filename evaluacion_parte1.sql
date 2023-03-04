/* 
Consultas evaluación módulo 5 - PARTE1

Franco Jorquera
*/

/* 1)Crear una consulta para obtener todos los actores que participaron en ambas teleseries,
el sueldo que obtuvieron en cada una y la suma de ambos sueldos, todo esto ordenado por el nombre del actor.
*/

SELECT
	so.nombre,
	so.sueldo sueldo_soltera_otra_vez,
	pr.sueldo sueldo_papi_ricky,
	SUM(so.sueldo + pr.sueldo) sueldo_sumado
FROM reparto_soltera_otra_vez so JOIN reparto_papi_ricky pr
ON so.nombre = pr.nombre
GROUP BY so.nombre,so.sueldo,pr.sueldo
ORDER BY so.nombre ASC;

/* 2) Crear una consulta para obtener todos los actores que participaron exclusivamente en soltera otra vez,
con un sueldo mayor a 90.
*/
SELECT
	so.nombre,
	so.sueldo 
FROM reparto_papi_ricky pr
FULL JOIN reparto_soltera_otra_vez so
ON so.nombre = pr.nombre
WHERE pr.sueldo IS NULL AND so.sueldo >=90
ORDER BY so.nombre ASC;

/* 3) Crear una consulta para obtener solo los actores con sueldo inferior a 85 que actuaron en cualquiera de las dos teleseries, 
pero no en las dos.
*/

SELECT
	so.nombre nombre_so,
	so.sueldo sueldo_so,
	pr.nombre nombre_pr,
	pr.sueldo sueldo_pr
FROM reparto_papi_ricky pr
FULL JOIN reparto_soltera_otra_vez so
ON so.nombre = pr.nombre
WHERE 
	(pr.sueldo IS NULL OR so.sueldo IS NULL) 
	AND (so.sueldo <= 85 OR pr.sueldo <= 85)
ORDER BY so.nombre ASC, pr.nombre ASC;