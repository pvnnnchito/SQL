USE TestJoin;

SELECT * FROM alumnos a;
SELECT * FROM grupos g;

-- INNER JOIN 
/*
 SELECT * 
FROM tablaA a
INNER JOIN tableB b
ON a.key = b.key; */

SELECT *
FROM alumnos a
INNER JOIN grupos g
ON a.grupo_id = g.id;

-- Especifico, cambios de columnas 
SELECT a.id, a.nombre AS 'alumno', g.nombre AS 'nombreGrupo'
FROM alumnos a
INNER JOIN grupos g
ON a.grupo_id = g.id
WHERE g.id = 4;

-- LEFT JOIN -- muestra todos los datos que estan en la tabla izquierda y une con la interseccion de la derecha

SELECT * 
FROM alumnos a -- tabla izquierda
LEFT JOIN grupos g -- tabla derecha
ON a.grupo_id = g.id;

-- informacion mas detallada 
SELECT a.id, a.nombre AS 'alumno', g.nombre AS 'nombreGrupo'
FROM alumnos a
LEFT JOIN grupos g
ON a.grupo_id = g.id;

-- RIGHT JOIN -- se da prioridad a la tabla de la derecha 
INSERT INTO grupos VALUES(7'Grupo7');

SELECT *
FROM alumnos a
RIGHT JOIN grupos g
ON a.grupo_id = g.id;

-- FULL JOIN -- traer todo el universo de datos pero 
-- no funciona en mysql 

/* SELECT * 
FROM alumnos a -- tabla izquierda
FULL JOIN grupos g -- tabla derecha
ON a.grupo_id = g.id;


SELECT a.id, a.nombre AS 'alumno', g.nombre AS 'nombreGrupo'
FROM alumnos a
FULL JOIN grupos g
ON a.grupo_id = g.id; */

-- UNION DE CONJUNTOS  

SELECT * 
FROM alumnos a -- tabla izquierda
LEFT JOIN grupos g -- tabla derecha
ON a.grupo_id = g.id
UNION
SELECT * 
FROM alumnos a -- tabla izquierda
RIGHT JOIN grupos g -- tabla derecha
ON a.grupo_id = g.id;
